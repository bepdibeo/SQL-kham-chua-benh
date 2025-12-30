CREATE OR ALTER PROCEDURE sp_ThemDonThuoc
    @MaHS INT,
    @MaBS INT,
    @NgayKeDon DATE,
    @GhiChu NVARCHAR(255) = NULL
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM HoSoKham WHERE MaHS = @MaHS)
    BEGIN
        PRINT('Hồ sơ khám không tồn tại.');
        RETURN;
    END

    IF NOT EXISTS (SELECT 1 FROM BacSi WHERE MaBS = @MaBS)
    BEGIN
        PRINT('Bác sĩ không tồn tại.');
        RETURN;
    END

    INSERT INTO DonThuoc (MaHS, MaBS, NgayKeDon, GhiChu)
    VALUES (@MaHS, @MaBS, @NgayKeDon, @GhiChu);
END;
GO