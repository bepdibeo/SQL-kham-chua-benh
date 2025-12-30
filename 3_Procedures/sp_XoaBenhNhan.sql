CREATE OR ALTER PROCEDURE sp_XoaBenhNhan
    @MaBN INT
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM BenhNhan WHERE MaBN = @MaBN)
    BEGIN
        PRINT('Bệnh nhân không tồn tại.');
        RETURN;
    END

    IF EXISTS (SELECT 1 FROM HoSoKham WHERE MaBN = @MaBN)
       OR EXISTS (SELECT 1 FROM LichKham WHERE MaBN = @MaBN)
       OR EXISTS (SELECT 1 FROM HoaDon WHERE MaBN = @MaBN)
    BEGIN
        PRINT('Không thể xóa bệnh nhân vì có dữ liệu liên quan (hồ sơ khám, lịch khám hoặc hóa đơn).');
        RETURN;
    END

    DELETE FROM BenhNhan WHERE MaBN = @MaBN;
END;
GO