CREATE DATABASE QuanLyKhamChuaBenh;
USE QuanLyKhamChuaBenh;

-- FUNCTION

CREATE OR ALTER FUNCTION fn_TinhTongDonThuoc (@MaDon INT)
RETURNS DECIMAL(18,2)
AS
BEGIN
    DECLARE @TongTien DECIMAL(18,2);

    SELECT @TongTien = SUM(SoLuong * DonGia)
    FROM ChiTietDonThuoc
    WHERE MaDon = @MaDon;

    RETURN ISNULL(@TongTien, 0);
END;
GO

CREATE OR ALTER FUNCTION fn_TinhTongDichVu (@MaHS INT)
RETURNS DECIMAL(18,2)
AS
BEGIN
    DECLARE @TongDV DECIMAL(18,2);

    SELECT @TongDV = SUM(SoLuong * (
        SELECT DonGia FROM DichVu WHERE DichVu.MaDV = ChiTietDichVu.MaDV
    ))
    FROM ChiTietDichVu
    WHERE MaHS = @MaHS;

    RETURN ISNULL(@TongDV, 0);
END;
GO

CREATE OR ALTER FUNCTION fn_TinhTongDonThuocTraNhaThuoc (@MaDon INT)
RETURNS DECIMAL(18,2)
AS
BEGIN
    DECLARE @TienTra DECIMAL(18,2);

    SELECT @TienTra = (
        SELECT TienBNPhaiTra
        FROM HoaDon
        WHERE MaHS = (
            SELECT MaHS FROM DonThuoc WHERE MaDon = @MaDon
        )
    );

    RETURN ISNULL(@TienTra, dbo.fn_TinhTongDonThuoc(@MaDon));
END;
GO

CREATE OR ALTER FUNCTION fn_TinhDoanhThuNhaThuocTheoNgay (@Ngay DATE)
RETURNS DECIMAL(18,2)
AS
BEGIN
    DECLARE @Tong DECIMAL(18,2);

    SELECT @Tong = SUM(dbo.fn_TinhTongDonThuocTraNhaThuoc(MaDon))
    FROM DonThuoc
    WHERE CONVERT(DATE, NgayKeDon) = @Ngay;

    RETURN ISNULL(@Tong, 0);
END;
GO

-- TRIGGER

-- Trigger cập nhật DonThuoc.TongTien khi ChiTietDonThuoc thay đổi
CREATE OR ALTER TRIGGER trg_CapNhatTongTienDonThuoc
ON ChiTietDonThuoc
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    -- Cập nhật tất cả MaDon bị ảnh hưởng (từ insert/delete)
    UPDATE DonThuoc
    SET TongTien = (
        SELECT SUM(SoLuong * DonGia) FROM ChiTietDonThuoc WHERE ChiTietDonThuoc.MaDon = DonThuoc.MaDon
    )
    WHERE DonThuoc.MaDon IN (
        SELECT MaDon FROM inserted
        UNION
        SELECT MaDon FROM deleted
    );
END;
GO

-- Trigger cập nhật Thuoc.SoLuongTon khi xuất thuốc (khi chèn vào ChiTietDonThuoc)
CREATE OR ALTER TRIGGER trg_GiamTonKhoSauBan
ON ChiTietDonThuoc
AFTER INSERT
AS
BEGIN
    UPDATE Thuoc
    SET SoLuongTon = SoLuongTon - (
        SELECT SUM(SoLuong) FROM ChiTietDonThuoc WHERE ChiTietDonThuoc.MaThuoc = Thuoc.MaThuoc AND MaDon IN (SELECT MaDon FROM inserted)
    )
    WHERE MaThuoc IN (
        SELECT MaThuoc FROM ChiTietDonThuoc WHERE MaDon IN (SELECT MaDon FROM inserted)
    );
END;
GO

