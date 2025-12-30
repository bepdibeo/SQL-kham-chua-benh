CREATE OR ALTER FUNCTION fn_TinhTongChiPhiHoSo (@MaHS INT)
RETURNS DECIMAL(18,2)
AS
BEGIN
    DECLARE @TongThuoc DECIMAL(18,2);
    DECLARE @TongDichVu DECIMAL(18,2);

    SELECT @TongThuoc = SUM(dbo.fn_TinhTongDonThuocTraNhaThuoc(MaDon))
    FROM DonThuoc WHERE MaHS = @MaHS;

    SELECT @TongDichVu = dbo.fn_TinhTongDichVuTraBenhVien(@MaHS);

    RETURN ISNULL(@TongThuoc,0) + ISNULL(@TongDichVu,0);
END;
GO
