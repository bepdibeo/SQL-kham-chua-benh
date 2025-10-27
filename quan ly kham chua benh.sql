CREATE DATABASE QuanLyKhamChuaBenh;
USE QuanLyKhamChuaBenh;

-- 1) Bảng Khoa

CREATE TABLE Khoa (
    MaKhoa INT PRIMARY KEY IDENTITY(1,1),
    TenKhoa NVARCHAR(100) NOT NULL,
    MoTa NVARCHAR(255) NULL
);


INSERT INTO Khoa (TenKhoa, MoTa) VALUES
(N'Nội tổng hợp', N'Khám và điều trị bệnh nội'),
(N'Ngoại tổng hợp', N'Phẫu thuật tổng quát'),
(N'Nhi', N'Khám và điều trị cho trẻ em'),
(N'Tai Mũi Họng', N'Khám và điều trị tai mũi họng'),
(N'Răng Hàm Mặt', N'Khám nha khoa'),
(N'Da liễu', N'Điều trị bệnh da'),
(N'Tim mạch', N'Điều trị bệnh tim'),
(N'Hô hấp', N'Điều trị bệnh về phổi'),
(N'Thần kinh', N'Khám thần kinh'),
(N'Sản khoa', N'Chăm sóc thai sản');


--  BẢNG: LichKham

CREATE TABLE LichKham (
    MaLich INT PRIMARY KEY IDENTITY(1,1),
    MaBN INT NOT NULL REFERENCES BenhNhan(MaBN),
    MaBS INT NOT NULL REFERENCES BacSi(MaBS),
    NgayKham DATE NOT NULL,
    GioKham NVARCHAR(10),
    TrangThai NVARCHAR(50) DEFAULT N'Chờ khám',  -- Ví dụ: 'Chờ khám', 'Đã khám', 'Hủy'
    GhiChu NVARCHAR(255)
);

INSERT INTO LichKham (MaBN, MaBS, NgayKham, GioKham, TrangThai, GhiChu) VALUES
(1, 1, '2025-10-25', N'08:30', N'Chờ khám', N'Khám định kỳ 6 tháng'),
(2, 3, '2025-10-26', N'09:15', N'Đã khám', N'Khám lại sau điều trị viêm họng'),
(3, 2, '2025-10-26', N'10:00', N'Chờ khám', N'Khám tim mạch lần đầu'),
(4, 4, '2025-10-27', N'14:00', N'Hủy', N'Bệnh nhân báo bận'),
(5, 5, '2025-10-27', N'15:00', N'Chờ khám', N'Đặt lịch khám dạ dày'),
(6, 6, '2025-10-28', N'08:45', N'Đã khám', N'Khám da liễu định kỳ'),
(7, 7, '2025-10-29', N'09:30', N'Chờ khám', N'Khám huyết áp cao'),
(8, 8, '2025-10-29', N'13:30', N'Chờ khám', N'Khám hô hấp'),
(9, 9, '2025-10-30', N'10:30', N'Đã khám', N'Khám thần kinh do mất ngủ'),
(10, 10, '2025-10-31', N'08:00', N'Chờ khám', N'Khám thai định kỳ tháng thứ 6');


--3) Bảng Benh

CREATE TABLE Benh (
    MaBenh INT PRIMARY KEY IDENTITY(1,1),
    TenBenh NVARCHAR(150) NOT NULL,
    MoTa NVARCHAR(255) NULL
);


INSERT INTO Benh (TenBenh, MoTa) VALUES
(N'Cảm cúm', N'Nhiễm virus cúm thông thường'),
(N'Sốt xuất huyết', N'Nhiễm virus dengue'),
(N'Viêm phổi', N'Viêm phổi do vi khuẩn hoặc virus'),
(N'Tiểu đường', N'Rối loạn chuyển hóa đường'),
(N'Tăng huyết áp', N'Huyết áp cao mạn tính'),
(N'Viêm họng', N'Viêm họng do virus/vi khuẩn'),
(N'Sâu răng', N'Bệnh răng miệng'),
(N'Viêm da', N'Bệnh lý ngoài da'),
(N'Đau dạ dày', N'Vấn đề tiêu hóa, loét dạ dày'),
(N'Rối loạn tiêu hóa', N'Buồn nôn, khó tiêu');


-- 4) Bảng DichVu

