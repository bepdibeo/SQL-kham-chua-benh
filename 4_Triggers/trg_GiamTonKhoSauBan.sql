CREATE OR ALTER TRIGGER trg_GiamTonKhoSauBan
ON ChiTietDonThuoc
AFTER INSERT
AS
BEGIN
    -- Kiểm tra tồn kho trước khi trừ
    IF EXISTS (
        SELECT 1
        FROM inserted
        WHERE (SELECT SoLuongTon FROM Thuoc WHERE MaThuoc = inserted.MaThuoc) < inserted.SoLuong
    )
    BEGIN
        PRINT(N'Số lượng tồn kho không đủ cho một số thuốc.');
        ROLLBACK TRANSACTION;
        RETURN;
    END;

    -- Nếu đủ, cập nhật tồn kho
    UPDATE Thuoc
    SET SoLuongTon = SoLuongTon - (
        SELECT SUM(SoLuong)
        FROM inserted
        WHERE inserted.MaThuoc = Thuoc.MaThuoc
    )
    WHERE MaThuoc IN (SELECT MaThuoc FROM inserted);
END;
GO