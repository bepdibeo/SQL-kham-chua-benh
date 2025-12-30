-- Trigger tự động cập nhật HoaDon.TienBNPhaiTra khi HoaDon được chèn/ cập nhật
-- Giả sử TyLeBHYT (ví dụ 80) là phần trăm BHYT chi trả, nếu có MaBHYT
CREATE OR ALTER TRIGGER trg_CapNhatTienBNPhaiTra
ON HoaDon
AFTER INSERT, UPDATE
AS
BEGIN
    UPDATE HoaDon
    SET TienBNPhaiTra = 
        CASE 
            WHEN MaBHYT IS NOT NULL AND TyLeBHYT IS NOT NULL 
                THEN ROUND(TongTien * (100 - TyLeBHYT) / 100.0, 2)
            ELSE TongTien
        END
    WHERE MaHoaDon IN (SELECT MaHoaDon FROM inserted);
END;
GO