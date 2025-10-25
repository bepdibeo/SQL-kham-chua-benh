CREATE DATABASE QuanLyKhamChuaBenh;

USE QuanLyKhamChuaBenh;

-- BẢNG BỆNH NHÂN
CREATE TABLE BenhNhan (
    id INT PRIMARY KEY,
    ten NVARCHAR(100) NOT NULL,
    ngaysinh DATE NOT NULL,
    gioitinh NVARCHAR(10) NOT NULL,
    diachi NVARCHAR(255),
    dienthoai NVARCHAR(20),
    baohiem NVARCHAR(255)
);

INSERT INTO BenhNhan (id, ten, ngaysinh, gioitinh, diachi, dienthoai, baohiem)
VALUES
(1, N'Nguyễn Văn A', '1985-02-14', N'Nam', N'123 Lý Thường Kiệt, Hà Nội', N'0901234567', N'BHYT12345'),
(2, N'Trần Thị B', '1990-06-22', N'Nữ', N'45 Lê Lợi, Đà Nẵng', N'0909876543', N'BHYT54321'),
(3, N'Lê Văn C', '1978-09-05', N'Nam', N'22 Nguyễn Huệ, Huế', N'0912345678', N'BHYT67890'),
(4, N'Phạm Thị D', '1995-01-10', N'Nữ', N'12 Hai Bà Trưng, TP.HCM', N'0932123456', N'BHYT11111'),
(5, N'Hoàng Văn E', '2000-03-30', N'Nam', N'78 Nguyễn Trãi, Hà Nội', N'0945566778', N'BHYT22222'),
(6, N'Đỗ Thị F', '1988-12-01', N'Nữ', N'34 Điện Biên Phủ, Hải Phòng', N'0988889999', N'BHYT33333'),
(7, N'Ngô Văn G', '1972-05-20', N'Nam', N'56 Pasteur, Cần Thơ', N'0911222333', N'BHYT44444'),
(8, N'Bùi Thị H', '1993-11-18', N'Nữ', N'8 Trần Hưng Đạo, Quảng Ninh', N'0977334455', N'BHYT55555'),
(9, N'Đặng Văn I', '1980-07-02', N'Nam', N'102 Nguyễn Văn Cừ, Bắc Ninh', N'0966112233', N'BHYT66666'),
(10, N'Phan Thị K', '1987-04-25', N'Nữ', N'25 Võ Văn Kiệt, TP.HCM', N'0923456789', N'BHYT77777');


-- BẢNG BÁC SĨ
CREATE TABLE BacSi (
    id INT PRIMARY KEY,
    ten NVARCHAR(100) NOT NULL,
    chuyenkhoa NVARCHAR(100) NOT NULL
);

INSERT INTO BacSi (id, ten, chuyenkhoa)
VALUES
(1, N'Nguyễn An', N'Nội tổng quát'),
(2, N'Trần Bình', N'Nhi khoa'),
(3, N'Lê Chi', N'Tim mạch'),
(4, N'Phạm Dũng', N'Ngoại khoa'),
(5, N'Hoàng Lan', N'Sản phụ khoa'),
(6, N'Vũ Minh', N'Răng hàm mặt'),
(7, N'Đỗ Ngọc', N'Mắt'),
(8, N'Bùi Oanh', N'Tai mũi họng'),
(9, N'Ngô Phúc', N'Da liễu'),
(10, N'Đặng Quang', N'Thần kinh');

-- BẢNG LỊCH HẸN
CREATE TABLE LichHen (
    id INT PRIMARY KEY,
    id_benhnhan INT NOT NULL,
    id_bacsi INT NOT NULL,
    ngayhen DATETIME NOT NULL,
    trangthai NVARCHAR(50) NOT NULL,
    FOREIGN KEY (id_benhnhan) REFERENCES BenhNhan(id),
    FOREIGN KEY (id_bacsi) REFERENCES BacSi(id)
);

INSERT INTO LichHen (id, id_benhnhan, id_bacsi, ngayhen, trangthai)
VALUES
(1, 1, 3, '2025-10-25 09:00', N'Đã đặt'),
(2, 2, 2, '2025-10-25 10:00', N'Đã đặt'),
(3, 3, 1, '2025-10-26 14:00', N'Đã xác nhận'),
(4, 4, 5, '2025-10-26 15:00', N'Đã hoàn thành'),
(5, 5, 4, '2025-10-27 09:30', N'Đã đặt'),
(6, 6, 7, '2025-10-27 10:30', N'Hủy'),
(7, 7, 6, '2025-10-28 08:30', N'Đã hoàn thành'),
(8, 8, 8, '2025-10-28 13:30', N'Đã đặt'),
(9, 9, 10, '2025-10-29 16:00', N'Đã xác nhận'),
(10, 10, 9, '2025-10-30 09:00', N'Đã đặt');


-- BẢNG HÓA ĐƠN
CREATE TABLE HoaDon (
    id INT PRIMARY KEY,
    id_benhnhan INT NOT NULL,
    sotien DECIMAL(10, 2) NOT NULL,
    ngaylap DATE NOT NULL,
    trangthai NVARCHAR(50) NOT NULL,
    FOREIGN KEY (id_benhnhan) REFERENCES BenhNhan(id)
);

