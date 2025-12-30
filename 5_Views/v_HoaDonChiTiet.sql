CREATE OR ALTER VIEW v_HoaDonChiTiet AS
SELECT 
    HoaDon.MaHoaDon,
    HoaDon.NgayLap,
    HoaDon.TongTien,
    HoaDon.TienBNPhaiTra,
    (SELECT HoTen FROM BenhNhan WHERE BenhNhan.MaBN = HoaDon.MaBN) AS TenBenhNhan,
    (SELECT TenBenh FROM Benh WHERE Benh.MaBenh = 
        (SELECT MaBenh FROM HoSoKham WHERE HoSoKham.MaHS = HoaDon.MaHS)
    ) AS ChanDoan
FROM HoaDon;
GO