CREATE OR ALTER PROCEDURE sp_ThongKeLuotKhamThang
    @Thang INT,
    @Nam INT
AS
BEGIN
    DECLARE @SoLuotKham INT;

    SELECT @SoLuotKham = COUNT(*)
    FROM HoSoKham
    WHERE MONTH(NgayKham) = @Thang AND YEAR(NgayKham) = @Nam;

    SELECT @SoLuotKham AS SoLuotKham;
END;
GO