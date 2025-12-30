CREATE OR ALTER PROCEDURE sp_ThanhToanHoaDon
    @MaHoaDon INT,
    @SoTienThu DECIMAL(18,2),
    @PhuongThuc NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @TienConNo DECIMAL(18,2);

    -- Kiểm tra tồn tại hóa đơn trong HoaDon
    IF NOT EXISTS (SELECT 1 FROM HoaDon WHERE MaHoaDon = @MaHoaDon)
    BEGIN
        PRINT('HoaDon khong ton tai');
        RETURN;
    END

    -- Tính số tiền còn nợ: cột TienBNPhaiTra thuộc bảng HoaDon
    SELECT @TienConNo = (SELECT TienBNPhaiTra 
                         FROM HoaDon 
                         WHERE MaHoaDon = @MaHoaDon)
                       - ISNULL((SELECT SUM(SoTien) 
                                 FROM ThanhToan 
                                 WHERE MaHoaDon = @MaHoaDon),0);

    IF @SoTienThu > @TienConNo
    BEGIN
        PRINT('So tien thu vuot qua con no');
        RETURN;
    END

    -- Chèn thanh toán vào bảng ThanhToan
    INSERT INTO ThanhToan (MaHoaDon, NgayThanhToan, SoTien, PhuongThuc)
    VALUES (@MaHoaDon, GETDATE(), @SoTienThu, @PhuongThuc);
END;
GO