CREATE OR ALTER TRIGGER trg_KiemTraXoaBacSi
ON BacSi
INSTEAD OF DELETE
AS
BEGIN
    DECLARE @MaBS INT;

    SELECT @MaBS = MaBS FROM deleted;

    IF EXISTS (SELECT 1 FROM HoSoKham WHERE MaBS = @MaBS)
       OR EXISTS (SELECT 1 FROM LichKham WHERE MaBS = @MaBS)
       OR EXISTS (SELECT 1 FROM DonThuoc WHERE MaBS = @MaBS)
    BEGIN
        PRINT('Không thể xóa bác sĩ vì có dữ liệu liên quan (hồ sơ khám, lịch khám hoặc đơn thuốc).');
        RETURN;
    END

    -- Nếu không có liên kết, thực hiện xóa
    DELETE FROM BacSi WHERE MaBS = @MaBS;
END;
GO