CREATE OR ALTER TRIGGER trg_KiemTraTrungLichKham
ON LichKham
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (
        SELECT 1
        FROM LichKham
        WHERE MaBS IN (SELECT MaBS FROM inserted)
          AND NgayKham IN (SELECT NgayKham FROM inserted)
          AND GioKham IN (SELECT GioKham FROM inserted)
          AND MaLich NOT IN (SELECT MaLich FROM inserted)
          AND TrangThai <> N'Hủy'
    )
    BEGIN
        PRINT(N'Bác sĩ đã có lịch khám vào giờ này');
        ROLLBACK TRANSACTION;
    END
END;
GO