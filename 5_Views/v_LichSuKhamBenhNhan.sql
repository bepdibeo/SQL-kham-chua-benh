CREATE OR ALTER VIEW v_LichSuKhamBenhNhan AS
SELECT 
    BenhNhan.MaBN,
    BenhNhan.HoTen AS TenBenhNhan,
    HoSoKham.MaHS AS MaHoSoKham,
    HoSoKham.NgayKham,
    (SELECT HoTen FROM BacSi WHERE MaBS = HoSoKham.MaBS) AS TenBacSi,
    (SELECT TenBenh FROM Benh WHERE MaBenh = HoSoKham.MaBenh) AS ChanDoan,
    HoSoKham.TrieuChung,
    HoSoKham.ChanDoan AS MoTaChanDoan
FROM HoSoKham, BenhNhan
WHERE BenhNhan.MaBN = HoSoKham.MaBN;
GO