CREATE TABLE DichVu (
    MaDV INT PRIMARY KEY IDENTITY(1,1),
    TenDV NVARCHAR(150) NOT NULL,
    DonGia DECIMAL(18,2) NOT NULL CHECK (DonGia >= 0)
);


INSERT INTO DichVu (TenDV, DonGia) VALUES
(N'Khám bác sĩ chuyên khoa', 50000),
(N'Khám tổng quát', 30000),
(N'Siêu âm ổ bụng', 200000),
(N'X-quang', 150000),
(N'Xét nghiệm công thức máu', 120000),
(N'Siêu âm tim', 300000),
(N'Tiêm vaccine', 250000),
(N'Khám tai mũi họng', 40000),
(N'Khám nha khoa', 35000),
(N'Điện tim ECG', 180000);


-- 5) Bảng BaoHiemYTe

CREATE TABLE BaoHiemYTe (
    MaBHYT NVARCHAR(20) PRIMARY KEY,
    TenBHYT NVARCHAR(150),
    TyLeTra DECIMAL(5,2) CHECK (TyLeTra >= 0 AND TyLeTra <= 100),
    NgayCap DATE NULL,
    NgayHetHan DATE NULL
);


INSERT INTO BaoHiemYTe (MaBHYT, TenBHYT, TyLeTra, NgayCap, NgayHetHan) VALUES
(N'BHYT001', N'BHYT - Công chức', 80.00, '2020-01-01', '2030-01-01'),
(N'BHYT002', N'BHYT - Học sinh', 95.00, '2021-03-15', '2031-03-15'),
(N'BHYT003', N'BHYT - Người cao tuổi', 90.00, '2019-06-01', '2029-06-01'),
(N'BHYT004', N'BHYT - Thuộc hộ nghèo', 100.00, '2022-02-02', '2032-02-02'),
(N'BHYT005', N'BHYT - Thuộc hộ cận nghèo', 95.00, '2020-05-05', '2030-05-05'),
(N'BHYT006', N'BHYT - Doanh nghiệp', 80.00, '2021-07-07', '2031-07-07'),
(N'BHYT007', N'BHYT - Khác', 70.00, '2018-08-08', '2028-08-08'),
(N'BHYT008', N'BHYT - SV', 95.00, '2023-09-09', '2033-09-09'),
(N'BHYT009', N'BHYT - CNVC', 85.00, '2017-10-10', '2027-10-10'),
(N'BHYT010', N'BHYT - Tự nguyện', 50.00, '2024-01-01', '2029-01-01');


-- 6) Bảng PhongKham

CREATE TABLE PhongKham (
    MaPhong INT PRIMARY KEY IDENTITY(1,1),
    TenPhong NVARCHAR(100) NOT NULL,
    MaKhoa INT NOT NULL REFERENCES Khoa(MaKhoa),
    ViTri NVARCHAR(100) NULL
);

INSERT INTO PhongKham (TenPhong, MaKhoa, ViTri) VALUES
(N'Phòng 101', 1, N'Tầng 1'),
(N'Phòng 102', 1, N'Tầng 1'),
(N'Phòng 201', 2, N'Tầng 2'),
(N'Phòng 202', 3, N'Tầng 2'),
(N'Phòng 301', 4, N'Tầng 3'),
(N'Phòng 302', 5, N'Tầng 3'),
(N'Phòng 401', 6, N'Tầng 4'),
(N'Phòng 402', 7, N'Tầng 4'),
(N'Phòng 501', 8, N'Tầng 5'),
(N'Phòng 502', 9, N'Tầng 5');


-- 7) Bảng Thuoc

CREATE TABLE Thuoc (
    MaThuoc INT PRIMARY KEY IDENTITY(1,1),
    TenThuoc NVARCHAR(150) NOT NULL,
    DonViTinh NVARCHAR(50),
    DonGia DECIMAL(18,2) NOT NULL CHECK (DonGia >= 0),
    SoLuongTon INT NOT NULL CHECK (SoLuongTon >= 0),
    XuatXu NVARCHAR(100) NULL
);


