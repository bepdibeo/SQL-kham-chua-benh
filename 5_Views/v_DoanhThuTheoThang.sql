CREATE OR ALTER VIEW v_DoanhThuTheoThang AS
SELECT 
    YEAR(HoaDon.NgayLap) AS Nam,
    MONTH(HoaDon.NgayLap) AS Thang,
    SUM(HoaDon.TongTien) AS TongDoanhThu
FROM HoaDon 
GROUP BY YEAR(HoaDon.NgayLap), MONTH(HoaDon.NgayLap);
GO