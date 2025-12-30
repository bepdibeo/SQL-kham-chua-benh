CREATE OR ALTER TRIGGER trg_CapNhatHoaDonKhiDichVuThayDoi
ON ChiTietDichVu
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- Cập nhật HoaDon cho tất cả hồ sơ khám bị ảnh hưởng
    UPDATE HoaDon
    SET 
        TongTien = 
            ISNULL(
                (SELECT SUM(TongTien) 
                 FROM DonThuoc 
                 WHERE DonThuoc.MaHS = HoaDon.MaHS),0)
            +
            ISNULL(
                (SELECT SUM(SoLuong * DonGia)
                 FROM ChiTietDichVu
                 WHERE ChiTietDichVu.MaHS = HoaDon.MaHS),0),
        TienBNPhaiTra =
            (
                ISNULL(
                    (SELECT SUM(TongTien) 
                     FROM DonThuoc 
                     WHERE DonThuoc.MaHS = HoaDon.MaHS),0)
                +
                ISNULL(
                    (SELECT SUM(SoLuong * DonGia)
                     FROM ChiTietDichVu
                     WHERE ChiTietDichVu.MaHS = HoaDon.MaHS),0)
            )
            * (1 - ISNULL(
                (SELECT TyLeBHYT 
                 FROM BaoHiemYTe 
                 WHERE MaBHYT = HoaDon.MaBHYT),0)/100)
    WHERE MaHS IN (
        SELECT MaHS FROM inserted
        UNION
        SELECT MaHS FROM deleted
    );
END;
GO