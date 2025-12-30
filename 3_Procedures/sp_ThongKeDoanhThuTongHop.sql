CREATE OR ALTER PROCEDURE sp_ThongKeDoanhThuTongHop
    @TuNgay DATE,
    @DenNgay DATE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @DoanhThuThuoc DECIMAL(18,2);
    DECLARE @DoanhThuDichVu DECIMAL(18,2);

    -- Tính tổng doanh thu thuốc (từ DonThuoc)
    SELECT @DoanhThuThuoc =
        ISNULL(SUM(TongTien), 0)
    FROM DonThuoc
    WHERE MaHS IN (
        SELECT MaHS
        FROM HoSoKham
        WHERE CONVERT(DATE, NgayKham) BETWEEN @TuNgay AND @DenNgay
    );

    -- Tính tổng doanh thu dịch vụ (từ ChiTietDichVu)
    SELECT @DoanhThuDichVu =
        ISNULL(SUM(SoLuong * DonGia), 0)
    FROM ChiTietDichVu
    WHERE MaHS IN (
        SELECT MaHS
        FROM HoSoKham
        WHERE CONVERT(DATE, NgayKham) BETWEEN @TuNgay AND @DenNgay
    );

    -- Tổng hợp kết quả
    SELECT 
        @DoanhThuThuoc AS DoanhThuThuoc,
        @DoanhThuDichVu AS DoanhThuDichVu,
        @DoanhThuThuoc + @DoanhThuDichVu AS TongDoanhThu;
END;
GO