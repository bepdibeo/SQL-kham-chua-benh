-- Trigger phục hồi tồn kho khi xóa chi tiết đơn thuốc
CREATE OR ALTER TRIGGER trg_PhucHoiTonKhoSauXoa
ON ChiTietDonThuoc
AFTER DELETE
AS
BEGIN
    UPDATE Thuoc
    SET SoLuongTon = SoLuongTon + (
        SELECT SUM(SoLuong) FROM deleted WHERE deleted.MaThuoc = Thuoc.MaThuoc
    )
    WHERE MaThuoc IN (SELECT MaThuoc FROM deleted);
END;
GO