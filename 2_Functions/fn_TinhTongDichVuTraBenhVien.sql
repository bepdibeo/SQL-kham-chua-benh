CREATE OR ALTER FUNCTION fn_TinhTongDichVuTraBenhVien (@MaHS INT)
RETURNS DECIMAL(18,2)
AS
BEGIN
    DECLARE @TienTra DECIMAL(18,2);

    -- Lấy số tiền bệnh nhân phải trả từ hóa đơn mới nhất (nếu có)
    SELECT TOP 1 @TienTra = TienBNPhaiTra
    FROM HoaDon
    WHERE MaBN = (SELECT MaBN FROM HoSoKham WHERE MaHS = @MaHS)
    ORDER BY ngaylap DESC;

    -- Nếu chưa có hóa đơn, tự tính tổng dịch vụ
    IF @TienTra IS NULL
    BEGIN
        SELECT @TienTra = SUM(TongTien)
        FROM (
            SELECT ISNULL(SoLuong,0) * ISNULL(
                (SELECT DonGia FROM DichVu WHERE DichVu.MaDV = ChiTietDichVu.MaDV),0
            ) AS TongTien
            FROM ChiTietDichVu
            WHERE MaHS = @MaHS
        ) AS tmp;
    END;

    RETURN ISNULL(@TienTra, 0);
END;
GO