INSERT INTO Thuoc (TenThuoc, DonViTinh, DonGia, SoLuongTon, XuatXu) VALUES
(N'Paracetamol 500mg', N'Viên', 2000, 500, N'Việt Nam'),
(N'Amoxicillin 500mg', N'Viên', 5000, 200, N'Việt Nam'),
(N'Omeprazole 20mg', N'Viên', 8000, 150, N'Việt Nam'),
(N'Ibuprofen 200mg', N'Viên', 3000, 300, N'Việt Nam'),
(N'Vitamin C 500mg', N'Viên', 1500, 400, N'Việt Nam'),
(N'Cetirizine 10mg', N'Viên', 2500, 250, N'Việt Nam'),
(N'Metformin 500mg', N'Viên', 6000, 120, N'Việt Nam'),
(N'Aspirin 81mg', N'Viên', 1000, 350, N'Việt Nam'),
(N'Omeprazole suspension', N'Chai', 12000, 60, N'Nhật Bản'),
(N'Amoxicillin syrup', N'Chai', 7000, 80, N'Hàn Quốc');


-- 8) Bảng BacSi

CREATE TABLE BacSi (
    MaBS INT PRIMARY KEY IDENTITY(1,1),
    HoTen NVARCHAR(100) NOT NULL,
    GioiTinh NVARCHAR(10) NULL,
    NgaySinh DATE NULL,
    SDT NVARCHAR(15) NULL,
    MaKhoa INT NOT NULL REFERENCES Khoa(MaKhoa)
);


INSERT INTO BacSi (HoTen, GioiTinh, NgaySinh, SDT, MaKhoa) VALUES
(N'Nguyễn Văn An', N'Nam', '1980-02-12', '0912345678', 1),
(N'Lê Thị Bình', N'Nữ', '1985-05-22', '0987654321', 2),
(N'Trần Văn Cường', N'Nam', '1978-09-14', '0909998888', 3),
(N'Phạm Thu Hằng', N'Nữ', '1990-03-11', '0977123456', 4),
(N'Đỗ Quang Huy', N'Nam', '1983-12-01', '0911112233', 5),
(N'Vũ Mai Lan', N'Nữ', '1986-10-10', '0966998877', 6),
(N'Ngô Quốc Khánh', N'Nam', '1981-07-07', '0933557799', 7),
(N'Trịnh Thu Hương', N'Nữ', '1992-01-19', '0901002003', 8),
(N'Hoàng Minh Đức', N'Nam', '1989-06-06', '0988333222', 9),
(N'Nguyễn Thị Hoa', N'Nữ', '1995-04-04', '0944222333', 10);


-- 9) Bảng BenhNhan

CREATE TABLE BenhNhan (
    MaBN INT PRIMARY KEY IDENTITY(1,1),
    HoTen NVARCHAR(100) NOT NULL,
    GioiTinh NVARCHAR(10) NULL,
    NgaySinh DATE NULL,
    DiaChi NVARCHAR(255) NULL,
    SDT NVARCHAR(15) NULL,
    MaBHYT NVARCHAR(20) NULL REFERENCES BaoHiemYTe(MaBHYT)
);


INSERT INTO BenhNhan (HoTen, GioiTinh, NgaySinh, DiaChi, SDT, MaBHYT) VALUES
(N'Nguyễn Văn A', N'Nam', '1990-01-01', N'Hà Nội', '0901111111', NULL),
(N'Trần Thị B', N'Nữ', '1988-02-14', N'Hải Phòng', '0911222333', 'BHYT001'),
(N'Lê Văn C', N'Nam', '1975-03-05', N'Nghệ An', '0922333444', 'BHYT002'),
(N'Phạm Thị D', N'Nữ', '1992-04-20', N'Hà Nam', '0933444555', NULL),
(N'Vũ Văn E', N'Nam', '1983-05-25', N'Hà Nội', '0944555666', 'BHYT003'),
(N'Hoàng Thị F', N'Nữ', '2000-06-10', N'Thái Bình', '0955666777', NULL),
(N'Đinh Văn G', N'Nam', '1998-07-15', N'Bắc Ninh', '0966777888', 'BHYT004'),
(N'Phan Thị H', N'Nữ', '1995-08-08', N'Hà Nội', '0977888999', NULL),
(N'Ngô Văn I', N'Nam', '1993-09-09', N'Nam Định', '0988999000', 'BHYT005'),
(N'Đỗ Thị K', N'Nữ', '1987-10-30', N'Hà Nội', '0999000111', NULL);


-- 10) Bảng HoSoKham

CREATE TABLE HoSoKham (
    MaHS INT PRIMARY KEY IDENTITY(1,1),
    MaBN INT NOT NULL REFERENCES BenhNhan(MaBN),
    MaBS INT NOT NULL REFERENCES BacSi(MaBS),
    MaPhong INT NULL REFERENCES PhongKham(MaPhong),
    NgayKham DATETIME NOT NULL,
    MaBenh INT NULL REFERENCES Benh(MaBenh),
    TrieuChung NVARCHAR(255) NULL,
    ChanDoan NVARCHAR(255) NULL,
    GhiChu NVARCHAR(255) NULL
);


