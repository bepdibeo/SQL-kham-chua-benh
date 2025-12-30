CREATE OR ALTER PROCEDURE sp_ThemChiTietDonThuoc
    @MaDon INT,
    @MaThuoc INT,
    @SoLuong INT,
    @DonGia DECIMAL(18,2),
    @CachDung NVARCHAR(255) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra tồn tại đơn thuốc
    IF NOT EXISTS (SELECT 1 FROM DonThuoc WHERE MaDon = @MaDon)
    BEGIN
        PRINT(N'Không tồn tại mã đơn thuốc.');
        RETURN;
    END;

    -- Kiểm tra thuốc trùng 
    IF EXISTS (SELECT 1 FROM ChiTietDonThuoc WHERE MaDon = @MaDon AND MaThuoc = @MaThuoc)
    BEGIN
        PRINT(N'Thuốc này đã có trong đơn, không được thêm trùng.');
        RETURN;
    END;

    -- Kiểm tra tồn kho
    IF (SELECT SoLuongTon FROM Thuoc WHERE MaThuoc = @MaThuoc) < @SoLuong
    BEGIN
        PRINT(N'Số lượng thuốc trong kho không đủ.');
        RETURN;
    END;

    -- Thêm chi tiết
    INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, SoLuong, DonGia, CachDung)
    VALUES (@MaDon, @MaThuoc, @SoLuong, @DonGia, @CachDung);

    PRINT(N'Đã thêm chi tiết đơn thuốc thành công.');
END;
GO