-- Trigger phục hồi tồn kho khi xóa chi tiết đơn thuốc
CREATE OR ALTER TRIGGER trg_PhucHoiTonKhoSauXoa
ON ChiTietDonThuoc
AFTER DELETE
AS
BEGIN
    UPDATE Thuoc
    SET SoLuongTon = SoLuongTon + (
        SELECT SUM(SoLuong) FROM deleted WHERE deleted.MaThuoc = Thuoc.MaThuoc
    )
    WHERE MaThuoc IN (SELECT MaThuoc FROM deleted);
END;
GO

-- Trigger tự động cập nhật HoaDon.TienBNPhaiTra khi HoaDon được chèn/ cập nhật
-- Giả sử TyLeTra (ví dụ 80) là phần trăm BHYT chi trả, nếu có MaBHYT
CREATE OR ALTER TRIGGER trg_CapNhatTienBNPhaiTra
ON HoaDon
AFTER INSERT, UPDATE
AS
BEGIN
    UPDATE HoaDon
    SET TienBNPhaiTra = 
        CASE 
            WHEN MaBHYT IS NOT NULL AND TyLeTra IS NOT NULL 
                THEN ROUND(TongTien * (100 - TyLeTra) / 100.0, 2)
            ELSE TongTien
        END
    WHERE MaHoaDon IN (SELECT MaHoaDon FROM inserted);
END;
GO

-- Trigger cập nhật HoaDon khi DonThuoc.TongTien thay đổi (synchronise)
CREATE OR ALTER TRIGGER trg_CapNhatHoaDonKhiDonThuocThayDoi
ON DonThuoc
AFTER UPDATE
AS
BEGIN
    UPDATE HoaDon
    SET TongTien = (
        SELECT ISNULL(DonThuoc.TongTien,0) + ISNULL( (SELECT SUM(SoLuong * (SELECT DonGia FROM DichVu WHERE DichVu.MaDV = ChiTietDichVu.MaDV)) FROM ChiTietDichVu WHERE ChiTietDichVu.MaHS = DonThuoc.MaHS), 0 )
    )
    WHERE HoaDon.MaHS IN (SELECT MaHS FROM inserted);
    
    -- Sau khi cập nhật TongTien, cập nhật TienBNPhaiTra theo trigger trg_CapNhatTienBNPhaiTra tự động thực thi.
END;
GO

-- Trigger cập nhật HoaDon khi ChiTietDichVu thay đổi (thêm/sửa/xóa)
CREATE OR ALTER TRIGGER trg_CapNhatHoaDonKhiDichVuThayDoi
ON ChiTietDichVu
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    UPDATE HoaDon
    SET TongTien = (
        SELECT ISNULL((SELECT TongTien FROM DonThuoc WHERE DonThuoc.MaHS = HoaDon.MaHS), 0) 
               + ISNULL((SELECT SUM(SoLuong * (SELECT DonGia FROM DichVu WHERE DichVu.MaDV = ChiTietDichVu.MaDV)) FROM ChiTietDichVu WHERE ChiTietDichVu.MaHS = HoaDon.MaHS), 0)
    )
    WHERE HoaDon.MaHS IN (
        SELECT MaHS FROM inserted
        UNION
        SELECT MaHS FROM deleted
    );
END;
GO


-- VIEW

CREATE OR ALTER VIEW DonThuocBenhNhan AS
SELECT 
    DonThuoc.MaDon,
    DonThuoc.NgayKeDon,
    (SELECT HoTen FROM BenhNhan WHERE BenhNhan.MaBN = (
        SELECT MaBN FROM HoSoKham WHERE HoSoKham.MaHS = DonThuoc.MaHS
    )) AS TenBenhNhan,
    (SELECT HoTen FROM BacSi WHERE BacSi.MaBS = DonThuoc.MaBS) AS TenBacSi,
    (SELECT TenThuoc FROM Thuoc WHERE Thuoc.MaThuoc = ChiTietDonThuoc.MaThuoc) AS TenThuoc,
    ChiTietDonThuoc.SoLuong,
    ChiTietDonThuoc.DonGia,
    ChiTietDonThuoc.ThanhTien,
    DonThuoc.GhiChu
