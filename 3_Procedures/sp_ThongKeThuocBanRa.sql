CREATE OR ALTER PROCEDURE sp_ThongKeThuocBanRa
    @TuNgay DATE,
    @DenNgay DATE
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        MaThuoc,
        SUM(ISNULL(SoLuong,0)) AS TongSoLuong,
        SUM(ISNULL(ThanhTien,0)) AS TongDoanhThu
    FROM ChiTietDonThuoc
    WHERE MaDon IN (
        SELECT MaDon FROM DonThuoc 
        WHERE NgayKeDon BETWEEN @TuNgay AND @DenNgay
    )
    GROUP BY MaThuoc
    ORDER BY TongSoLuong DESC;
END;
GO