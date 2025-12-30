CREATE OR ALTER VIEW v_DonThuocBenhNhan AS
SELECT 
    DonThuoc.MaDon,
    DonThuoc.NgayKeDon,
    (SELECT HoTen 
     FROM BenhNhan 
     WHERE MaBN = (
         SELECT MaBN FROM HoSoKham WHERE MaHS = DonThuoc.MaHS
     )
    ) AS TenBenhNhan,
    (SELECT HoTen FROM BacSi WHERE MaBS = DonThuoc.MaBS) AS TenBacSi,
    (SELECT TenThuoc 
     FROM Thuoc 
     WHERE MaThuoc = ChiTietDonThuoc.MaThuoc
    ) AS TenThuoc,
    ChiTietDonThuoc.SoLuong,
    ChiTietDonThuoc.DonGia,
    ChiTietDonThuoc.ThanhTien,
    DonThuoc.GhiChu
FROM DonThuoc, ChiTietDonThuoc
WHERE DonThuoc.MaDon = ChiTietDonThuoc.MaDon;
GO