FROM DonThuoc, ChiTietDonThuoc
WHERE DonThuoc.MaDon = ChiTietDonThuoc.MaDon;
GO

CREATE OR ALTER VIEW LichSuKhamBenhNhan AS
SELECT 
    BenhNhan.MaBN,
    BenhNhan.HoTen AS TenBenhNhan,
    HoSoKham.MaHS AS MaHoSoKham,
    HoSoKham.NgayKham,
    (SELECT HoTen FROM BacSi WHERE BacSi.MaBS = HoSoKham.MaBS) AS TenBacSi,
    (SELECT TenBenh FROM Benh WHERE Benh.MaBenh = HoSoKham.MaBenh) AS ChanDoan,
    HoSoKham.TrieuChung,
    HoSoKham.ChanDoan AS MoTaChanDoan
FROM HoSoKham, BenhNhan
WHERE BenhNhan.MaBN = HoSoKham.MaBN;
GO

CREATE OR ALTER VIEW vw_DoanhThuTheoNgay AS
SELECT 
    HoSoKham.NgayKham AS Ngay,
    (SELECT SUM(TongTien) FROM HoaDon WHERE CONVERT(DATE, HoaDon.NgayLap) = CONVERT(DATE, HoSoKham.NgayKham)) AS TongDoanhThuNgay
FROM HoSoKham
GROUP BY HoSoKham.NgayKham;
GO

-- PROCEDURE

CREATE OR ALTER PROCEDURE sp_ThemDonThuoc
    @MaHS INT,
    @MaBS INT,
    @NgayKeDon DATE,
    @GhiChu NVARCHAR(255)
AS
BEGIN
    INSERT INTO DonThuoc (MaHS, MaBS, NgayKeDon, GhiChu)
    VALUES (@MaHS, @MaBS, @NgayKeDon, @GhiChu);
END;
GO

CREATE OR ALTER PROCEDURE sp_ThemChiTietDonThuoc
    @MaDon INT,
    @MaThuoc INT,
    @SoLuong INT,
    @DonGia DECIMAL(18,2)
AS
BEGIN
    INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, SoLuong, DonGia)
    VALUES (@MaDon, @MaThuoc, @SoLuong, @DonGia);

    -- Cập nhật TongTien của DonThuoc bằng trigger trg_CapNhatTongTienDonThuoc sẽ xử lý
END;
GO

CREATE OR ALTER PROCEDURE sp_ThemDichVuChoHoSo
    @MaHS INT,
    @MaDV INT,
    @SoLuong INT
AS
BEGIN
    DECLARE @DonGia DECIMAL(18,2);
    SELECT @DonGia = DonGia FROM DichVu WHERE MaDV = @MaDV;

    INSERT INTO ChiTietDichVu (MaHS, MaDV, SoLuong, ThanhTien)
    VALUES (@MaHS, @MaDV, @SoLuong, @SoLuong * @DonGia);
END;
GO

CREATE OR ALTER PROCEDURE sp_TaoHoaDonDayDu
    @MaHS INT,
    @MaBN INT,
    @NgayLap DATE
AS
BEGIN
    DECLARE @TongThuoc DECIMAL(18,2);
    DECLARE @TongDichVu DECIMAL(18,2);
    DECLARE @TongTien DECIMAL(18,2);
    DECLARE @MaBHYT NVARCHAR(20);
    DECLARE @TyLeTra DECIMAL(5,2);

    SELECT @TongThuoc = TongTien FROM DonThuoc WHERE MaHS = @MaHS;
    SELECT @TongDichVu = dbo.fn_TinhTongDichVu(@MaHS);

    SELECT @MaBHYT = MaBHYT FROM BenhNhan WHERE MaBN = @MaBN;
    SELECT @TyLeTra = TyLeTra FROM BaoHiemYTe WHERE MaBHYT = @MaBHYT;

    SET @TongTien = ISNULL(@TongThuoc,0) + ISNULL(@TongDichVu,0);

    INSERT INTO HoaDon (MaHS, MaBN, NgayLap, TongTien, MaBHYT, TyLeTra, TienBNPhaiTra)
    VALUES (@MaHS, @MaBN, @NgayLap, @TongTien, @MaBHYT, @TyLeTra, @TongTien);
