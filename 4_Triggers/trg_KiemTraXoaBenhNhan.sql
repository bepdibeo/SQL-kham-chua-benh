CREATE OR ALTER TRIGGER trg_KiemTraXoaBenhNhan
ON BenhNhan
INSTEAD OF DELETE
AS
BEGIN
    DECLARE @MaBN INT;

    SELECT @MaBN = MaBN FROM deleted;

    IF EXISTS (SELECT 1 FROM HoSoKham WHERE MaBN = @MaBN)
       OR EXISTS (SELECT 1 FROM LichKham WHERE MaBN = @MaBN)
       OR EXISTS (SELECT 1 FROM HoaDon WHERE MaBN = @MaBN AND TienBNPhaiTra > 0) -- Kiểm tra thanh toán hết chưa
    BEGIN
        PRINT('Không thể xóa bệnh nhân vì có dữ liệu liên quan (hồ sơ khám, lịch khám hoặc hóa đơn chưa thanh toán).');
        RETURN;
    END

    -- Nếu không có liên kết, thực hiện xóa
    DELETE FROM BenhNhan WHERE MaBN = @MaBN;
END;
GO