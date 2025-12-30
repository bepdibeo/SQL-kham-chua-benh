CREATE OR ALTER PROCEDURE sp_TaoHoaDonDayDu
    @MaHS INT,
    @MaBN INT,
    @NgayLap DATE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @TongThuoc DECIMAL(18,2);
    DECLARE @TongDichVu DECIMAL(18,2);
    DECLARE @TongTien DECIMAL(18,2);
    DECLARE @MaBHYT NVARCHAR(20);
    DECLARE @TyLeBHYT DECIMAL(5,2);
    DECLARE @TienBNPhaiTra DECIMAL(18,2);

    -- Kiểm tra tồn tại Hồ sơ khám
    IF NOT EXISTS (SELECT 1 FROM HoSoKham WHERE MaHS = @MaHS)
    BEGIN
        PRINT('Ho So Kham khong ton tai');
        RETURN;
    END

    -- Kiểm tra tồn tại Bệnh nhân
    IF NOT EXISTS (SELECT 1 FROM BenhNhan WHERE MaBN = @MaBN)
    BEGIN
        PRINT('BenhNhan khong ton tai')
        RETURN;
    END

    -- Lấy tổng tiền thuốc từ bảng DonThuoc
    SELECT @TongThuoc = ISNULL(TongTien,0) 
    FROM DonThuoc 
    WHERE MaHS = @MaHS;

    -- Lấy tổng tiền dịch vụ từ ChiTietDichVu qua hàm
    SELECT @TongDichVu = ISNULL(dbo.fn_TinhTongDichVu(@MaHS),0);

    -- Lấy thông tin BHYT từ BenhNhan và BaoHiemYTe
    SELECT @MaBHYT = MaBHYT FROM BenhNhan WHERE MaBN = @MaBN;
    SELECT @TyLeBHYT = ISNULL(TyLeBHYT,0) 
    FROM BaoHiemYTe 
    WHERE MaBHYT = @MaBHYT;

    -- Tính tổng tiền và tiền bệnh nhân phải trả
    SET @TongTien = @TongThuoc + @TongDichVu;
    SET @TienBNPhaiTra = @TongTien * (1 - @TyLeBHYT/100);

    -- Chèn hóa đơn vào bảng HoaDon
    INSERT INTO HoaDon (MaHS, MaBN, NgayLap, TongTien, MaBHYT, TyLeBHYT, TienBNPhaiTra)
    VALUES (@MaHS, @MaBN, @NgayLap, @TongTien, @MaBHYT, @TyLeBHYT, @TienBNPhaiTra);
END;
GO