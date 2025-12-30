CREATE OR ALTER PROCEDURE sp_ThemChiTietDichVu
    @MaHS INT,
    @MaDV INT,
    @SoLuong INT,
    @DonGia DECIMAL(18,2)
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra hồ sơ khám có tồn tại
    IF NOT EXISTS (SELECT 1 FROM HoSoKham WHERE MaHS = @MaHS)
    BEGIN
        PRINT(N'Không tồn tại mã hồ sơ khám.');
        RETURN;
    END;

    -- Kiểm tra dịch vụ có tồn tại
    IF NOT EXISTS (SELECT 1 FROM DichVu WHERE MaDV = @MaDV)
    BEGIN
        PRINT(N'Không tồn tại mã dịch vụ.');
        RETURN;
    END;

    -- Kiểm tra số lượng hợp lệ
    IF @SoLuong <= 0
    BEGIN
        PRINT(N'Số lượng phải lớn hơn 0.');
        RETURN;
    END;

    -- Thêm chi tiết dịch vụ
    INSERT INTO ChiTietDichVu (MaHS, MaDV, SoLuong, DonGia)
    VALUES (@MaHS, @MaDV, @SoLuong, @DonGia);

    PRINT(N'Đã thêm chi tiết dịch vụ thành công.');
END;
GO