INSERT INTO HoaDon (id, id_benhnhan, sotien, ngaylap, trangthai)
VALUES
(1, 1, 500000, '2025-10-25', N'Đã thanh toán'),
(2, 2, 300000, '2025-10-25', N'Chưa thanh toán'),
(3, 3, 450000, '2025-10-26', N'Đã thanh toán'),
(4, 4, 800000, '2025-10-26', N'Đã thanh toán'),
(5, 5, 250000, '2025-10-27', N'Chưa thanh toán'),
(6, 6, 600000, '2025-10-27', N'Đã thanh toán'),
(7, 7, 700000, '2025-10-28', N'Đã thanh toán'),
(8, 8, 400000, '2025-10-28', N'Chưa thanh toán'),
(9, 9, 900000, '2025-10-29', N'Chưa thanh toán'),
(10, 10, 550000, '2025-10-30', N'Đã thanh toán');


-- BẢNG KHO THUỐC
CREATE TABLE KhoThuoc (
    id INT PRIMARY KEY,
    ten NVARCHAR(100) NOT NULL,
    soluong INT NOT NULL,
    hansudung DATE
);

INSERT INTO KhoThuoc (id, ten, soluong, hansudung)
VALUES
(1, N'Paracetamol 500mg', 200, '2027-12-31'),
(2, N'Amoxicillin 500mg', 150, '2026-09-30'),
(3, N'Cefuroxime 250mg', 100, '2026-11-15'),
(4, N'Vitamin C 500mg', 300, '2028-05-01'),
(5, N'Omeprazole 20mg', 120, '2027-04-01'),
(6, N'Găng tay y tế', 200, '2026-12-31'),
(7, N'Khẩu trang y tế', 500, '2026-06-30'),
(8, N'Cồn 70 độ', 100, '2027-01-01'),
(9, N'Bông gạc vô trùng', 300, '2026-08-01'),
(10, N'Băng dán y tế', 400, '2026-09-15');


-- BẢNG ĐƠN THUỐC
CREATE TABLE DonThuoc (
    id INT PRIMARY KEY,
    id_benhnhan INT NOT NULL,
    id_bacsi INT NOT NULL,
    ngaylap DATE NOT NULL,
    ghichu NVARCHAR(255),
    FOREIGN KEY (id_benhnhan) REFERENCES BenhNhan(id),
    FOREIGN KEY (id_bacsi) REFERENCES BacSi(id)
);

INSERT INTO DonThuoc (id, id_benhnhan, id_bacsi, ngaylap, ghichu)
VALUES
(1, 1, 3, '2025-10-25', N'Đau đầu nhẹ'),
(2, 2, 2, '2025-10-25', N'Cảm cúm'),
(3, 3, 1, '2025-10-26', N'Cao huyết áp'),
(4, 4, 5, '2025-10-26', N'Sau sinh cần bổ sung vitamin'),
(5, 5, 4, '2025-10-27', N'Chấn thương nhẹ'),
(6, 6, 7, '2025-10-27', N'Đau mắt đỏ'),
(7, 7, 6, '2025-10-28', N'Đau răng'),
(8, 8, 8, '2025-10-28', N'Viêm họng'),
(9, 9, 10, '2025-10-29', N'Mất ngủ kéo dài'),
(10, 10, 9, '2025-10-30', N'Nổi mẩn dị ứng');


-- CHI TIẾT ĐƠN THUỐC
CREATE TABLE ChiTietDonThuoc (
    id INT PRIMARY KEY,
    id_donthuoc INT NOT NULL,
    id_thuoc INT NOT NULL,
    soluong INT NOT NULL,
    lieudung NVARCHAR(100),
    FOREIGN KEY (id_donthuoc) REFERENCES DonThuoc(id),
    FOREIGN KEY (id_thuoc) REFERENCES KhoThuoc(id)
);

INSERT INTO ChiTietDonThuoc (id, id_donthuoc, id_thuoc, soluong, lieudung)
VALUES
(1, 1, 1, 10, N'Uống 2 viên/ngày sau ăn'),
(2, 2, 2, 15, N'Uống 1 viên sáng, 1 viên tối'),
(3, 3, 3, 20, N'Uống 1 viên sau bữa trưa'),
(4, 4, 4, 10, N'Uống 1 viên mỗi ngày'),
(5, 5, 5, 7, N'Uống sáng 1 viên'),
(6, 6, 6, 2, N'Sử dụng khi cần'),
(7, 7, 9, 5, N'Sát trùng vùng răng miệng'),
(8, 8, 8, 1, N'Súc họng mỗi sáng'),
(9, 9, 10, 3, N'Dán lên vùng bị ngứa'),
(10, 10, 4, 10, N'Uống 1 viên sáng và tối');

-- TẠO CHỈ MỤC
CREATE INDEX IX_LichHen_BenhNhan ON LichHen(id_benhnhan);
CREATE INDEX IX_LichHen_BacSi ON LichHen(id_bacsi);
CREATE INDEX IX_HoaDon_BenhNhan ON HoaDon(id_benhnhan);
CREATE INDEX IX_DonThuoc_BenhNhan ON DonThuoc(id_benhnhan);
CREATE INDEX IX_ChiTietDonThuoc_DonThuoc ON ChiTietDonThuoc(id_donthuoc);
