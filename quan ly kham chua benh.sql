CREATE DATABASE QuanLyKhamChuaBenh;

USE QuanLyKhamChuaBenh;

CREATE TABLE BenhNhan (
    id INT PRIMARY KEY,
    ten NVARCHAR(100) NOT NULL,
    ngaysinh DATE NOT NULL,
    gioitinh NVARCHAR(10) NOT NULL,
    diachi NVARCHAR(255),
    dienthoai NVARCHAR(20),
    baohiem NVARCHAR(255)
);

CREATE TABLE BacSi (
    id INT PRIMARY KEY,
    ten NVARCHAR(100) NOT NULL,
    chuyenkhoa NVARCHAR(100) NOT NULL,
);

CREATE TABLE LichHen (
    id INT PRIMARY KEY,
    id_benhnhan INT NOT NULL,
    id_bacsi INT NOT NULL,
    ngayhen DATETIME NOT NULL,
    trangthai NVARCHAR(50) NOT NULL,
    FOREIGN KEY (id_benhnhan) REFERENCES BenhNhan(id),
    FOREIGN KEY (id_bacsi) REFERENCES BacSi(id)
);

CREATE TABLE HoaDon (
    id INT PRIMARY KEY,
    id_benhnhan INT NOT NULL,
    sotien DECIMAL(10, 2) NOT NULL,
    ngaylap DATE NOT NULL,
    trangthai NVARCHAR(50) NOT NULL,
    FOREIGN KEY (id_benhnhan) REFERENCES BenhNhan(id)
);

CREATE TABLE KhoThuoc (
    id INT PRIMARY KEY,
    tenhang NVARCHAR(100) NOT NULL,
    soluong INT NOT NULL,
    hansudung DATE
);

CREATE TABLE DonThuoc (
    id INT PRIMARY KEY,
    id_benhnhan INT NOT NULL,
    id_bacsi INT NOT NULL,
    ngaylap DATE NOT NULL,
    ghichu NVARCHAR(255),
    FOREIGN KEY (id_benhnhan) REFERENCES BenhNhan(id),
    FOREIGN KEY (id_bacsi) REFERENCES BacSi(id)
);

CREATE TABLE ChiTietDonThuoc (
    id INT PRIMARY KEY,
    id_donthuoc INT NOT NULL,
    id_thuoc INT NOT NULL,
    soluong INT NOT NULL,
    lieudung NVARCHAR(100),
    FOREIGN KEY (id_donthuoc) REFERENCES DonThuoc(id),
    FOREIGN KEY (id_thuoc) REFERENCES KhoThuoc(id)
);

--Tạo chỉ mục để tăng tốc độ truy vấn (không bắt buộc nếu dữ liệu ít)
CREATE INDEX IX_LichHen_BenhNhan ON LichHen(id_benhnhan);
CREATE INDEX IX_LichHen_BacSi ON LichHen(id_bacsi);
CREATE INDEX IX_HoaDon_BenhNhan ON HoaDon(id_benhnhan);
CREATE INDEX IX_DonThuoc_BenhNhan ON DonThuoc(id_benhnhan);
CREATE INDEX IX_ChiTietDonThuoc_DonThuoc ON ChiTietDonThuoc(id_donthuoc);