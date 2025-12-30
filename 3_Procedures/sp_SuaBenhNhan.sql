CREATE OR ALTER PROCEDURE sp_SuaBenhNhan
    @MaBN INT,
    @HoTen NVARCHAR(100) = NULL,
    @GioiTinh NVARCHAR(10) = NULL,
    @NgaySinh DATE = NULL,
    @DiaChi NVARCHAR(255) = NULL,
    @SDT NVARCHAR(15) = NULL,
    @MaBHYT NVARCHAR(20) = NULL
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM BenhNhan WHERE MaBN = @MaBN)
    BEGIN
        PRINT('Bệnh nhân không tồn tại.');
        RETURN;
    END

    IF @MaBHYT IS NOT NULL AND NOT EXISTS (SELECT 1 FROM BaoHiemYTe WHERE MaBHYT = @MaBHYT)
    BEGIN
        PRINT('Mã bảo hiểm y tế không tồn tại.');
        RETURN;
    END

    UPDATE BenhNhan
    SET HoTen = ISNULL(@HoTen, HoTen),
        GioiTinh = ISNULL(@GioiTinh, GioiTinh),
        NgaySinh = ISNULL(@NgaySinh, NgaySinh),
        DiaChi = ISNULL(@DiaChi, DiaChi),
        SDT = ISNULL(@SDT, SDT),
        MaBHYT = ISNULL(@MaBHYT, MaBHYT)
    WHERE MaBN = @MaBN;
END;
GO