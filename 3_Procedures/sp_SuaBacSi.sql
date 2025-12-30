CREATE OR ALTER PROCEDURE sp_SuaBacSi
    @MaBS INT,
    @HoTen NVARCHAR(100) = NULL,
    @GioiTinh NVARCHAR(10) = NULL,
    @NgaySinh DATE = NULL,
    @SDT NVARCHAR(15) = NULL,
    @MaKhoa INT = NULL
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM BacSi WHERE MaBS = @MaBS)
    BEGIN
        PRINT('Bác sĩ không tồn tại.');
        RETURN;
    END

    IF @MaKhoa IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Khoa WHERE MaKhoa = @MaKhoa)
    BEGIN
        PRINT('Mã khoa không tồn tại.');
        RETURN;
    END

    UPDATE BacSi
    SET HoTen = ISNULL(@HoTen, HoTen),
        GioiTinh = ISNULL(@GioiTinh, GioiTinh),
        NgaySinh = ISNULL(@NgaySinh, NgaySinh),
        SDT = ISNULL(@SDT, SDT),
        MaKhoa = ISNULL(@MaKhoa, MaKhoa)
    WHERE MaBS = @MaBS;
END;
GO