END;
GO

CREATE OR ALTER PROCEDURE sp_ThanhToanHoaDon
    @MaHoaDon INT,
    @SoTienThu DECIMAL(18,2),
    @PhuongThuc NVARCHAR(50)
AS
BEGIN
    INSERT INTO ThanhToan (MaHoaDon, NgayThanhToan, SoTien, PhuongThuc)
    VALUES (@MaHoaDon, GETDATE(), @SoTienThu, @PhuongThuc);

    -- Nếu thanh toán, ta có thể cập nhật trạng thái hoặc số tiền còn nợ trong bảng HoaDon tùy mở rộng
END;
GO

CREATE OR ALTER PROCEDURE sp_ThongKeBenhPhoBien
    @TuNgay DATE,
    @DenNgay DATE
AS
BEGIN
    SELECT TOP 5 
        (SELECT TenBenh FROM Benh WHERE Benh.MaBenh = HoSoKham.MaBenh) AS TenBenh,
        COUNT(MaBenh) AS SoLuot
    FROM HoSoKham
    WHERE NgayKham BETWEEN @TuNgay AND @DenNgay
    GROUP BY MaBenh
    ORDER BY SoLuot DESC;
END;
GO

CREATE OR ALTER PROCEDURE sp_ThongKeThuocBanRa
    @TuNgay DATE,
    @DenNgay DATE
AS
BEGIN
    SELECT 
        MaThuoc,
        SUM(SoLuong) AS TongSoLuong,
        SUM(SoLuong * DonGia) AS TongDoanhThu
    FROM ChiTietDonThuoc
    WHERE MaDon IN (
        SELECT MaDon FROM DonThuoc WHERE NgayKeDon BETWEEN @TuNgay AND @DenNgay
    )
    GROUP BY MaThuoc
    ORDER BY TongSoLuong DESC;
END;
GO

CREATE OR ALTER PROCEDURE sp_ThongKeDoanhThuTongHop
    @TuNgay DATE,
    @DenNgay DATE
AS
BEGIN
    DECLARE @DoanhThuThuoc DECIMAL(18,2);
    DECLARE @DoanhThuDichVu DECIMAL(18,2);

    SELECT @DoanhThuThuoc = SUM(TongTien) FROM DonThuoc WHERE MaHS IN (
        SELECT MaHS FROM HoSoKham WHERE NgayKham BETWEEN @TuNgay AND @DenNgay
    );

    SELECT @DoanhThuDichVu = SUM(SoLuong * (SELECT DonGia FROM DichVu WHERE DichVu.MaDV = ChiTietDichVu.MaDV))
    FROM ChiTietDichVu
    WHERE MaHS IN (SELECT MaHS FROM HoSoKham WHERE NgayKham BETWEEN @TuNgay AND @DenNgay);

    SELECT ISNULL(@DoanhThuThuoc,0) + ISNULL(@DoanhThuDichVu,0) AS TongDoanhThu;
END;
GO

-- view hiển thị hóa đơn chi tiết (thuốc + dịch vụ) 

CREATE OR ALTER VIEW vw_HoaDonChiTiet AS
SELECT 
    HoaDon.MaHoaDon,
    HoaDon.NgayLap,
    HoaDon.TongTien,
    HoaDon.TienBNPhaiTra,
    (SELECT HoTen FROM BenhNhan WHERE BenhNhan.MaBN = HoaDon.MaBN) AS TenBenhNhan,
    (SELECT TenBenh FROM Benh WHERE Benh.MaBenh = (SELECT MaBenh FROM HoSoKham WHERE HoSoKham.MaHS = HoaDon.MaHS)) AS ChanDoan
FROM HoaDon;
GO