INSERT INTO HoSoKham (MaBN, MaBS, MaPhong, NgayKham, MaBenh, TrieuChung, ChanDoan, GhiChu) VALUES
(1, 1, 1, '2025-01-10 08:30:00', 1, N'Sốt, sốt nhẹ', N'Cảm cúm', N'Ghi chú A'),
(2, 2, 2, '2025-01-11 09:00:00', 6, N'Ho khan, đau họng', N'Viêm họng', N'Ghi chú B'),
(3, 3, 3, '2025-01-12 10:15:00', 3, N'Khó thở', N'Viêm phổi', N'Ghi chú C'),
(4, 4, 4, '2025-01-13 11:00:00', 9, N'Đau bụng', N'Đau dạ dày', N'Ghi chú D'),
(5, 5, 5, '2025-01-14 13:30:00', 4, N'Uống nhiều khát nước', N'Tiểu đường', N'Ghi chú E'),
(6, 6, 6, '2025-01-15 14:00:00', 8, N'Ngứa da', N'Viêm da', N'Ghi chú F'),
(7, 7, 7, '2025-01-16 15:45:00', 5, N'Đau đầu, choáng', N'Tăng huyết áp', N'Ghi chú G'),
(8, 8, 8, '2025-01-17 16:30:00', 2, N'Sốt cao', N'Sốt xuất huyết', N'Ghi chú H'),
(9, 9, 9, '2025-01-18 08:00:00', 10, N'Buồn nôn', N'Rối loạn tiêu hóa', N'Ghi chú I'),
(10, 10, 10, '2025-01-19 09:30:00', 7, N'Đau răng', N'Sâu răng', N'Ghi chú J');


-- 11) Bảng DonThuoc

CREATE TABLE DonThuoc (
    MaDon INT PRIMARY KEY IDENTITY(1,1),
    MaHS INT NOT NULL REFERENCES HoSoKham(MaHS),
    MaBS INT NOT NULL REFERENCES BacSi(MaBS),
    NgayKeDon DATE NOT NULL,
    GhiChu NVARCHAR(255) NULL
);


INSERT INTO DonThuoc (MaHS, MaBS, NgayKeDon, GhiChu) VALUES
(1,1,'2025-01-10',N'Đơn A'),
(2,2,'2025-01-11',N'Đơn B'),
(3,3,'2025-01-12',N'Đơn C'),
(4,4,'2025-01-13',N'Đơn D'),
(5,5,'2025-01-14',N'Đơn E'),
(6,6,'2025-01-15',N'Đơn F'),
(7,7,'2025-01-16',N'Đơn G'),
(8,8,'2025-01-17',N'Đơn H'),
(9,9,'2025-01-18',N'Đơn I'),
(10,10,'2025-01-19',N'Đơn J');


-- 12) Bảng ChiTietDonThuoc

CREATE TABLE ChiTietDonThuoc (
    MaCTDT INT PRIMARY KEY IDENTITY(1,1),
    MaDon INT NOT NULL REFERENCES DonThuoc(MaDon),
    MaThuoc INT NOT NULL REFERENCES Thuoc(MaThuoc),
    SoLuong INT NOT NULL CHECK (SoLuong > 0),
    CachDung NVARCHAR(255) NULL,
    DonGia DECIMAL(18,2) NOT NULL CHECK (DonGia >= 0),
    ThanhTien AS (SoLuong * DonGia) PERSISTED
);


INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, SoLuong, CachDung, DonGia) VALUES
(1,1,10,N'Uống sau ăn',2000),
(1,5,2,N'Uống 1 viên',1500),
(2,2,14,N'Uống sau ăn',5000),
(3,3,7,N'Sáng 1 lần',8000),
(4,4,8,N'Uống khi đau',3000),
(5,6,10,N'Uống 1 lần',2500),
(6,7,30,N'Uống 2 lần/ngày',6000),
(7,8,20,N'Uống 1 lần',1000),
(8,9,5,N'Pha uống',12000),
(9,10,6,N'Pha uống',7000);


-- 13) Bảng ChiTietDichVu

