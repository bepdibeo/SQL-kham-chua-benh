CREATE OR ALTER PROCEDURE sp_ThemThuoc
    @TenThuoc NVARCHAR(150),
    @DonViTinh NVARCHAR(50) = NULL,
    @DonGia DECIMAL(18,2),
    @SoLuongTon INT,
    @XuatXu NVARCHAR(100) = NULL
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Thuoc WHERE TenThuoc = @TenThuoc)
    BEGIN
        PRINT('Thuốc đã tồn tại.');
        RETURN;
    END

    IF @TenThuoc IS NULL OR LEN(@TenThuoc) = 0
    BEGIN
        PRINT('Tên thuốc không được để trống.');
        RETURN;
    END

    IF @DonGia < 0 OR @SoLuongTon < 0
    BEGIN
        PRINT('Đơn giá hoặc số lượng tồn phải >= 0.');
        RETURN;
    END

    INSERT INTO Thuoc (TenThuoc, DonViTinh, DonGia, SoLuongTon, XuatXu)
    VALUES (@TenThuoc, @DonViTinh, @DonGia, @SoLuongTon, @XuatXu);
END;
GO