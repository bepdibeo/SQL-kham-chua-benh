CREATE OR ALTER PROCEDURE sp_DatLichKham
    @MaBN INT,
    @MaBS INT,
    @NgayKham DATE,
    @GioKham NVARCHAR(10),
    @GhiChu NVARCHAR(255) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        BEGIN TRANSACTION;
        IF EXISTS (
            SELECT 1 FROM LichKham
            WHERE MaBS = @MaBS
              AND NgayKham = @NgayKham
              AND GioKham = @GioKham
              AND TrangThai <> N'Hủy'
        )
        BEGIN
            PRINT(N'Bác sĩ đã có lịch vào giờ này');
        END
        INSERT INTO LichKham (MaBN, MaBS, NgayKham, GioKham, GhiChu)
        VALUES (@MaBN, @MaBS, @NgayKham, @GioKham, @GhiChu);
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF XACT_STATE() <> 0
            ROLLBACK TRANSACTION;
        DECLARE @ErrMsg NVARCHAR(4000) = ERROR_MESSAGE();
        PRINT('Lỗi đặt lịch khám: %s' + @ErrMsg);
    END CATCH
END;
GO