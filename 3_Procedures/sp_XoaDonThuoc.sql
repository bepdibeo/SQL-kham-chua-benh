CREATE OR ALTER PROCEDURE sp_XoaDonThuoc
    @MaDon INT
AS
BEGIN
    -- Kiểm tra đơn thuốc tồn tại
    IF NOT EXISTS (SELECT 1 FROM DonThuoc WHERE MaDon = @MaDon)
    BEGIN
        PRINT('Đơn thuốc không tồn tại.');
        RETURN;
    END

    -- Kiểm tra có chi tiết đơn thuốc
    IF EXISTS (SELECT 1 FROM ChiTietDonThuoc WHERE MaCTDT = @MaDon)
    BEGIN
        PRINT('Không thể xóa đơn thuốc vì có chi tiết đơn thuốc liên quan.');
        RETURN;
    END

    -- Kiểm tra đã lập hóa đơn chưa (từ bảng HoaDon)
    IF EXISTS (
        SELECT 1 
        FROM HoaDon 
        WHERE MaBN = (SELECT MaBN FROM DonThuoc WHERE MaDon = @MaDon)
    )
    BEGIN
        PRINT('Không thể xóa đơn thuốc vì bệnh nhân đã có hóa đơn liên quan.');
        RETURN;
    END

    -- Xóa đơn thuốc
    DELETE FROM DonThuoc WHERE MaDon = @MaDon;
    PRINT('Đã xóa đơn thuốc.');
END;
GO