CREATE OR ALTER PROCEDURE sp_XoaBacSi
    @MaBS INT
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM BacSi WHERE MaBS = @MaBS)
    BEGIN
        PRINT('Bác sĩ không tồn tại.');
        RETURN;
    END

    IF EXISTS (SELECT 1 FROM HoSoKham WHERE MaBS = @MaBS)
       OR EXISTS (SELECT 1 FROM LichKham WHERE MaBS = @MaBS)
       OR EXISTS (SELECT 1 FROM DonThuoc WHERE MaBS = @MaBS)
    BEGIN
        PRINT('Không thể xóa bác sĩ vì có dữ liệu liên quan (hồ sơ khám, lịch khám hoặc đơn thuốc).');
        RETURN;
    END

    DELETE FROM BacSi WHERE MaBS = @MaBS;
END;
GO