CREATE OR ALTER PROCEDURE sp_ThongKeDoanhThuThang
    @Thang INT,
    @Nam INT
AS
BEGIN
    DECLARE @TongDoanhThu DECIMAL(18,2);

    SELECT @TongDoanhThu = SUM(TongTien)
    FROM HoaDon
    WHERE MONTH(NgayLap) = @Thang AND YEAR(NgayLap) = @Nam;

    SELECT ISNULL(@TongDoanhThu, 0) AS TongDoanhThu;
END;
GO