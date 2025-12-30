CREATE OR ALTER PROCEDURE sp_CapNhatTrangThaiLichKham
    @MaLich INT,
    @TrangThai NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;
    IF @TrangThai NOT IN (N'Chờ khám', N'Đã khám', N'Hủy')
    BEGIN
        PRINT(N'Trạng thái không hợp lệ');
        RETURN;
    END
    UPDATE LichKham
    SET TrangThai = @TrangThai
    WHERE MaLich = @MaLich;
END;
GO