CREATE OR ALTER PROCEDURE sp_XoaThuoc
    @MaThuoc INT
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Thuoc WHERE MaThuoc = @MaThuoc)
    BEGIN
        PRINT('Thuốc không tồn tại.');
        RETURN;
    END

    IF EXISTS (SELECT 1 FROM ChiTietDonThuoc WHERE MaThuoc = @MaThuoc)
    BEGIN
        PRINT('Không thể xóa thuốc vì có dữ liệu liên quan trong đơn thuốc.');
        RETURN;
    END

    DELETE FROM Thuoc WHERE MaThuoc = @MaThuoc;
END;
GO