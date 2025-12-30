CREATE OR ALTER PROCEDURE sp_SuaThuoc
    @MaThuoc INT,
    @TenThuoc NVARCHAR(150) = NULL,
    @DonViTinh NVARCHAR(50) = NULL,
    @DonGia DECIMAL(18,2) = NULL,
    @SoLuongTon INT = NULL,
    @XuatXu NVARCHAR(100) = NULL
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Thuoc WHERE MaThuoc = @MaThuoc)
    BEGIN
        PRINT('Thuốc không tồn tại.');
        RETURN;
    END

    IF @DonGia IS NOT NULL AND @DonGia < 0
       OR @SoLuongTon IS NOT NULL AND @SoLuongTon < 0
    BEGIN
        PRINT('Đơn giá hoặc số lượng tồn phải >= 0.');
        RETURN;
    END

    UPDATE Thuoc
    SET TenThuoc = ISNULL(@TenThuoc, TenThuoc),
        DonViTinh = ISNULL(@DonViTinh, DonViTinh),
        DonGia = ISNULL(@DonGia, DonGia),
        SoLuongTon = ISNULL(@SoLuongTon, SoLuongTon),
        XuatXu = ISNULL(@XuatXu, XuatXu)
    WHERE MaThuoc = @MaThuoc;
END;
GO