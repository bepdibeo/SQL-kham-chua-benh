CREATE OR ALTER FUNCTION fn_TinhTongDonThuoc (@MaDon INT)
RETURNS DECIMAL(18,2)
AS
BEGIN
    DECLARE @TongTien DECIMAL(18,2);

    SELECT @TongTien = SUM(ThanhTien)
    FROM ChiTietDonThuoc
    WHERE MaDon = @MaDon;

    RETURN ISNULL(@TongTien, 0);
END;
GO