CREATE TABLE ChiTietDichVu (
    MaCTDV INT PRIMARY KEY IDENTITY(1,1),
    MaHS INT NOT NULL REFERENCES HoSoKham(MaHS),
    MaDV INT NOT NULL REFERENCES DichVu(MaDV),
    SoLuong INT NOT NULL CHECK (SoLuong > 0),
    DonGia DECIMAL(18,2) NOT NULL CHECK (DonGia >= 0),
    ThanhTien AS (SoLuong * DonGia) PERSISTED
);


INSERT INTO ChiTietDichVu (MaHS, MaDV, SoLuong, DonGia) VALUES
(1,2,1,30000),
(2,1,1,50000),
(3,5,1,120000),
(4,3,1,200000),
(5,6,1,300000),
(6,4,1,150000),
(7,10,1,180000),
(8,8,1,40000),
(9,9,1,35000),
(10,7,1,250000);


-- 14) Bảng HoaDon

CREATE TABLE HoaDon (
    MaHoaDon INT PRIMARY KEY IDENTITY(1,1),
    MaHS INT NOT NULL REFERENCES HoSoKham(MaHS),
    MaBN INT NOT NULL REFERENCES BenhNhan(MaBN),
    NgayLap DATETIME NOT NULL,
    TongTien DECIMAL(18,2) NOT NULL CHECK (TongTien >= 0),
    MaBHYT NVARCHAR(20) NULL REFERENCES BaoHiemYTe(MaBHYT),
    TyLeBHYT DECIMAL(5,2) NULL,
    TienBNPhaiTra DECIMAL(18,2) NULL
);


INSERT INTO HoaDon (MaHS, MaBN, NgayLap, TongTien, MaBHYT, TyLeBHYT, TienBNPhaiTra) VALUES
(1,1,'2025-01-10 09:00', 200000, NULL, NULL, 200000),
(2,2,'2025-01-11 09:30', 170000, 'BHYT001', 80.00, 34000),
(3,3,'2025-01-12 10:30', 500000, NULL, NULL, 500000),
(4,4,'2025-01-13 11:30', 350000, NULL, NULL, 350000),
(5,5,'2025-01-14 14:00', 420000, 'BHYT003', 90.00, 42000),
(6,6,'2025-01-15 14:30', 150000, NULL, NULL, 150000),
(7,7,'2025-01-16 15:50', 220000, NULL, NULL, 220000),
(8,8,'2025-01-17 16:40', 410000, 'BHYT005', 95.00, 20500),
(9,9,'2025-01-18 08:20', 130000, NULL, NULL, 130000),
(10,10,'2025-01-19 10:00', 600000, 'BHYT002', 95.00, 30000);



-- 15) Bảng ThanhToan

CREATE TABLE ThanhToan (
    MaThanhToan INT PRIMARY KEY IDENTITY(1,1),
    MaHoaDon INT NOT NULL REFERENCES HoaDon(MaHoaDon),
    NgayThanhToan DATETIME NOT NULL,
    SoTien DECIMAL(18,2) NOT NULL CHECK (SoTien >= 0),
    PhuongThuc NVARCHAR(50) NULL
);


INSERT INTO ThanhToan (MaHoaDon, NgayThanhToan, SoTien, PhuongThuc) VALUES
(1,'2025-01-10 09:05',200000,N'Tiền mặt'),
(2,'2025-01-11 09:40',34000,N'Tiền mặt'),
(3,'2025-01-12 10:45',500000,N'Chuyển khoản'),
(4,'2025-01-13 11:35',350000,N'Tiền mặt'),
(5,'2025-01-14 14:10',42000,N'BHYT'),
(6,'2025-01-15 14:45',150000,N'Tiền mặt'),
(7,'2025-01-16 15:55',220000,N'Chuyển khoản'),
(8,'2025-01-17 16:45',20500,N'BHYT'),
(9,'2025-01-18 08:25',130000,N'Tiền mặt'),
(10,'2025-01-19 10:10',30000,N'BHYT');



-- vài hàm SELECT mẫu

/*
SELECT TOP 10 * FROM Khoa;
SELECT TOP 10 * FROM BenhNhan;
SELECT TOP 10 * FROM BacSi;
SELECT TOP 10 * FROM Thuoc;
SELECT TOP 10 * FROM HoSoKham;
SELECT TOP 10 * FROM DonThuoc;
SELECT TOP 10 * FROM ChiTietDonThuoc;
SELECT TOP 10 * FROM ChiTietDichVu;
SELECT TOP 10 * FROM HoaDon;
*/
