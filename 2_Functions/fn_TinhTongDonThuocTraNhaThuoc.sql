-- Hàm tính tổng đơn thuốc trả nhà thuốc (sau trừ bảo hiểm, dựa trên hóa đơn liên quan)
CREATE OR ALTER FUNCTION fn_TinhTongDonThuocTraNhaThuoc (@MaDon INT)
RETURNS DECIMAL(18,2)
AS
BEGIN
    DECLARE @TienTra DECIMAL(18,2);

    -- Lấy số tiền bệnh nhân phải trả từ hóa đơn mới nhất của hồ sơ liên quan tới đơn thuốc
    SELECT TOP 1 @TienTra = TienBNPhaiTra
    FROM HoaDon
    WHERE MaHS = (
        SELECT MaHS FROM DonThuoc WHERE MaDon = @MaDon
    )
    ORDER BY NgayLap DESC;  -- Hóa đơn mới nhất được ưu tiên

    -- Nếu không có hóa đơn, chuyển sang tính tổng đơn thuốc gốc
    RETURN ISNULL(@TienTra, dbo.fn_TinhTongDonThuoc(@MaDon));
END;
GO