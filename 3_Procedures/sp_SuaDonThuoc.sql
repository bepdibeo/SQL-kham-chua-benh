CREATE OR ALTER PROCEDURE sp_SuaDonThuoc
    @MaDon INT,
    @MaHS INT = NULL,
    @MaBS INT = NULL,
    @NgayKeDon DATE = NULL,
    @GhiChu NVARCHAR(255) = NULL
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM DonThuoc WHERE MaDon = @MaDon)
    BEGIN
        PRINT('Đơn thuốc không tồn tại.');
        RETURN;
    END

    IF @MaHS IS NOT NULL AND NOT EXISTS (SELECT 1 FROM HoSoKham WHERE MaHS = @MaHS)
    BEGIN
        PRINT('Hồ sơ khám không tồn tại.');
        RETURN;
    END

    IF @MaBS IS NOT NULL AND NOT EXISTS (SELECT 1 FROM BacSi WHERE MaBS = @MaBS)
    BEGIN
        PRINT('Bác sĩ không tồn tại.');
        RETURN;
    END

    UPDATE DonThuoc
    SET MaHS = ISNULL(@MaHS, MaHS),
        MaBS = ISNULL(@MaBS, MaBS),
        NgayKeDon = ISNULL(@NgayKeDon, NgayKeDon),
        GhiChu = ISNULL(@GhiChu, GhiChu)
    WHERE MaDon = @MaDon;
END;
GO