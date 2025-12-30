CREATE OR ALTER PROCEDURE sp_ThemBenhNhan
    @HoTen NVARCHAR(100),
    @GioiTinh NVARCHAR(10) = NULL,
    @NgaySinh DATE = NULL,
    @DiaChi NVARCHAR(255) = NULL,
    @SDT NVARCHAR(15) = NULL,
    @MaBHYT NVARCHAR(20) = NULL
AS
BEGIN
    IF EXISTS (SELECT 1 FROM BenhNhan WHERE HoTen = @HoTen AND SDT = @SDT) 
    BEGIN
        PRINT('Bệnh nhân đã tồn tại với thông tin tương tự.');
        RETURN;
    END

    IF @HoTen IS NULL OR LEN(@HoTen) = 0
    BEGIN
        PRINT('Tên bệnh nhân không được để trống.');
        RETURN;
    END

    IF @MaBHYT IS NOT NULL AND NOT EXISTS (SELECT 1 FROM BaoHiemYTe WHERE MaBHYT = @MaBHYT)
    BEGIN
        PRINT('Mã bảo hiểm y tế không tồn tại.');
        RETURN;
    END

    INSERT INTO BenhNhan (HoTen, GioiTinh, NgaySinh, DiaChi, SDT, MaBHYT)
    VALUES (@HoTen, @GioiTinh, @NgaySinh, @DiaChi, @SDT, @MaBHYT);
END;
GO