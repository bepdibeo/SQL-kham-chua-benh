-- Trigger tự tính tiền đơn thuốc (AFTER INSERT/UPDATE trên bảng ChiTietDonThuoc)
CREATE OR ALTER TRIGGER trg_CapNhatTongTienDonThuoc
ON ChiTietDonThuoc
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    UPDATE DonThuoc
    SET TongTien = (
        SELECT SUM(ThanhTien)
        FROM ChiTietDonThuoc
        WHERE MaDon = DonThuoc.MaDon
    )
    WHERE MaDon IN (
        SELECT MaDon FROM inserted
        UNION
        SELECT MaDon FROM deleted
    );
END;
GO