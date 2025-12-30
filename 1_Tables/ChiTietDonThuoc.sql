CREATE TABLE ChiTietDonThuoc (
    MaCTDT INT PRIMARY KEY IDENTITY(1,1),
    MaDon INT NOT NULL REFERENCES DonThuoc(MaDon) ON DELETE CASCADE,
    MaThuoc INT NOT NULL REFERENCES Thuoc(MaThuoc),
    SoLuong INT NOT NULL CHECK (SoLuong > 0),
    CachDung NVARCHAR(255) NULL,
    DonGia DECIMAL(18,2) NOT NULL CHECK (DonGia >= 0),
    ThanhTien AS (SoLuong * DonGia) PERSISTED,
    CONSTRAINT UQ_ChiTietDonThuoc_MaDon_MaThuoc UNIQUE (MaDon, MaThuoc)
);
GO