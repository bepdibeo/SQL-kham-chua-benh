CREATE OR ALTER PROCEDURE sp_ThemBacSi
    @HoTen NVARCHAR(100),
    @GioiTinh NVARCHAR(10) = NULL,
    @NgaySinh DATE = NULL,
    @SDT NVARCHAR(15) = NULL,
    @MaKhoa INT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM BacSi WHERE HoTen = @HoTen AND SDT = @SDT) 
    BEGIN
        PRINT('Bác sĩ đã tồn tại với thông tin tương tự.');
        RETURN;
    END

    IF @HoTen IS NULL OR LEN(@HoTen) = 0
    BEGIN
        PRINT('Tên bác sĩ không được để trống.');
        RETURN;
    END

    IF NOT EXISTS (SELECT 1 FROM Khoa WHERE MaKhoa = @MaKhoa)
    BEGIN
        PRINT('Mã khoa không tồn tại.');
        RETURN;
    END

    INSERT INTO BacSi (HoTen, GioiTinh, NgaySinh, SDT, MaKhoa)
    VALUES (@HoTen, @GioiTinh, @NgaySinh, @SDT, @MaKhoa);
END;
GO