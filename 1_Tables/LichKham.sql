CREATE TABLE LichKham (
    MaLich INT PRIMARY KEY IDENTITY(1,1),
    MaBN INT NOT NULL REFERENCES BenhNhan(MaBN),
    MaBS INT NOT NULL REFERENCES BacSi(MaBS),
    NgayKham DATE NOT NULL,
    GioKham NVARCHAR(10),
    TrangThai NVARCHAR(50) DEFAULT N'Ch? khám',  -- Ví d?: 'Ch? khám', '?ã khám', 'H?y'
    GhiChu NVARCHAR(255)
);
GO