CREATE DATABASE QuanLyKhamChuaBenh;
USE QuanLyKhamChuaBenh;

--Bảng Khoa
CREATE TABLE Khoa (
    MaKhoa INT PRIMARY KEY IDENTITY(1,1),
    TenKhoa NVARCHAR(100) NOT NULL,
    MoTa NVARCHAR(255) NULL
);

INSERT INTO Khoa (TenKhoa, MoTa) VALUES
(N'Nội tổng hợp', N'Khám và điều trị các bệnh nội khoa tổng quát'),
(N'Ngoại tổng hợp', N'Phẫu thuật tổng quát và điều trị ngoại khoa'),
(N'Nhi khoa', N'Khám và điều trị bệnh cho trẻ em'),
(N'Tai Mũi Họng', N'Khám và điều trị các bệnh về tai mũi họng'),
(N'Răng Hàm Mặt', N'Khám và điều trị các bệnh răng miệng'),
(N'Da liễu', N'Điều trị các bệnh về da và phần phụ'),
(N'Tim mạch', N'Điều trị các bệnh về tim và mạch máu'),
(N'Hô hấp', N'Điều trị các bệnh về phổi và đường hô hấp'),
(N'Thần kinh', N'Khám và điều trị các bệnh thần kinh'),
(N'Sản phụ khoa', N'Chăm sóc sức khỏe sinh sản và thai sản'),
(N'Tiêu hóa', N'Điều trị các bệnh về đường tiêu hóa'),
(N'Thận - Tiết niệu', N'Điều trị bệnh thận và hệ tiết niệu'),
(N'Nội tiết', N'Điều trị rối loạn nội tiết và chuyển hóa'),
(N'Ung bướu', N'Điều trị ung thư và khối u'),
(N'Mắt', N'Khám và điều trị bệnh về mắt'),
(N'Chấn thương chỉnh hình', N'Điều trị chấn thương xương khớp'),
(N'Phục hồi chức năng', N'Phục hồi sau chấn thương hoặc phẫu thuật'),
(N'Truyền nhiễm', N'Điều trị các bệnh truyền nhiễm'),
(N'Dinh dưỡng', N'Tư vấn và điều trị rối loạn dinh dưỡng'),
(N'Tâm thần', N'Điều trị các bệnh tâm thần và tâm lý'),
(N'Huyết học', N'Điều trị bệnh về máu và cơ quan tạo máu'),
(N'Lao phổi', N'Điều trị bệnh lao và các bệnh phổi khác'),
(N'Vật lý trị liệu', N'Điều trị bằng phương pháp vật lý'),
(N'X quang', N'Chẩn đoán hình ảnh bằng X-quang'),
(N'Siêu âm', N'Chẩn đoán bằng siêu âm'),
(N'Nội soi', N'Chẩn đoán và điều trị nội soi'),
(N'Hồi sức cấp cứu', N'Chăm sóc bệnh nhân cấp cứu'),
(N'Gây mê hồi sức', N'Quản lý gây mê và hồi sức'),
(N'Dược lâm sàng', N'Tư vấn sử dụng thuốc'),
(N'Kiểm soát nhiễm khuẩn', N'Ngăn ngừa nhiễm khuẩn bệnh viện'),
(N'Y học cổ truyền', N'Điều trị bằng y học cổ truyền'),
(N'Châm cứu', N'Điều trị bằng châm cứu'),
(N'Dị ứng miễn dịch', N'Điều trị dị ứng và rối loạn miễn dịch'),
(N'Lão khoa', N'Chăm sóc sức khỏe người cao tuổi'),
(N'Nhi sơ sinh', N'Chăm sóc trẻ sơ sinh'),
(N'Thẩm mỹ', N'Phẫu thuật thẩm mỹ'),
(N'Bỏng', N'Điều trị bỏng'),
(N'Ghép tạng', N'Ghép nội tạng'),
(N'Hô hấp nhi', N'Điều trị hô hấp cho trẻ em'),
(N'Tim mạch nhi', N'Điều trị tim mạch cho trẻ em'),
(N'Thần kinh nhi', N'Điều trị thần kinh cho trẻ em'),
(N'Tiêu hóa nhi', N'Điều trị tiêu hóa cho trẻ em'),
(N'Ung thư nhi', N'Điều trị ung thư cho trẻ em'),
(N'Da liễu nhi', N'Điều trị da liễu cho trẻ em'),
(N'Nội tiết nhi', N'Điều trị nội tiết cho trẻ em'),
(N'Thận nhi', N'Điều trị thận cho trẻ em'),
(N'Mắt nhi', N'Điều trị mắt cho trẻ em'),
(N'Tai mũi họng nhi', N'Điều trị tai mũi họng cho trẻ em'),
(N'Răng hàm mặt nhi', N'Điều trị răng miệng cho trẻ em'),
(N'Chấn thương nhi', N'Điều trị chấn thương cho trẻ em');

-- Bảng Benh
CREATE TABLE Benh (
    MaBenh INT PRIMARY KEY IDENTITY(1,1),
    TenBenh NVARCHAR(150) NOT NULL,
    MoTa NVARCHAR(255) NULL
);

INSERT INTO Benh (TenBenh, MoTa) VALUES
(N'Cảm cúm thông thường', N'Nhiễm virus đường hô hấp trên'),
(N'Viêm phổi cộng đồng', N'Viêm phổi do vi khuẩn hoặc virus'),
(N'Đái tháo đường type 2', N'Rối loạn chuyển hóa glucose'),
(N'Tăng huyết áp vô căn', N'Huyết áp cao không rõ nguyên nhân'),
(N'Viêm họng cấp', N'Viêm họng do streptococcus'),
(N'Sâu răng', N'Hư men răng do vi khuẩn'),
(N'Viêm da tiếp xúc', N'Phản ứng da với chất kích thích'),
(N'Đau nửa đầu migraine', N'Đau đầu mạch máu'),
(N'Loét dạ dày tá tràng', N'Loét niêm mạc dạ dày'),
(N'Rối loạn lipid máu', N'Tăng cholesterol hoặc triglyceride'),
(N'Viêm khớp dạng thấp', N'Bệnh tự miễn khớp'),
(N'Suy thận mạn', N'Suy giảm chức năng thận kéo dài'),
(N'Viêm gan B mạn', N'Nhiễm virus viêm gan B'),
(N'Ung thư phổi', N'Ung thư biểu mô phổi'),
(N'Viêm xoang cấp', N'Viêm xoang do nhiễm khuẩn'),
(N'Đục thủy tinh thể', N'Mờ đục thủy tinh thể mắt'),
(N'Gãy xương đùi', N'Gãy xương do chấn thương'),
(N'Viêm ruột thừa', N'Viêm cấp tính ruột thừa'),
(N'Nhiễm trùng đường tiết niệu', N'Nhiễm khuẩn bàng quang hoặc thận'),
(N'Rối loạn giấc ngủ', N'Mất ngủ hoặc ngủ nhiều'),
(N'Viêm đại tràng', N'Viêm niêm mạc đại tràng'),
(N'Bệnh Parkinson', N'Rối loạn vận động do thoái hóa thần kinh'),
(N'Viêm khớp gối', N'Viêm khớp do thoái hóa'),
(N'Hen suyễn', N'Co thắt phế quản dị ứng'),
(N'Bệnh Basedow', N'Cường giáp tự miễn'),
(N'Viêm amidan', N'Viêm amidan do vi khuẩn'),
(N'Loãng xương', N'Giảm mật độ xương'),
(N'Viêm bàng quang', N'Nhiễm trùng bàng quang'),
(N'U xơ tử cung', N'Khối u lành tính tử cung'),
(N'Viêm tuyến tiền liệt', N'Viêm tuyến tiền liệt nam giới'),
(N'Bệnh Alzheimer', N'Sa sút trí tuệ'),
(N'Viêm gan A', N'Nhiễm virus viêm gan A'),
(N'Sốt xuất huyết Dengue', N'Nhiễm virus Dengue'),
(N'Viêm màng não', N'Viêm màng não do vi khuẩn'),
(N'Bệnh lý van tim', N'Hẹp hoặc hở van tim'),
(N'Rối loạn nhịp tim', N'Loạn nhịp tim'),
(N'Viêm dạ dày', N'Viêm niêm mạc dạ dày'),
(N'Bệnh gout', N'Tăng acid uric máu'),
(N'Viêm tai giữa', N'Nhiễm trùng tai giữa'),
(N'Polyp mũi', N'Khối u lành tính mũi'),
(N'Viêm kết mạc', N'Viêm màng mắt'),
(N'Hội chứng ruột kích thích', N'Rối loạn chức năng ruột'),
(N'Bệnh Crohn', N'Viêm ruột mạn tính'),
(N'Viêm tụy cấp', N'Viêm tuyến tụy cấp tính'),
(N'Suy giáp', N'Giảm hormone tuyến giáp'),
(N'Ung thư vú', N'Ung thư biểu mô vú'),
(N'Ung thư đại tràng', N'Ung thư đại trực tràng'),
(N'Bệnh lý mạch vành', N'Xơ vữa động mạch vành'),
(N'Viêm phế quản mạn', N'Viêm phế quản kéo dài'),
(N'Suy tim sung huyết', N'Suy tim do ứ huyết');


--Bảng DichVu
CREATE TABLE DichVu (
    MaDV INT PRIMARY KEY IDENTITY(1,1),
    TenDV NVARCHAR(150) NOT NULL,
    DonGia DECIMAL(18,2) NOT NULL CHECK (DonGia >= 0)
);

INSERT INTO DichVu (TenDV, DonGia) VALUES
(N'Khám nội khoa tổng quát', 150000),
(N'Khám nhi khoa', 200000),
(N'Khám tai mũi họng', 180000),
(N'Khám răng hàm mặt', 100000),
(N'Khám da liễu', 160000),
(N'Khám tim mạch', 250000),
(N'Khám hô hấp', 220000),
(N'Khám thần kinh', 300000),
(N'Khám sản phụ khoa', 250000),
(N'Khám tiêu hóa', 200000),
(N'Xét nghiệm máu tổng quát', 500000),
(N'Xét nghiệm nước tiểu', 100000),
(N'Siêu âm bụng', 400000),
(N'X-quang ngực', 300000),
(N'Điện tim ECG', 200000),
(N'Siêu âm tim', 600000),
(N'Nội soi dạ dày', 1500000),
(N'Chụp CT não', 2000000),
(N'Chụp MRI cột sống', 3000000),
(N'Tiêm chủng vắc xin', 500000),
(N'Nhổ răng', 300000),
(N'Trám răng', 200000),
(N'Chỉnh hình răng', 5000000),
(N'Phẫu thuật cắt amidan', 5000000),
(N'Phẫu thuật cắt ruột thừa', 10000000),
(N'Phẫu thuật thay khớp háng', 50000000),
(N'Xạ trị ung thư', 20000000),
(N'Hóa trị ung thư', 15000000),
(N'Ghép thận', 200000000),
(N'Khám mắt đo kính', 150000),
(N'Phẫu thuật Lasik', 20000000),
(N'Vật lý trị liệu phiên', 500000),
(N'Châm cứu phiên', 300000),
(N'Tư vấn dinh dưỡng', 200000),
(N'Khám tâm thần', 250000),
(N'Xét nghiệm HIV', 300000),
(N'Xét nghiệm viêm gan B', 200000),
(N'Siêu âm thai', 400000),
(N'Sinh thường', 10000000),
(N'Sinh mổ', 20000000),
(N'Xét nghiệm đường huyết', 100000),
(N'Xét nghiệm cholesterol', 150000),
(N'Nội soi đại tràng', 2000000),
(N'Phẫu thuật u xơ tử cung', 15000000),
(N'Khám tiết niệu', 200000),
(N'Phẫu thuật sỏi thận', 10000000),
(N'Khám dị ứng', 250000),
(N'Khám lão khoa', 200000),
(N'Khám sơ sinh', 300000),
(N'Phẫu thuật thẩm mỹ mũi', 30000000);


--Bảng BaoHiemYTe
CREATE TABLE BaoHiemYTe (
    MaBHYT NVARCHAR(20) PRIMARY KEY,
    TenBHYT NVARCHAR(150),
    TyLeTra DECIMAL(5,2) CHECK (TyLeTra >= 0 AND TyLeTra <= 100),
    NgayCap DATE NULL,
    NgayHetHan DATE NULL
);


INSERT INTO BaoHiemYTe (MaBHYT, TenBHYT, TyLeTra, NgayCap, NgayHetHan) VALUES
(N'BHYT-001', N'Bảo hiểm y tế hộ gia đình', 80.00, '2023-01-01', '2026-01-01'),
(N'BHYT-002', N'Bảo hiểm y tế học sinh sinh viên', 70.00, '2023-02-01', '2026-02-01'),
(N'BHYT-003', N'Bảo hiểm y tế người cao tuổi', 100.00, '2023-03-01', '2026-03-01'),
(N'BHYT-004', N'Bảo hiểm y tế công chức', 80.00, '2023-04-01', '2026-04-01'),
(N'BHYT-005', N'Bảo hiểm y tế doanh nghiệp', 80.00, '2023-05-01', '2026-05-01'),
(N'BHYT-006', N'Bảo hiểm y tế tự nguyện', 60.00, '2023-06-01', '2026-06-01'),
(N'BHYT-007', N'Bảo hiểm y tế trẻ em dưới 6 tuổi', 100.00, '2023-07-01', '2026-07-01'),
(N'BHYT-008', N'Bảo hiểm y tế hộ nghèo', 100.00, '2023-08-01', '2026-08-01'),
(N'BHYT-009', N'Bảo hiểm y tế cận nghèo', 95.00, '2023-09-01', '2026-09-01'),
(N'BHYT-010', N'Bảo hiểm y tế người khuyết tật', 100.00, '2023-10-01', '2026-10-01'),
(N'BHYT-011', N'Bảo hiểm y tế cựu chiến binh', 100.00, '2023-11-01', '2026-11-01'),
(N'BHYT-012', N'Bảo hiểm y tế người có công', 100.00, '2023-12-01', '2026-12-01'),
(N'BHYT-013', N'Bảo hiểm y tế viên chức', 80.00, '2024-01-01', '2027-01-01'),
(N'BHYT-014', N'Bảo hiểm y tế lao động', 80.00, '2024-02-01', '2027-02-01'),
(N'BHYT-015', N'Bảo hiểm y tế nông dân', 70.00, '2024-03-01', '2027-03-01'),
(N'BHYT-016', N'Bảo hiểm y tế ngư dân', 70.00, '2024-04-01', '2027-04-01'),
(N'BHYT-017', N'Bảo hiểm y tế dân tộc thiểu số', 100.00, '2024-05-01', '2027-05-01'),
(N'BHYT-018', N'Bảo hiểm y tế thân nhân liệt sĩ', 100.00, '2024-06-01', '2027-06-01'),
(N'BHYT-019', N'Bảo hiểm y tế học nghề', 70.00, '2024-07-01', '2027-07-01'),
(N'BHYT-020', N'Bảo hiểm y tế thất nghiệp', 80.00, '2024-08-01', '2027-08-01'),
(N'BHYT-021', N'Bảo hiểm y tế doanh nghiệp nhỏ', 75.00, '2024-09-01', '2027-09-01'),
(N'BHYT-022', N'Bảo hiểm y tế hợp đồng lao động', 80.00, '2024-10-01', '2027-10-01'),
(N'BHYT-023', N'Bảo hiểm y tế cán bộ nghỉ hưu', 100.00, '2024-11-01', '2027-11-01'),
(N'BHYT-024', N'Bảo hiểm y tế người về hưu', 90.00, '2024-12-01', '2027-12-01'),
(N'BHYT-025', N'Bảo hiểm y tế người khuyết tật nặng', 100.00, '2025-01-01', '2028-01-01'),
(N'BHYT-026', N'Bảo hiểm y tế trẻ em mồ côi', 100.00, '2025-02-01', '2028-02-01'),
(N'BHYT-027', N'Bảo hiểm y tế người nhiễm HIV', 100.00, '2025-03-01', '2028-03-01'),
(N'BHYT-028', N'Bảo hiểm y tế bệnh nhân tâm thần', 100.00, '2025-04-01', '2028-04-01'),
(N'BHYT-029', N'Bảo hiểm y tế người nghiện ma túy', 80.00, '2025-05-01', '2028-05-01'),
(N'BHYT-030', N'Bảo hiểm y tế người bán dâm', 80.00, '2025-06-01', '2028-06-01'),
(N'BHYT-031', N'Bảo hiểm y tế hộ gia đình nghèo', 100.00, '2025-07-01', '2028-07-01'),
(N'BHYT-032', N'Bảo hiểm y tế khu vực khó khăn', 95.00, '2025-08-01', '2028-08-01'),
(N'BHYT-033', N'Bảo hiểm y tế biên giới', 90.00, '2025-09-01', '2028-09-01'),
(N'BHYT-034', N'Bảo hiểm y tế hải đảo', 90.00, '2025-10-01', '2028-10-01'),
(N'BHYT-035', N'Bảo hiểm y tế dân tộc ít người', 100.00, '2025-11-01', '2028-11-01'),
(N'BHYT-036', N'Bảo hiểm y tế người cao tuổi nghèo', 100.00, '2025-12-01', '2028-12-01'),
(N'BHYT-037', N'Bảo hiểm y tế trẻ em dưới 18', 80.00, '2026-01-01', '2029-01-01'),
(N'BHYT-038', N'Bảo hiểm y tế học sinh phổ thông', 70.00, '2026-02-01', '2029-02-01'),
(N'BHYT-039', N'Bảo hiểm y tế sinh viên đại học', 70.00, '2026-03-01', '2029-03-01'),
(N'BHYT-040', N'Bảo hiểm y tế cán bộ công đoàn', 80.00, '2026-04-01', '2029-04-01'),
(N'BHYT-041', N'Bảo hiểm y tế hội viên nông dân', 70.00, '2026-05-01', '2029-05-01'),
(N'BHYT-042', N'Bảo hiểm y tế hội viên phụ nữ', 80.00, '2026-06-01', '2029-06-01'),
(N'BHYT-043', N'Bảo hiểm y tế cựu tù binh', 100.00, '2026-07-01', '2029-07-01'),
(N'BHYT-044', N'Bảo hiểm y tế người tham gia kháng chiến', 100.00, '2026-08-01', '2029-08-01'),
(N'BHYT-045', N'Bảo hiểm y tế thân nhân anh hùng', 100.00, '2026-09-01', '2029-09-01'),
(N'BHYT-046', N'Bảo hiểm y tế người khuyết tật nhẹ', 90.00, '2026-10-01', '2029-10-01'),
(N'BHYT-047', N'Bảo hiểm y tế người nhiễm chất độc da cam', 100.00, '2026-11-01', '2029-11-01'),
(N'BHYT-048', N'Bảo hiểm y tế bộ đội xuất ngũ', 80.00, '2026-12-01', '2029-12-01'),
(N'BHYT-049', N'Bảo hiểm y tế công an nhân dân', 80.00, '2027-01-01', '2030-01-01'),
(N'BHYT-050', N'Bảo hiểm y tế quân nhân', 80.00, '2027-02-01', '2030-02-01');


--Bảng PhongKham

CREATE TABLE PhongKham (
    MaPhong INT PRIMARY KEY IDENTITY(1,1),
    TenPhong NVARCHAR(100) NOT NULL,
    MaKhoa INT NOT NULL REFERENCES Khoa(MaKhoa),
    ViTri NVARCHAR(100) NULL
);

INSERT INTO PhongKham (TenPhong, MaKhoa, ViTri) VALUES
(N'Phòng khám nội 1', 1, N'Tầng 1, Khu A'),
(N'Phòng khám ngoại 1', 2, N'Tầng 2, Khu B'),
(N'Phòng khám nhi 1', 3, N'Tầng 3, Khu C'),
(N'Phòng khám TMH 1', 4, N'Tầng 1, Khu D'),
(N'Phòng khám RHM 1', 5, N'Tầng 2, Khu E'),
(N'Phòng khám da liễu 1', 6, N'Tầng 3, Khu F'),
(N'Phòng khám tim mạch 1', 7, N'Tầng 1, Khu G'),
(N'Phòng khám hô hấp 1', 8, N'Tầng 2, Khu H'),
(N'Phòng khám thần kinh 1', 9, N'Tầng 3, Khu I'),
(N'Phòng khám sản 1', 10, N'Tầng 1, Khu J'),
(N'Phòng khám tiêu hóa 1', 11, N'Tầng 2, Khu K'),
(N'Phòng khám thận 1', 12, N'Tầng 3, Khu L'),
(N'Phòng khám nội tiết 1', 13, N'Tầng 1, Khu M'),
(N'Phòng khám ung bướu 1', 14, N'Tầng 2, Khu N'),
(N'Phòng khám mắt 1', 15, N'Tầng 3, Khu O'),
(N'Phòng khám chỉnh hình 1', 16, N'Tầng 1, Khu P'),
(N'Phòng khám phục hồi 1', 17, N'Tầng 2, Khu Q'),
(N'Phòng khám truyền nhiễm 1', 18, N'Tầng 3, Khu R'),
(N'Phòng khám dinh dưỡng 1', 19, N'Tầng 1, Khu S'),
(N'Phòng khám tâm thần 1', 20, N'Tầng 2, Khu T'),
(N'Phòng khám huyết học 1', 21, N'Tầng 3, Khu U'),
(N'Phòng khám lao 1', 22, N'Tầng 1, Khu V'),
(N'Phòng vật lý trị liệu 1', 23, N'Tầng 2, Khu W'),
(N'Phòng X quang 1', 24, N'Tầng 3, Khu X'),
(N'Phòng siêu âm 1', 25, N'Tầng 1, Khu Y'),
(N'Phòng nội soi 1', 26, N'Tầng 2, Khu Z'),
(N'Phòng cấp cứu 1', 27, N'Tầng 3, Khu AA'),
(N'Phòng gây mê 1', 28, N'Tầng 1, Khu AB'),
(N'Phòng dược 1', 29, N'Tầng 2, Khu AC'),
(N'Phòng nhiễm khuẩn 1', 30, N'Tầng 3, Khu AD'),
(N'Phòng y học cổ truyền 1', 31, N'Tầng 1, Khu AE'),
(N'Phòng châm cứu 1', 32, N'Tầng 2, Khu AF'),
(N'Phòng dị ứng 1', 33, N'Tầng 3, Khu AG'),
(N'Phòng lão khoa 1', 34, N'Tầng 1, Khu AH'),
(N'Phòng nhi sơ sinh 1', 35, N'Tầng 2, Khu AI'),
(N'Phòng thẩm mỹ 1', 36, N'Tầng 3, Khu AJ'),
(N'Phòng bỏng 1', 37, N'Tầng 1, Khu AK'),
(N'Phòng ghép tạng 1', 38, N'Tầng 2, Khu AL'),
(N'Phòng hô hấp nhi 1', 39, N'Tầng 3, Khu AM'),
(N'Phòng tim mạch nhi 1', 40, N'Tầng 1, Khu AN'),
(N'Phòng thần kinh nhi 1', 41, N'Tầng 2, Khu AO'),
(N'Phòng tiêu hóa nhi 1', 42, N'Tầng 3, Khu AP'),
(N'Phòng ung thư nhi 1', 43, N'Tầng 1, Khu AQ'),
(N'Phòng da liễu nhi 1', 44, N'Tầng 2, Khu AR'),
(N'Phòng nội tiết nhi 1', 45, N'Tầng 3, Khu AS'),
(N'Phòng thận nhi 1', 46, N'Tầng 1, Khu AT'),
(N'Phòng mắt nhi 1', 47, N'Tầng 2, Khu AU'),
(N'Phòng TMH nhi 1', 48, N'Tầng 3, Khu AV'),
(N'Phòng RHM nhi 1', 49, N'Tầng 1, Khu AW'),
(N'Phòng chấn thương nhi 1', 50, N'Tầng 2, Khu AX');

select * from PhongKham

--Bảng Thuoc
CREATE TABLE Thuoc (
    MaThuoc INT PRIMARY KEY IDENTITY(1,1),
    TenThuoc NVARCHAR(150) NOT NULL,
    DonViTinh NVARCHAR(50),
    DonGia DECIMAL(18,2) NOT NULL CHECK (DonGia >= 0),
    SoLuongTon INT NOT NULL CHECK (SoLuongTon >= 0),
    XuatXu NVARCHAR(100) NULL
);

-- Insert vào Thuoc: 50 thuốc thực tế
INSERT INTO Thuoc (TenThuoc, DonViTinh, DonGia, SoLuongTon, XuatXu) VALUES
(N'Paracetamol 500mg', N'Viên', 500, 1000, N'Việt Nam'),
(N'Amoxicillin 500mg', N'Viên', 2000, 500, N'Việt Nam'),
(N'Omeprazole 20mg', N'Viên', 3000, 300, N'Việt Nam'),
(N'Ibuprofen 400mg', N'Viên', 1500, 400, N'Việt Nam'),
(N'Aspirin 100mg', N'Viên', 1000, 600, N'Việt Nam'),
(N'Cetirizine 10mg', N'Viên', 2000, 200, N'Việt Nam'),
(N'Metformin 500mg', N'Viên', 2500, 150, N'Việt Nam'),
(N'Atorvastatin 20mg', N'Viên', 5000, 100, N'Việt Nam'),
(N'Losartan 50mg', N'Viên', 4000, 120, N'Việt Nam'),
(N'Levothyroxine 100mcg', N'Viên', 3000, 180, N'Việt Nam'),
(N'Prednisone 5mg', N'Viên', 1000, 250, N'Việt Nam'),
(N'Warfarin 5mg', N'Viên', 2000, 80, N'Việt Nam'),
(N'Insulin Human', N'Lọ', 500000, 50, N'Đan Mạch'),
(N'Clopidogrel 75mg', N'Viên', 6000, 90, N'Việt Nam'),
(N'Simvastatin 20mg', N'Viên', 4000, 110, N'Việt Nam'),
(N'Furosemide 40mg', N'Viên', 1500, 200, N'Việt Nam'),
(N'Digoxin 0.25mg', N'Viên', 2000, 140, N'Việt Nam'),
(N'Enalapril 10mg', N'Viên', 3000, 160, N'Việt Nam'),
(N'Amlodipine 5mg', N'Viên', 2500, 130, N'Việt Nam'),
(N'Montelukast 10mg', N'Viên', 5000, 70, N'Việt Nam'),
(N'Salbutamol inhaler', N'Bình xịt', 150000, 60, N'Anh'),
(N'Beclomethasone inhaler', N'Bình xịt', 200000, 40, N'Anh'),
(N'Lorazepam 1mg', N'Viên', 3000, 100, N'Việt Nam'),
(N'Fluoxetine 20mg', N'Viên', 4000, 80, N'Việt Nam'),
(N'Gabapentin 300mg', N'Viên', 5000, 90, N'Việt Nam'),
(N'Tramadol 50mg', N'Viên', 2000, 150, N'Việt Nam'),
(N'Codeine 30mg', N'Viên', 2500, 120, N'Việt Nam'),
(N'Dexamethasone 4mg', N'Viên', 1000, 200, N'Việt Nam'),
(N'Hydrocortisone cream', N'Tuýp', 50000, 100, N'Việt Nam'),
(N'Clotrimazole cream', N'Tuýp', 30000, 150, N'Việt Nam'),
(N'Acyclovir 200mg', N'Viên', 3000, 180, N'Việt Nam'),
(N'Oseltamivir 75mg', N'Viên', 10000, 50, N'Mỹ'),
(N'Azithromycin 500mg', N'Viên', 5000, 100, N'Việt Nam'),
(N'Ciprofloxacin 500mg', N'Viên', 4000, 120, N'Việt Nam'),
(N'Metronidazole 500mg', N'Viên', 2000, 200, N'Việt Nam'),
(N'Albendazole 400mg', N'Viên', 3000, 150, N'Việt Nam'),
(N'Vitamin D 1000IU', N'Viên', 1000, 300, N'Việt Nam'),
(N'Calcium 500mg', N'Viên', 1500, 250, N'Việt Nam'),
(N'Iron 65mg', N'Viên', 2000, 200, N'Việt Nam'),
(N'Folic acid 5mg', N'Viên', 500, 400, N'Việt Nam'),
(N'Vitamin B12 1000mcg', N'Viên', 3000, 100, N'Việt Nam'),
(N'Omega-3 1000mg', N'Viên', 5000, 80, N'Việt Nam'),
(N'Glucosamine 1500mg', N'Viên', 10000, 60, N'Việt Nam'),
(N'Coenzyme Q10 100mg', N'Viên', 15000, 50, N'Việt Nam'),
(N'Probiotic', N'Viên', 8000, 70, N'Việt Nam'),
(N'Lactulose syrup', N'Chai', 100000, 40, N'Hà Lan'),
(N'Glycerin suppository', N'Viên đặt', 2000, 200, N'Việt Nam'),
(N'Bisacodyl 5mg', N'Viên', 1000, 250, N'Việt Nam'),
(N'Loratadine 10mg', N'Viên', 2000, 180, N'Việt Nam'),
(N'Diphenhydramine 25mg', N'Viên', 1500, 220, N'Việt Nam');


--Bảng BacSi
CREATE TABLE BacSi (
    MaBS INT PRIMARY KEY IDENTITY(1,1),
    HoTen NVARCHAR(100) NOT NULL,
    GioiTinh NVARCHAR(10) NULL,
    NgaySinh DATE NULL,
    SDT NVARCHAR(15) NULL,
    MaKhoa INT NOT NULL REFERENCES Khoa(MaKhoa)
);


INSERT INTO BacSi (HoTen, GioiTinh, NgaySinh, SDT, MaKhoa) VALUES
(N'Nguyễn Văn A', N'Nam', '1970-01-01', '0901234567', 1),
(N'Trần Thị B', N'Nữ', '1975-02-02', '0912345678', 2),
(N'Lê Văn C', N'Nam', '1980-03-03', '0923456789', 3),
(N'Phạm Thị D', N'Nữ', '1985-04-04', '0934567890', 4),
(N'Hoàng Văn E', N'Nam', '1990-05-05', '0945678901', 5),
(N'Vũ Thị F', N'Nữ', '1972-06-06', '0956789012', 6),
(N'Đặng Văn G', N'Nam', '1977-07-07', '0967890123', 7),
(N'Ngô Thị H', N'Nữ', '1982-08-08', '0978901234', 8),
(N'Bùi Văn I', N'Nam', '1987-09-09', '0989012345', 9),
(N'Đỗ Thị K', N'Nữ', '1992-10-10', '0990123456', 10),
(N'Nguyễn Văn L', N'Nam', '1965-11-11', '0901234568', 11),
(N'Trần Thị M', N'Nữ', '1970-12-12', '0912345679', 12),
(N'Lê Văn N', N'Nam', '1975-01-13', '0923456790', 13),
(N'Phạm Thị O', N'Nữ', '1980-02-14', '0934567901', 14),
(N'Hoàng Văn P', N'Nam', '1985-03-15', '0945679012', 15),
(N'Vũ Thị Q', N'Nữ', '1990-04-16', '0956789123', 16),
(N'Đặng Văn R', N'Nam', '1968-05-17', '0967891234', 17),
(N'Ngô Thị S', N'Nữ', '1973-06-18', '0978902345', 18),
(N'Bùi Văn T', N'Nam', '1978-07-19', '0989013456', 19),
(N'Đỗ Thị U', N'Nữ', '1983-08-20', '0990124567', 20),
(N'Nguyễn Văn V', N'Nam', '1988-09-21', '0901235678', 21),
(N'Trần Thị X', N'Nữ', '1993-10-22', '0912346789', 22),
(N'Lê Văn Y', N'Nam', '1966-11-23', '0923457890', 23),
(N'Phạm Thị Z', N'Nữ', '1971-12-24', '0934568901', 24),
(N'Hoàng Văn AA', N'Nam', '1976-01-25', '0945679013', 25),
(N'Vũ Thị AB', N'Nữ', '1981-02-26', '0956789124', 26),
(N'Đặng Văn AC', N'Nam', '1986-03-27', '0967891235', 27),
(N'Ngô Thị AD', N'Nữ', '1991-04-28', '0978902346', 28),
(N'Bùi Văn AE', N'Nam', '1969-05-29', '0989013457', 29),
(N'Đỗ Thị AF', N'Nữ', '1974-06-30', '0990124568', 30),
(N'Nguyễn Văn AG', N'Nam', '1979-07-01', '0901235679', 31),
(N'Trần Thị AH', N'Nữ', '1984-08-02', '0912346790', 32),
(N'Lê Văn AI', N'Nam', '1989-09-03', '0923457901', 33),
(N'Phạm Thị AK', N'Nữ', '1994-10-04', '0934569012', 34),
(N'Hoàng Văn AL', N'Nam', '1967-11-05', '0945679123', 35),
(N'Vũ Thị AM', N'Nữ', '1972-12-06', '0956789234', 36),
(N'Đặng Văn AN', N'Nam', '1977-01-07', '0967892345', 37),
(N'Ngô Thị AO', N'Nữ', '1982-02-08', '0978903456', 38),
(N'Bùi Văn AP', N'Nam', '1987-03-09', '0989014567', 39),
(N'Đỗ Thị AQ', N'Nữ', '1992-04-10', '0990125678', 40),
(N'Nguyễn Văn AR', N'Nam', '1970-05-11', '0901236789', 41),
(N'Trần Thị AS', N'Nữ', '1975-06-12', '0912347890', 42),
(N'Lê Văn AT', N'Nam', '1980-07-13', '0923458901', 43),
(N'Phạm Thị AU', N'Nữ', '1985-08-14', '0934569013', 44),
(N'Hoàng Văn AV', N'Nam', '1990-09-15', '0945679124', 45),
(N'Vũ Thị AW', N'Nữ', '1968-10-16', '0956789235', 46),
(N'Đặng Văn AX', N'Nam', '1973-11-17', '0967892346', 47),
(N'Ngô Thị AY', N'Nữ', '1978-12-18', '0978888222', 48),
(N'Bùi Văn AZ', N'Nam', '1983-01-19', '0989014568', 49),
(N'Đỗ Thị BA', N'Nữ', '1988-02-20', '0990125679', 50);


-- Bảng BenhNhan
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
(N'Nguyễn Thị Lan', N'Nữ', '1990-01-01', N'123 Đường ABC, Hà Nội', '0901111111', N'BHYT-001'),
(N'Trần Văn Hải', N'Nam', '1985-02-02', N'456 Đường DEF, TP.HCM', '0912222222', NULL),
(N'Lê Thị Mai', N'Nữ', '2000-03-03', N'789 Đường GHI, Đà Nẵng', '0923333333', N'BHYT-002'),
(N'Phạm Văn Minh', N'Nam', '1975-04-04', N'101 Đường JKL, Hải Phòng', '0934444444', N'BHYT-003'),
(N'Hoàng Thị Ngọc', N'Nữ', '1995-05-05', N'112 Đường MNO, Cần Thơ', '0945555555', NULL),
(N'Vũ Văn Long', N'Nam', '1980-06-06', N'131 Đường PQR, Nha Trang', '0956666666', N'BHYT-004'),
(N'Đặng Thị Hương', N'Nữ', '2005-07-07', N'415 Đường STU, Vũng Tàu', '0967777777', N'BHYT-005'),
(N'Ngô Văn Khánh', N'Nam', '1970-08-08', N'161 Đường VWX, Huế', '0978888888', NULL),
(N'Bùi Thị Linh', N'Nữ', '1998-09-09', N'718 Đường YZ, Quảng Ninh', '0989999999', N'BHYT-006'),
(N'Đỗ Văn Quân', N'Nam', '1988-10-10', N'192 Đường AA, Bình Dương', '0990000000', N'BHYT-007'),
(N'Nguyễn Thị Kim', N'Nữ', '1992-11-11', N'202 Đường BB, Đồng Nai', '0901111222', NULL),
(N'Trần Văn Bình', N'Nam', '1982-12-12', N'213 Đường CC, Long An', '0912222333', N'BHYT-008'),
(N'Lê Thị Hoa', N'Nữ', '2002-01-13', N'224 Đường DD, Tiền Giang', '0923333444', N'BHYT-009'),
(N'Phạm Văn Đạt', N'Nam', '1972-02-14', N'235 Đường EE, Bến Tre', '0934444555', NULL),
(N'Hoàng Thị Thu', N'Nữ', '1997-03-15', N'246 Đường FF, Vĩnh Long', '0945555666', N'BHYT-010'),
(N'Vũ Văn Nam', N'Nam', '1987-04-16', N'257 Đường GG, Trà Vinh', '0956666777', N'BHYT-011'),
(N'Đặng Thị Yến', N'Nữ', '2007-05-17', N'268 Đường HH, Sóc Trăng', '0967777888', NULL),
(N'Ngô Văn Phong', N'Nam', '1965-06-18', N'279 Đường II, Bạc Liêu', '0978888999', N'BHYT-012'),
(N'Bùi Thị Ánh', N'Nữ', '1999-07-19', N'280 Đường JJ, Cà Mau', '0989999000', N'BHYT-013'),
(N'Đỗ Văn Tiến', N'Nam', '1989-08-20', N'291 Đường KK, Kiên Giang', '0990000111', NULL),
(N'Nguyễn Thị Hằng', N'Nữ', '1993-09-21', N'302 Đường LL, An Giang', '0901111333', N'BHYT-014'),
(N'Trần Văn Sơn', N'Nam', '1983-10-22', N'313 Đường MM, Đồng Tháp', '0912222444', N'BHYT-015'),
(N'Lê Thị Dung', N'Nữ', '2003-11-23', N'324 Đường NN, Vĩnh Phúc', '0923333555', NULL),
(N'Phạm Văn Hùng', N'Nam', '1973-12-24', N'335 Đường OO, Bắc Ninh', '0934444666', N'BHYT-016'),
(N'Hoàng Thị Phương', N'Nữ', '1996-01-25', N'346 Đường PP, Bắc Giang', '0945555777', N'BHYT-017'),
(N'Vũ Văn Toàn', N'Nam', '1986-02-26', N'357 Đường QQ, Phú Thọ', '0956666888', NULL),
(N'Đặng Thị Loan', N'Nữ', '2006-03-27', N'368 Đường RR, Thái Nguyên', '0967777999', N'BHYT-018'),
(N'Ngô Văn Duy', N'Nam', '1966-04-28', N'379 Đường SS, Lạng Sơn', '0978888000', N'BHYT-019'),
(N'Bùi Thị Quyên', N'Nữ', '2000-05-29', N'380 Đường TT, Cao Bằng', '0989999111', NULL),
(N'Đỗ Văn Kiên', N'Nam', '1990-06-30', N'391 Đường UU, Yên Bái', '0990000222', N'BHYT-020'),
(N'Nguyễn Thị Oanh', N'Nữ', '1994-07-01', N'402 Đường VV, Tuyên Quang', '0901111444', N'BHYT-021'),
(N'Trần Văn Việt', N'Nam', '1984-08-02', N'413 Đường WW, Lào Cai', '0912222555', NULL),
(N'Lê Thị Hà', N'Nữ', '2004-09-03', N'424 Đường XX, Điện Biên', '0923333666', N'BHYT-022'),
(N'Phạm Văn Quang', N'Nam', '1974-10-04', N'435 Đường YY, Lai Châu', '0934444777', N'BHYT-023'),
(N'Hoàng Thị Nga', N'Nữ', '1998-11-05', N'446 Đường ZZ, Sơn La', '0945555888', NULL),
(N'Vũ Văn Thắng', N'Nam', '1988-12-06', N'457 Đường AAA, Hòa Bình', '0956666999', N'BHYT-024'),
(N'Đặng Thị Thúy', N'Nữ', '2008-01-07', N'468 Đường BBB, Thái Bình', '0967777000', N'BHYT-025'),
(N'Ngô Văn Hoàng', N'Nam', '1967-02-08', N'479 Đường CCC, Hưng Yên', '0978888111', NULL),
(N'Bùi Thị Vân', N'Nữ', '2001-03-09', N'480 Đường DDD, Hải Dương', '0989999222', N'BHYT-026'),
(N'Đỗ Văn Trung', N'Nam', '1991-04-10', N'491 Đường EEE, Quảng Nam', '0990000333', N'BHYT-027'),
(N'Nguyễn Thị Hồng', N'Nữ', '1995-05-11', N'502 Đường FFF, Quảng Ngãi', '0901111555', NULL),
(N'Trần Văn Lợi', N'Nam', '1985-06-12', N'513 Đường GGG, Bình Định', '0912222666', N'BHYT-028'),
(N'Lê Thị Thanh', N'Nữ', '2005-07-13', N'524 Đường HHH, Phú Yên', '0923333777', N'BHYT-029'),
(N'Phạm Văn Tài', N'Nam', '1975-08-14', N'535 Đường III, Khánh Hòa', '0934444888', NULL),
(N'Hoàng Thị Mỹ', N'Nữ', '1999-09-15', N'546 Đường JJJ, Ninh Thuận', '0945555999', N'BHYT-030'),
(N'Vũ Văn Dũng', N'Nam', '1989-10-16', N'557 Đường KKK, Bình Thuận', '0956666000', N'BHYT-031'),
(N'Đặng Thị Hạnh', N'Nữ', '2009-11-17', N'568 Đường LLL, Kon Tum', '0967777111', NULL),
(N'Ngô Văn Phúc', N'Nam', '1968-12-18', N'579 Đường MMM, Gia Lai', '0978888222', N'BHYT-032'),
(N'Bùi Thị Trang', N'Nữ', '2002-01-19', N'580 Đường NNN, Đắk Lắk', '0989999333', N'BHYT-033'),
(N'Đỗ Văn Thành', N'Nam', '1992-02-20', N'591 Đường OOO, Đắk Nông', '0990000444', NULL);

-- BẢNG LichKham
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
(1, 1, '2025-10-30', N'08:00', N'Chờ khám', N'Khám nội tổng hợp'),
(2, 2, '2025-10-31', N'09:00', N'Đã khám', N'Phẫu thuật ngoại'),
(3, 3, '2025-11-01', N'10:00', N'Chờ khám', N'Khám nhi'),
(4, 4, '2025-11-02', N'11:00', N'Hủy', N'Khám TMH'),
(5, 5, '2025-11-03', N'13:00', N'Chờ khám', N'Khám răng'),
(6, 6, '2025-11-04', N'14:00', N'Đã khám', N'Khám da liễu'),
(7, 7, '2025-11-05', N'15:00', N'Chờ khám', N'Khám tim mạch'),
(8, 8, '2025-11-06', N'16:00', N'Chờ khám', N'Khám hô hấp'),
(9, 9, '2025-11-07', N'08:30', N'Đã khám', N'Khám thần kinh'),
(10, 10, '2025-11-08', N'09:30', N'Chờ khám', N'Khám sản'),
(11, 11, '2025-11-09', N'10:30', N'Chờ khám', N'Khám tiêu hóa'),
(12, 12, '2025-11-10', N'11:30', N'Đã khám', N'Khám thận'),
(13, 13, '2025-11-11', N'13:30', N'Chờ khám', N'Khám nội tiết'),
(14, 14, '2025-11-12', N'14:30', N'Hủy', N'Khám ung bướu'),
(15, 15, '2025-11-13', N'15:30', N'Chờ khám', N'Khám mắt'),
(16, 16, '2025-11-14', N'16:30', N'Đã khám', N'Khám chỉnh hình'),
(17, 17, '2025-11-15', N'08:00', N'Chờ khám', N'Phục hồi chức năng'),
(18, 18, '2025-11-16', N'09:00', N'Chờ khám', N'Khám truyền nhiễm'),
(19, 19, '2025-11-17', N'10:00', N'Đã khám', N'Tư vấn dinh dưỡng'),
(20, 20, '2025-11-18', N'11:00', N'Chờ khám', N'Khám tâm thần'),
(21, 21, '2025-11-19', N'13:00', N'Chờ khám', N'Khám huyết học'),
(22, 22, '2025-11-20', N'14:00', N'Đã khám', N'Khám lao'),
(23, 23, '2025-11-21', N'15:00', N'Chờ khám', N'Vật lý trị liệu'),
(24, 24, '2025-11-22', N'16:00', N'Hủy', N'X quang'),
(25, 25, '2025-11-23', N'08:30', N'Chờ khám', N'Siêu âm'),
(26, 26, '2025-11-24', N'09:30', N'Đã khám', N'Nội soi'),
(27, 27, '2025-11-25', N'10:30', N'Chờ khám', N'Cấp cứu'),
(28, 28, '2025-11-26', N'11:30', N'Chờ khám', N'Gây mê'),
(29, 29, '2025-11-27', N'13:30', N'Đã khám', N'Dược lâm sàng'),
(30, 30, '2025-11-28', N'14:30', N'Chờ khám', N'Nhiễm khuẩn'),
(31, 31, '2025-11-29', N'15:30', N'Chờ khám', N'Y học cổ truyền'),
(32, 32, '2025-11-30', N'16:30', N'Đã khám', N'Châm cứu'),
(33, 33, '2025-12-01', N'08:00', N'Chờ khám', N'Dị ứng'),
(34, 34, '2025-12-02', N'09:00', N'Hủy', N'Lão khoa'),
(35, 35, '2025-12-03', N'10:00', N'Chờ khám', N'Nhi sơ sinh'),
(36, 36, '2025-12-04', N'11:00', N'Đã khám', N'Thẩm mỹ'),
(37, 37, '2025-12-05', N'13:00', N'Chờ khám', N'Bỏng'),
(38, 38, '2025-12-06', N'14:00', N'Chờ khám', N'Ghép tạng'),
(39, 39, '2025-12-07', N'15:00', N'Đã khám', N'Hô hấp nhi'),
(40, 40, '2025-12-08', N'16:00', N'Chờ khám', N'Tim mạch nhi'),
(41, 41, '2025-12-09', N'08:30', N'Chờ khám', N'Thần kinh nhi'),
(42, 42, '2025-12-10', N'09:30', N'Đã khám', N'Tiêu hóa nhi'),
(43, 43, '2025-12-11', N'10:30', N'Chờ khám', N'Ung thư nhi'),
(44, 44, '2025-12-12', N'11:30', N'Hủy', N'Da liễu nhi'),
(45, 45, '2025-12-13', N'13:30', N'Chờ khám', N'Nội tiết nhi'),
(46, 46, '2025-12-14', N'14:30', N'Đã khám', N'Thận nhi'),
(47, 47, '2025-12-15', N'15:30', N'Chờ khám', N'Mắt nhi'),
(48, 48, '2025-12-16', N'16:30', N'Chờ khám', N'TMH nhi'),
(49, 49, '2025-12-17', N'08:00', N'Đã khám', N'RHM nhi'),
(50, 50, '2025-12-18', N'09:00', N'Chờ khám', N'Chấn thương nhi');


--Bảng HoSoKham

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
(1, 1, 1, '2025-10-30 08:30:00', 1, N'Sốt, ho', N'Cảm cúm', N'Uống thuốc hạ sốt'),
(2, 2, 2, '2025-10-31 09:00:00', 2, N'Đau ngực, khó thở', N'Viêm phổi', N'Nhập viện'),
(3, 3, 3, '2025-11-01 10:15:00', 3, N'Khát nước nhiều', N'Đái tháo đường', N'Kiểm tra đường huyết'),
(4, 4, 4, '2025-11-02 11:00:00', 4, N'Đau đầu', N'Tăng huyết áp', N'Đo huyết áp'),
(5, 5, 5, '2025-11-03 13:30:00', 5, N'Đau họng', N'Viêm họng', N'Kháng sinh'),
(6, 6, 6, '2025-11-04 14:00:00', 6, N'Đau răng', N'Sâu răng', N'Nhổ răng'),
(7, 7, 7, '2025-11-05 15:45:00', 7, N'Ngứa da', N'Viêm da', N'Kem bôi'),
(8, 8, 8, '2025-11-06 16:30:00', 8, N'Đau đầu dữ dội', N'Migraine', N'Thuốc giảm đau'),
(9, 9, 9, '2025-11-07 08:00:00', 9, N'Đau bụng', N'Loét dạ dày', N'Nội soi'),
(10, 10, 10, '2025-11-08 09:30:00', 10, N'Tăng mỡ máu', N'Rối loạn lipid', N'Chế độ ăn'),
(11, 11, 11, '2025-11-09 10:00:00', 11, N'Đau khớp', N'Viêm khớp', N'Chống viêm'),
(12, 12, 12, '2025-11-10 11:00:00', 12, N'Mệt mỏi', N'Suy thận', N'Lọc máu'),
(13, 13, 13, '2025-11-11 13:00:00', 13, N'Vàng da', N'Viêm gan B', N'Kháng virus'),
(14, 14, 14, '2025-11-12 14:00:00', 14, N'Ho ra máu', N'Ung thư phổi', N'Xạ trị'),
(15, 15, 15, '2025-11-13 15:00:00', 15, N'Nhức đầu', N'Viêm xoang', N'Rửa xoang'),
(16, 16, 16, '2025-11-14 16:00:00', 16, N'Mờ mắt', N'Đục thủy tinh thể', N'Phẫu thuật'),
(17, 17, 17, '2025-11-15 08:30:00', 17, N'Đau chân', N'Gãy xương', N'Bó bột'),
(18, 18, 18, '2025-11-16 09:30:00', 18, N'Đau bụng dưới', N'Viêm ruột thừa', N'Phẫu thuật'),
(19, 19, 19, '2025-11-17 10:30:00', 19, N'Tiểu buốt', N'Nhiễm trùng tiết niệu', N'Kháng sinh'),
(20, 20, 20, '2025-11-18 11:30:00', 20, N'Mất ngủ', N'Rối loạn giấc ngủ', N'Thuốc an thần'),
(21, 21, 21, '2025-11-19 13:30:00', 21, N'Tiêu chảy', N'Viêm đại tràng', N'Men vi sinh'),
(22, 22, 22, '2025-11-20 14:30:00', 22, N'Run tay', N'Parkinson', N'Thuốc dopamin'),
(23, 23, 23, '2025-11-21 15:30:00', 23, N'Đau gối', N'Viêm khớp gối', N'Tiêm khớp'),
(24, 24, 24, '2025-11-22 16:30:00', 24, N'Khó thở', N'Hen suyễn', N'Xịt hen'),
(25, 25, 25, '2025-11-23 08:00:00', 25, N'Bướu cổ', N'Basedow', N'Thuốc giáp'),
(26, 26, 26, '2025-11-24 09:00:00', 26, N'Đau họng', N'Viêm amidan', N'Cắt amidan'),
(27, 27, 27, '2025-11-25 10:00:00', 27, N'Đau xương', N'Loãng xương', N'Canxi'),
(28, 28, 28, '2025-11-26 11:00:00', 28, N'Tiểu nhiều', N'Viêm bàng quang', N'Kháng sinh'),
(29, 29, 29, '2025-11-27 13:00:00', 29, N'Đau bụng kinh', N'U xơ tử cung', N'Phẫu thuật'),
(30, 30, 30, '2025-11-28 14:00:00', 30, N'Tiểu buốt nam', N'Viêm tiền liệt', N'Kháng sinh'),
(31, 31, 31, '2025-11-29 15:00:00', 31, N'Quên lãng', N'Alzheimer', N'Thuốc não'),
(32, 32, 32, '2025-11-30 16:00:00', 32, N'Vàng da cấp', N'Viêm gan A', N'Nghỉ ngơi'),
(33, 33, 33, '2025-12-01 08:30:00', 33, N'Sốt cao', N'Sốt xuất huyết', N'Truyền dịch'),
(34, 34, 34, '2025-12-02 09:30:00', 34, N'Đau đầu sốt', N'Viêm màng não', N'Kháng sinh tĩnh mạch'),
(35, 35, 35, '2025-12-03 10:30:00', 35, N'Đau ngực', N'Bệnh van tim', N'Phẫu thuật van'),
(36, 36, 36, '2025-12-04 11:30:00', 36, N'Nhịp tim nhanh', N'Rối loạn nhịp', N'Thuốc chống loạn nhịp'),
(37, 37, 37, '2025-12-05 13:30:00', 37, N'Ợ chua', N'Viêm dạ dày', N'Thuốc dạ dày'),
(38, 38, 38, '2025-12-06 14:30:00', 38, N'Đau khớp ngón', N'Gout', N'Giảm acid uric'),
(39, 39, 39, '2025-12-07 15:30:00', 39, N'Đau tai', N'Viêm tai giữa', N'Kháng sinh nhỏ tai'),
(40, 40, 40, '2025-12-08 16:30:00', 40, N'Nghẹt mũi', N'Polyp mũi', N'Phẫu thuật polyp'),
(41, 41, 41, '2025-12-09 08:00:00', 41, N'Mắt đỏ', N'Viêm kết mạc', N'Nhỏ mắt'),
(42, 42, 42, '2025-12-10 09:00:00', 42, N'Bụng chướng', N'Hội chứng ruột kích thích', N'Thuốc ruột'),
(43, 43, 43, '2025-12-11 10:00:00', 43, N'Tiêu chảy mạn', N'Bệnh Crohn', N'Chống viêm ruột'),
(44, 44, 44, '2025-12-12 11:00:00', 44, N'Đau bụng cấp', N'Viêm tụy', N'Nhập viện'),
(45, 45, 45, '2025-12-13 13:00:00', 45, N'Mệt mỏi', N'Suy giáp', N'Hormone giáp'),
(46, 46, 46, '2025-12-14 14:00:00', 46, N'Khối u vú', N'Ung thư vú', N'Hóa trị'),
(47, 47, 47, '2025-12-15 15:00:00', 47, N'Đại tiện máu', N'Ung thư đại tràng', N'Nội soi cắt polyp'),
(48, 48, 48, '2025-12-16 16:00:00', 48, N'Đau tim', N'Mạch vành', N'Đặt stent'),
(49, 49, 49, '2025-12-17 08:30:00', 49, N'Ho kéo dài', N'Viêm phế quản mạn', N'Thuốc giãn phế quản'),
(50, 50, 50, '2025-12-18 09:30:00', 50, N'Phù chân', N'Suy tim', N'Lợi tiểu');


--Bảng DonThuoc

CREATE TABLE DonThuoc (
    MaDon INT PRIMARY KEY IDENTITY(1,1),
    MaHS INT NOT NULL REFERENCES HoSoKham(MaHS),
    MaBS INT NOT NULL REFERENCES BacSi(MaBS),
    TongTien DECIMAL(18,2) NULL,
    NgayKeDon DATE NOT NULL,
    GhiChu NVARCHAR(255) NULL
);


INSERT INTO DonThuoc (MaHS, MaBS, NgayKeDon, GhiChu) VALUES
(1,1,'2025-10-30',N'Đơn thuốc cảm cúm'),
(2,2,'2025-10-31',N'Đơn thuốc viêm phổi'),
(3,3,'2025-11-01',N'Đơn thuốc đái tháo đường'),
(4,4,'2025-11-02',N'Đơn thuốc tăng huyết áp'),
(5,5,'2025-11-03',N'Đơn thuốc viêm họng'),
(6,6,'2025-11-04',N'Đơn thuốc sâu răng'),
(7,7,'2025-11-05',N'Đơn thuốc viêm da'),
(8,8,'2025-11-06',N'Đơn thuốc migraine'),
(9,9,'2025-11-07',N'Đơn thuốc loét dạ dày'),
(10,10,'2025-11-08',N'Đơn thuốc rối loạn lipid'),
(11,11,'2025-11-09',N'Đơn thuốc viêm khớp'),
(12,12,'2025-11-10',N'Đơn thuốc suy thận'),
(13,13,'2025-11-11',N'Đơn thuốc viêm gan B'),
(14,14,'2025-11-12',N'Đơn thuốc ung thư phổi'),
(15,15,'2025-11-13',N'Đơn thuốc viêm xoang'),
(16,16,'2025-11-14',N'Đơn thuốc đục thủy tinh thể'),
(17,17,'2025-11-15',N'Đơn thuốc gãy xương'),
(18,18,'2025-11-16',N'Đơn thuốc viêm ruột thừa'),
(19,19,'2025-11-17',N'Đơn thuốc nhiễm trùng tiết niệu'),
(20,20,'2025-11-18',N'Đơn thuốc rối loạn giấc ngủ'),
(21,21,'2025-11-19',N'Đơn thuốc viêm đại tràng'),
(22,22,'2025-11-20',N'Đơn thuốc Parkinson'),
(23,23,'2025-11-21',N'Đơn thuốc viêm khớp gối'),
(24,24,'2025-11-22',N'Đơn thuốc hen suyễn'),
(25,25,'2025-11-23',N'Đơn thuốc Basedow'),
(26,26,'2025-11-24',N'Đơn thuốc viêm amidan'),
(27,27,'2025-11-25',N'Đơn thuốc loãng xương'),
(28,28,'2025-11-26',N'Đơn thuốc viêm bàng quang'),
(29,29,'2025-11-27',N'Đơn thuốc u xơ tử cung'),
(30,30,'2025-11-28',N'Đơn thuốc viêm tiền liệt'),
(31,31,'2025-11-29',N'Đơn thuốc Alzheimer'),
(32,32,'2025-11-30',N'Đơn thuốc viêm gan A'),
(33,33,'2025-12-01',N'Đơn thuốc sốt xuất huyết'),
(34,34,'2025-12-02',N'Đơn thuốc viêm màng não'),
(35,35,'2025-12-03',N'Đơn thuốc bệnh van tim'),
(36,36,'2025-12-04',N'Đơn thuốc rối loạn nhịp'),
(37,37,'2025-12-05',N'Đơn thuốc viêm dạ dày'),
(38,38,'2025-12-06',N'Đơn thuốc gout'),
(39,39,'2025-12-07',N'Đơn thuốc viêm tai giữa'),
(40,40,'2025-12-08',N'Đơn thuốc polyp mũi'),
(41,41,'2025-12-09',N'Đơn thuốc viêm kết mạc'),
(42,42,'2025-12-10',N'Đơn thuốc hội chứng ruột kích thích'),
(43,43,'2025-12-11',N'Đơn thuốc bệnh Crohn'),
(44,44,'2025-12-12',N'Đơn thuốc viêm tụy'),
(45,45,'2025-12-13',N'Đơn thuốc suy giáp'),
(46,46,'2025-12-14',N'Đơn thuốc ung thư vú'),
(47,47,'2025-12-15',N'Đơn thuốc ung thư đại tràng'),
(48,48,'2025-12-16',N'Đơn thuốc mạch vành'),
(49,49,'2025-12-17',N'Đơn thuốc viêm phế quản mạn'),
(50,50,'2025-12-18',N'Đơn thuốc suy tim');


-- Bảng ChiTietDonThuoc

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
(1,1,10,N'Uống 1 viên/lần, 3 lần/ngày',500),
(2,2,14,N'Uống 1 viên/lần, 2 lần/ngày',2000),
(3,3,7,N'Uống 1 viên/lần, 1 lần/ngày',3000),
(4,4,8,N'Uống 1 viên/lần, 2 lần/ngày',1500),
(5,5,10,N'Uống 1 viên/lần, 3 lần/ngày',1000),
(6,6,5,N'Uống 1 viên/lần, 1 lần/ngày',2000),
(7,7,20,N'Uống 1 viên/lần, 2 lần/ngày',2500),
(8,8,15,N'Uống 1 viên/lần, 1 lần/ngày',5000),
(9,9,10,N'Uống 1 viên/lần, 2 lần/ngày',4000),
(10,10,12,N'Uống 1 viên/lần, 1 lần/ngày',3000),
(11,11,6,N'Uống 1 viên/lần, 3 lần/ngày',1000),
(12,12,9,N'Uống 1 viên/lần, 1 lần/ngày',2000),
(13,13,3,N'Tiêm 1 lọ/ngày',500000),
(14,14,10,N'Uống 1 viên/lần, 1 lần/ngày',6000),
(15,15,8,N'Uống 1 viên/lần, 1 lần/ngày',4000),
(16,16,14,N'Uống 1 viên/lần, 2 lần/ngày',1500),
(17,17,7,N'Uống 1 viên/lần, 1 lần/ngày',2000),
(18,18,10,N'Uống 1 viên/lần, 2 lần/ngày',3000),
(19,19,12,N'Uống 1 viên/lần, 1 lần/ngày',2500),
(20,20,5,N'Uống 1 viên/lần, 1 lần/ngày',5000),
(21,21,1,N'Xịt 2 lần/ngày',150000),
(22,22,1,N'Xịt 1 lần/ngày',200000),
(23,23,10,N'Uống 1 viên/lần, 2 lần/ngày',3000),
(24,24,8,N'Uống 1 viên/lần, 1 lần/ngày',4000),
(25,25,15,N'Uống 1 viên/lần, 1 lần/ngày',5000),
(26,26,10,N'Uống 1 viên/lần, 2 lần/ngày',2000),
(27,27,5,N'Uống 1 viên/lần, 3 lần/ngày',2500),
(28,28,1,N'Đặt 1 viên/ngày',1000),
(29,29,1,N'Bôi 2 lần/ngày',50000),
(30,30,1,N'Bôi 3 lần/ngày',30000),
(31,31,10,N'Uống 1 viên/lần, 2 lần/ngày',3000),
(32,32,5,N'Uống 1 viên/lần, 1 lần/ngày',10000),
(33,33,7,N'Uống 1 viên/lần, 2 lần/ngày',5000),
(34,34,14,N'Uống 1 viên/lần, 2 lần/ngày',4000),
(35,35,10,N'Uống 1 viên/lần, 2 lần/ngày',2000),
(36,36,3,N'Uống 1 viên/lần, 1 lần/ngày',3000),
(37,37,1,N'Uống 1 chai/ngày',100000),
(38,38,5,N'Đặt 1 viên/ngày',2000),
(39,39,10,N'Uống 1 viên/lần, 1 lần/ngày',1000),
(40,40,8,N'Uống 1 viên/lần, 1 lần/ngày',2000),
(41,41,15,N'Uống 1 viên/lần, 1 lần/ngày',1500),
(42,42,10,N'Uống 1 viên/lần, 2 lần/ngày',5000),
(43,43,5,N'Uống 1 viên/lần, 1 lần/ngày',8000),
(44,44,1,N'Uống 1 chai/ngày',100000),
(45,45,10,N'Uống 1 viên/lần, 2 lần/ngày',2000),
(46,46,20,N'Uống 1 viên/lần, 1 lần/ngày',1000),
(47,47,30,N'Uống 1 viên/lần, 1 lần/ngày',1500),
(48,48,15,N'Uống 1 viên/lần, 2 lần/ngày',2000),
(49,49,10,N'Uống 1 viên/lần, 1 lần/ngày',500),
(50,50,5,N'Uống 1 viên/lần, 2 lần/ngày',1500);

-- Bảng ChiTietDichVu

CREATE TABLE ChiTietDichVu (
    MaCTDV INT PRIMARY KEY IDENTITY(1,1),
    MaHS INT NOT NULL REFERENCES HoSoKham(MaHS),
    MaDV INT NOT NULL REFERENCES DichVu(MaDV),
    SoLuong INT NOT NULL CHECK (SoLuong > 0),
    DonGia DECIMAL(18,2) NOT NULL CHECK (DonGia >= 0),
    ThanhTien AS (SoLuong * DonGia) PERSISTED
);


INSERT INTO ChiTietDichVu (MaHS, MaDV, SoLuong, DonGia) VALUES
(1,1,1,150000),
(2,2,1,200000),
(3,3,1,180000),
(4,4,1,100000),
(5,5,1,160000),
(6,6,1,250000),
(7,7,1,220000),
(8,8,1,300000),
(9,9,1,250000),
(10,10,1,200000),
(11,11,1,500000),
(12,12,1,100000),
(13,13,1,400000),
(14,14,1,300000),
(15,15,1,200000),
(16,16,1,600000),
(17,17,1,1500000),
(18,18,1,2000000),
(19,19,1,3000000),
(20,20,1,500000),
(21,21,1,300000),
(22,22,1,200000),
(23,23,1,5000000),
(24,24,1,5000000),
(25,25,1,10000000),
(26,26,1,50000000),
(27,27,1,20000000),
(28,28,1,15000000),
(29,29,1,200000000),
(30,30,1,150000),
(31,31,1,20000000),
(32,32,1,500000),
(33,33,1,300000),
(34,34,1,200000),
(35,35,1,250000),
(36,36,1,300000),
(37,37,1,200000),
(38,38,1,150000),
(39,39,1,10000000),
(40,40,1,20000000),
(41,41,1,100000),
(42,42,1,150000),
(43,43,1,2000000),
(44,44,1,15000000),
(45,45,1,200000),
(46,46,1,10000000),
(47,47,1,250000),
(48,48,1,200000),
(49,49,1,300000),
(50,50,1,30000000);

--Bảng HoaDon

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
(1,1,'2025-10-30 09:00:00', 200000, N'BHYT-001', 80.00, 40000),
(2,2,'2025-10-31 10:00:00', 300000, NULL, NULL, 300000),
(3,3,'2025-11-01 11:00:00', 400000, N'BHYT-002', 70.00, 120000),
(4,4,'2025-11-02 12:00:00', 500000, N'BHYT-003', 100.00, 0),
(5,5,'2025-11-03 14:00:00', 600000, NULL, NULL, 600000),
(6,6,'2025-11-04 15:00:00', 700000, N'BHYT-004', 80.00, 140000),
(7,7,'2025-11-05 16:00:00', 800000, N'BHYT-005', 80.00, 160000),
(8,8,'2025-11-06 17:00:00', 900000, NULL, NULL, 900000),
(9,9,'2025-11-07 09:00:00', 1000000, N'BHYT-006', 70.00, 300000),
(10,10,'2025-11-08 10:00:00', 1100000, N'BHYT-007', 100.00, 0),
(11,11,'2025-11-09 11:00:00', 1200000, NULL, NULL, 1200000),
(12,12,'2025-11-10 12:00:00', 1300000, N'BHYT-008', 80.00, 260000),
(13,13,'2025-11-11 14:00:00', 1400000, N'BHYT-009', 95.00, 70000),
(14,14,'2025-11-12 15:00:00', 1500000, NULL, NULL, 1500000),
(15,15,'2025-11-13 16:00:00', 1600000, N'BHYT-010', 100.00, 0),
(16,16,'2025-11-14 17:00:00', 1700000, NULL, NULL, 1700000),
(17,17,'2025-11-15 09:00:00', 1800000, N'BHYT-011', 100.00, 0),
(18,18,'2025-11-16 10:00:00', 1900000, N'BHYT-012', 100.00, 0),
(19,19,'2025-11-17 11:00:00', 2000000, NULL, NULL, 2000000),
(20,20,'2025-11-18 12:00:00', 2100000, N'BHYT-013', 80.00, 420000),
(21,21,'2025-11-19 14:00:00', 2200000, N'BHYT-014', 80.00, 440000),
(22,22,'2025-11-20 15:00:00', 2300000, NULL, NULL, 2300000),
(23,23,'2025-11-21 16:00:00', 2400000, N'BHYT-015', 70.00, 720000),
(24,24,'2025-11-22 17:00:00', 2500000, N'BHYT-016', 70.00, 750000),
(25,25,'2025-11-23 09:00:00', 2600000, NULL, NULL, 2600000),
(26,26,'2025-11-24 10:00:00', 2700000, N'BHYT-017', 100.00, 0),
(27,27,'2025-11-25 11:00:00', 2800000, N'BHYT-018', 100.00, 0),
(28,28,'2025-11-26 12:00:00', 2900000, NULL, NULL, 2900000),
(29,29,'2025-11-27 14:00:00', 3000000, N'BHYT-019', 70.00, 900000),
(30,30,'2025-11-28 15:00:00', 3100000, N'BHYT-020', 80.00, 620000),
(31,31,'2025-11-29 16:00:00', 3200000, NULL, NULL, 3200000),
(32,32,'2025-11-30 17:00:00', 3300000, N'BHYT-021', 75.00, 825000),
(33,33,'2025-12-01 09:00:00', 3400000, N'BHYT-022', 90.00, 340000),
(34,34,'2025-12-02 10:00:00', 3500000, NULL, NULL, 3500000),
(35,35,'2025-12-03 11:00:00', 3600000, N'BHYT-023', 100.00, 0),
(36,36,'2025-12-04 12:00:00', 3700000, N'BHYT-024', 90.00, 370000),
(37,37,'2025-12-05 14:00:00', 3800000, NULL, NULL, 3800000),
(38,38,'2025-12-06 15:00:00', 3900000, N'BHYT-025', 100.00, 0),
(39,39,'2025-12-07 16:00:00', 4000000, N'BHYT-026', 70.00, 1200000),
(40,40,'2025-12-08 17:00:00', 4100000, NULL, NULL, 4100000),
(41,41,'2025-12-09 09:00:00', 4200000, N'BHYT-027', 75.00, 1050000),
(42,42,'2025-12-10 10:00:00', 4300000, N'BHYT-028', 100.00, 0),
(43,43,'2025-12-11 11:00:00', 4400000, NULL, NULL, 4400000),
(44,44,'2025-12-12 12:00:00', 4500000, N'BHYT-029', 80.00, 900000),
(45,45,'2025-12-13 14:00:00', 4600000, N'BHYT-030', 80.00, 920000),
(46,46,'2025-12-14 15:00:00', 4700000, NULL, NULL, 4700000),
(47,47,'2025-12-15 16:00:00', 4800000, N'BHYT-031', 100.00, 0),
(48,48,'2025-12-16 17:00:00', 4900000, N'BHYT-032', 95.00, 245000),
(49,49,'2025-12-17 09:00:00', 5000000, NULL, NULL, 5000000),
(50,50,'2025-12-18 10:00:00', 5100000, N'BHYT-033', 90.00, 510000);



-- Bảng ThanhToan

CREATE TABLE ThanhToan (
    MaThanhToan INT PRIMARY KEY IDENTITY(1,1),
    MaHoaDon INT NOT NULL REFERENCES HoaDon(MaHoaDon),
    NgayThanhToan DATETIME NOT NULL,
    SoTien DECIMAL(18,2) NOT NULL CHECK (SoTien >= 0),
    PhuongThuc NVARCHAR(50) NULL
);


INSERT INTO ThanhToan (MaHoaDon, NgayThanhToan, SoTien, PhuongThuc) VALUES
(1,'2025-10-30 09:30:00',40000,N'Tiền mặt'),
(2,'2025-10-31 10:30:00',300000,N'Chuyển khoản'),
(3,'2025-11-01 11:30:00',120000,N'BHYT'),
(4,'2025-11-02 12:30:00',0,N'BHYT'),
(5,'2025-11-03 14:30:00',600000,N'Tiền mặt'),
(6,'2025-11-04 15:30:00',140000,N'Chuyển khoản'),
(7,'2025-11-05 16:30:00',160000,N'BHYT'),
(8,'2025-11-06 17:30:00',900000,N'Tiền mặt'),
(9,'2025-11-07 09:30:00',300000,N'Chuyển khoản'),
(10,'2025-11-08 10:30:00',0,N'BHYT'),
(11,'2025-11-09 11:30:00',1200000,N'Tiền mặt'),
(12,'2025-11-10 12:30:00',260000,N'Chuyển khoản'),
(13,'2025-11-11 14:30:00',70000,N'BHYT'),
(14,'2025-11-12 15:30:00',1500000,N'Tiền mặt'),
(15,'2025-11-13 16:30:00',0,N'BHYT'),
(16,'2025-11-14 17:30:00',1700000,N'Chuyển khoản'),
(17,'2025-11-15 09:30:00',0,N'BHYT'),
(18,'2025-11-16 10:30:00',0,N'BHYT'),
(19,'2025-11-17 11:30:00',2000000,N'Tiền mặt'),
(20,'2025-11-18 12:30:00',420000,N'Chuyển khoản'),
(21,'2025-11-19 14:30:00',440000,N'BHYT'),
(22,'2025-11-20 15:30:00',2300000,N'Tiền mặt'),
(23,'2025-11-21 16:30:00',720000,N'Chuyển khoản'),
(24,'2025-11-22 17:30:00',750000,N'BHYT'),
(25,'2025-11-23 09:30:00',2600000,N'Tiền mặt'),
(26,'2025-11-24 10:30:00',0,N'BHYT'),
(27,'2025-11-25 11:30:00',0,N'BHYT'),
(28,'2025-11-26 12:30:00',2900000,N'Tiền mặt'),
(29,'2025-11-27 14:30:00',900000,N'Chuyển khoản'),
(30,'2025-11-28 15:30:00',620000,N'BHYT'),
(31,'2025-11-29 16:30:00',3200000,N'Tiền mặt'),
(32,'2025-11-30 17:30:00',825000,N'Chuyển khoản'),
(33,'2025-12-01 09:30:00',340000,N'BHYT'),
(34,'2025-12-02 10:30:00',3500000,N'Tiền mặt'),
(35,'2025-12-03 11:30:00',0,N'BHYT'),
(36,'2025-12-04 12:30:00',370000,N'Chuyển khoản'),
(37,'2025-12-05 14:30:00',3800000,N'BHYT'),
(38,'2025-12-06 15:30:00',0,N'Tiền mặt'),
(39,'2025-12-07 16:30:00',1200000,N'Chuyển khoản'),
(40,'2025-12-08 17:30:00',4100000,N'BHYT'),
(41,'2025-12-09 09:30:00',1050000,N'Tiền mặt'),
(42,'2025-12-10 10:30:00',0,N'Chuyển khoản'),
(43,'2025-12-11 11:30:00',4400000,N'BHYT'),
(44,'2025-12-12 12:30:00',900000,N'Tiền mặt'),
(45,'2025-12-13 14:30:00',920000,N'Chuyển khoản'),
(46,'2025-12-14 15:30:00',4700000,N'BHYT'),
(47,'2025-12-15 16:30:00',0,N'Tiền mặt'),
(48,'2025-12-16 17:30:00',245000,N'Chuyển khoản'),
(49,'2025-12-17 09:30:00',5000000,N'BHYT'),
(50,'2025-12-18 10:30:00',510000,N'Tiền mặt');


-- Xem dữ liệu bảng 

SELECT  * FROM Khoa;
SELECT  * FROM BenhNhan;
SELECT  * FROM BacSi;
SELECT  * FROM Thuoc;
SELECT  * FROM HoSoKham;
SELECT * FROM DonThuoc;
SELECT * FROM ChiTietDonThuoc;
SELECT * FROM ChiTietDichVu;
SELECT * FROM HoaDon;


-- 4.1 Thủ tục thêm – sửa – xóa cho các bảng chính

-- Thủ tục thêm bệnh nhân
CREATE OR ALTER PROCEDURE sp_ThemBenhNhan
    @HoTen NVARCHAR(100),
    @GioiTinh NVARCHAR(10) = NULL,
    @NgaySinh DATE = NULL,
    @DiaChi NVARCHAR(255) = NULL,
    @SDT NVARCHAR(15) = NULL,
    @MaBHYT NVARCHAR(20) = NULL
AS
BEGIN
    IF EXISTS (SELECT 1 FROM BenhNhan WHERE HoTen = @HoTen AND NgaySinh = @NgaySinh) 
    BEGIN
        PRINT('Bệnh nhân đã tồn tại với thông tin tương tự.');
        RETURN;
    END

    IF @HoTen IS NULL OR LEN(@HoTen) = 0
    BEGIN
        PRINT('Tên bệnh nhân không được để trống.');
        RETURN;
    END

    IF @MaBHYT IS NOT NULL AND NOT EXISTS (SELECT 1 FROM BaoHiemYTe WHERE MaBHYT = @MaBHYT)
    BEGIN
        PRINT('Mã bảo hiểm y tế không tồn tại.');
        RETURN;
    END

    INSERT INTO BenhNhan (HoTen, GioiTinh, NgaySinh, DiaChi, SDT, MaBHYT)
    VALUES (@HoTen, @GioiTinh, @NgaySinh, @DiaChi, @SDT, @MaBHYT);
END;

-- Thủ tục sửa bệnh nhân
CREATE OR ALTER PROCEDURE sp_SuaBenhNhan
    @MaBN INT,
    @HoTen NVARCHAR(100) = NULL,
    @GioiTinh NVARCHAR(10) = NULL,
    @NgaySinh DATE = NULL,
    @DiaChi NVARCHAR(255) = NULL,
    @SDT NVARCHAR(15) = NULL,
    @MaBHYT NVARCHAR(20) = NULL
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM BenhNhan WHERE MaBN = @MaBN)
    BEGIN
        PRINT('Bệnh nhân không tồn tại.');
        RETURN;
    END

    IF @MaBHYT IS NOT NULL AND NOT EXISTS (SELECT 1 FROM BaoHiemYTe WHERE MaBHYT = @MaBHYT)
    BEGIN
        PRINT('Mã bảo hiểm y tế không tồn tại.');
        RETURN;
    END

    UPDATE BenhNhan
    SET HoTen = ISNULL(@HoTen, HoTen),
        GioiTinh = ISNULL(@GioiTinh, GioiTinh),
        NgaySinh = ISNULL(@NgaySinh, NgaySinh),
        DiaChi = ISNULL(@DiaChi, DiaChi),
        SDT = ISNULL(@SDT, SDT),
        MaBHYT = ISNULL(@MaBHYT, MaBHYT)
    WHERE MaBN = @MaBN;
END;

-- Thủ tục xóa bệnh nhân
CREATE OR ALTER PROCEDURE sp_XoaBenhNhan
    @MaBN INT
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM BenhNhan WHERE MaBN = @MaBN)
    BEGIN
        PRINT('Bệnh nhân không tồn tại.');
        RETURN;
    END

    IF EXISTS (SELECT 1 FROM HoSoKham WHERE MaBN = @MaBN)
       OR EXISTS (SELECT 1 FROM LichKham WHERE MaBN = @MaBN)
       OR EXISTS (SELECT 1 FROM HoaDon WHERE MaBN = @MaBN)
    BEGIN
        PRINT('Không thể xóa bệnh nhân vì có dữ liệu liên quan (hồ sơ khám, lịch khám hoặc hóa đơn).');
        RETURN;
    END

    DELETE FROM BenhNhan WHERE MaBN = @MaBN;
END;

-- Thủ tục thêm bác sĩ
CREATE OR ALTER PROCEDURE sp_ThemBacSi
    @HoTen NVARCHAR(100),
    @GioiTinh NVARCHAR(10) = NULL,
    @NgaySinh DATE = NULL,
    @SDT NVARCHAR(15) = NULL,
    @MaKhoa INT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM BacSi WHERE HoTen = @HoTen AND NgaySinh = @NgaySinh) -- Kiểm tra trùng thông tin cơ bản
    BEGIN
        PRINT('Bác sĩ đã tồn tại với thông tin tương tự.');
        RETURN;
    END

    IF @HoTen IS NULL OR LEN(@HoTen) = 0
    BEGIN
        PRINT('Tên bác sĩ không được để trống.');
        RETURN;
    END

    IF NOT EXISTS (SELECT 1 FROM Khoa WHERE MaKhoa = @MaKhoa)
    BEGIN
        PRINT('Mã khoa không tồn tại.');
        RETURN;
    END

    INSERT INTO BacSi (HoTen, GioiTinh, NgaySinh, SDT, MaKhoa)
    VALUES (@HoTen, @GioiTinh, @NgaySinh, @SDT, @MaKhoa);
END;

-- Thủ tục sửa bác sĩ
CREATE OR ALTER PROCEDURE sp_SuaBacSi
    @MaBS INT,
    @HoTen NVARCHAR(100) = NULL,
    @GioiTinh NVARCHAR(10) = NULL,
    @NgaySinh DATE = NULL,
    @SDT NVARCHAR(15) = NULL,
    @MaKhoa INT = NULL
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM BacSi WHERE MaBS = @MaBS)
    BEGIN
        PRINT('Bác sĩ không tồn tại.');
        RETURN;
    END

    IF @MaKhoa IS NOT NULL AND NOT EXISTS (SELECT 1 FROM Khoa WHERE MaKhoa = @MaKhoa)
    BEGIN
        PRINT('Mã khoa không tồn tại.');
        RETURN;
    END

    UPDATE BacSi
    SET HoTen = ISNULL(@HoTen, HoTen),
        GioiTinh = ISNULL(@GioiTinh, GioiTinh),
        NgaySinh = ISNULL(@NgaySinh, NgaySinh),
        SDT = ISNULL(@SDT, SDT),
        MaKhoa = ISNULL(@MaKhoa, MaKhoa)
    WHERE MaBS = @MaBS;
END;

-- Thủ tục xóa bác sĩ
CREATE OR ALTER PROCEDURE sp_XoaBacSi
    @MaBS INT
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM BacSi WHERE MaBS = @MaBS)
    BEGIN
        PRINT('Bác sĩ không tồn tại.');
        RETURN;
    END

    IF EXISTS (SELECT 1 FROM HoSoKham WHERE MaBS = @MaBS)
       OR EXISTS (SELECT 1 FROM LichKham WHERE MaBS = @MaBS)
       OR EXISTS (SELECT 1 FROM DonThuoc WHERE MaBS = @MaBS)
    BEGIN
        PRINT('Không thể xóa bác sĩ vì có dữ liệu liên quan (hồ sơ khám, lịch khám hoặc đơn thuốc).');
        RETURN;
    END

    DELETE FROM BacSi WHERE MaBS = @MaBS;
END;

-- Thủ tục thêm thuốc
CREATE OR ALTER PROCEDURE sp_ThemThuoc
    @TenThuoc NVARCHAR(150),
    @DonViTinh NVARCHAR(50) = NULL,
    @DonGia DECIMAL(18,2),
    @SoLuongTon INT,
    @XuatXu NVARCHAR(100) = NULL
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Thuoc WHERE TenThuoc = @TenThuoc)
    BEGIN
        PRINT('Thuốc đã tồn tại.');
        RETURN;
    END

    IF @TenThuoc IS NULL OR LEN(@TenThuoc) = 0
    BEGIN
        PRINT('Tên thuốc không được để trống.');
        RETURN;
    END

    IF @DonGia < 0 OR @SoLuongTon < 0
    BEGIN
        PRINT('Đơn giá hoặc số lượng tồn phải >= 0.');
        RETURN;
    END

    INSERT INTO Thuoc (TenThuoc, DonViTinh, DonGia, SoLuongTon, XuatXu)
    VALUES (@TenThuoc, @DonViTinh, @DonGia, @SoLuongTon, @XuatXu);
END;

-- Thủ tục sửa thuốc
CREATE OR ALTER PROCEDURE sp_SuaThuoc
    @MaThuoc INT,
    @TenThuoc NVARCHAR(150) = NULL,
    @DonViTinh NVARCHAR(50) = NULL,
    @DonGia DECIMAL(18,2) = NULL,
    @SoLuongTon INT = NULL,
    @XuatXu NVARCHAR(100) = NULL
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Thuoc WHERE MaThuoc = @MaThuoc)
    BEGIN
        PRINT('Thuốc không tồn tại.');
        RETURN;
    END

    IF @DonGia IS NOT NULL AND @DonGia < 0
       OR @SoLuongTon IS NOT NULL AND @SoLuongTon < 0
    BEGIN
        PRINT('Đơn giá hoặc số lượng tồn phải >= 0.');
        RETURN;
    END

    UPDATE Thuoc
    SET TenThuoc = ISNULL(@TenThuoc, TenThuoc),
        DonViTinh = ISNULL(@DonViTinh, DonViTinh),
        DonGia = ISNULL(@DonGia, DonGia),
        SoLuongTon = ISNULL(@SoLuongTon, SoLuongTon),
        XuatXu = ISNULL(@XuatXu, XuatXu)
    WHERE MaThuoc = @MaThuoc;
END;

-- Thủ tục xóa thuốc
CREATE OR ALTER PROCEDURE sp_XoaThuoc
    @MaThuoc INT
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Thuoc WHERE MaThuoc = @MaThuoc)
    BEGIN
        PRINT('Thuốc không tồn tại.');
        RETURN;
    END

    IF EXISTS (SELECT 1 FROM ChiTietDonThuoc WHERE MaThuoc = @MaThuoc)
    BEGIN
        PRINT('Không thể xóa thuốc vì có dữ liệu liên quan trong đơn thuốc.');
        RETURN;
    END

    DELETE FROM Thuoc WHERE MaThuoc = @MaThuoc;
END;

-- Thủ tục thêm đơn thuốc
CREATE OR ALTER PROCEDURE sp_ThemDonThuoc
    @MaHS INT,
    @MaBS INT,
    @NgayKeDon DATE,
    @GhiChu NVARCHAR(255) = NULL
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM HoSoKham WHERE MaHS = @MaHS)
    BEGIN
        PRINT('Hồ sơ khám không tồn tại.');
        RETURN;
    END

    IF NOT EXISTS (SELECT 1 FROM BacSi WHERE MaBS = @MaBS)
    BEGIN
        PRINT('Bác sĩ không tồn tại.');
        RETURN;
    END

    INSERT INTO DonThuoc (MaHS, MaBS, NgayKeDon, GhiChu)
    VALUES (@MaHS, @MaBS, @NgayKeDon, @GhiChu);
END;

-- Thủ tục sửa đơn thuốc
CREATE OR ALTER PROCEDURE sp_SuaDonThuoc
    @MaDon INT,
    @MaHS INT = NULL,
    @MaBS INT = NULL,
    @NgayKeDon DATE = NULL,
    @GhiChu NVARCHAR(255) = NULL
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM DonThuoc WHERE MaDon = @MaDon)
    BEGIN
        PRINT('Đơn thuốc không tồn tại.');
        RETURN;
    END

    IF @MaHS IS NOT NULL AND NOT EXISTS (SELECT 1 FROM HoSoKham WHERE MaHS = @MaHS)
    BEGIN
        PRINT('Hồ sơ khám không tồn tại.');
        RETURN;
    END

    IF @MaBS IS NOT NULL AND NOT EXISTS (SELECT 1 FROM BacSi WHERE MaBS = @MaBS)
    BEGIN
        PRINT('Bác sĩ không tồn tại.');
        RETURN;
    END

    UPDATE DonThuoc
    SET MaHS = ISNULL(@MaHS, MaHS),
        MaBS = ISNULL(@MaBS, MaBS),
        NgayKeDon = ISNULL(@NgayKeDon, NgayKeDon),
        GhiChu = ISNULL(@GhiChu, GhiChu)
    WHERE MaDon = @MaDon;
END;

-- Thủ tục xóa đơn thuốc
CREATE OR ALTER PROCEDURE sp_XoaDonThuoc
    @MaDon INT
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM DonThuoc WHERE MaDon = @MaDon)
    BEGIN
        PRINT('Đơn thuốc không tồn tại.');
        RETURN;
    END

    IF EXISTS (SELECT 1 FROM ChiTietDonThuoc WHERE MaDon = @MaDon)
       OR EXISTS (SELECT 1 FROM HoaDon hd INNER JOIN HoSoKham hs ON hd.MaHS = hs.MaHS INNER JOIN DonThuoc dt ON dt.MaHS = hs.MaHS WHERE dt.MaDon = @MaDon AND hd.MaHoaDon IS NOT NULL)
    BEGIN
        PRINT('Không thể xóa đơn thuốc vì có chi tiết hoặc hóa đơn liên quan.');
        RETURN;
    END

    DELETE FROM DonThuoc WHERE MaDon = @MaDon;
END;

-- 4.2 View – để tiện truy xuất dữ liệu bảng

-- View DonThuocBenhNhan
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

-- View LichSuKhamBenhNhan
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

-- View DoanhThuTheoThang
CREATE OR ALTER VIEW v_DoanhThuTheoThang AS
SELECT 
    YEAR(hd.NgayLap) AS Nam,
    MONTH(hd.NgayLap) AS Thang,
    SUM(hd.TongTien) AS TongDoanhThu
FROM HoaDon hd
GROUP BY YEAR(hd.NgayLap), MONTH(hd.NgayLap);

-- 4.3 Hàm tính toán – các hàm phục vụ nghiệp vụ

-- Hàm tính tổng đơn thuốc
CREATE OR ALTER FUNCTION fn_TinhTongDonThuoc (@MaDon INT)
RETURNS DECIMAL(18,2)
AS
BEGIN
    DECLARE @TongTien DECIMAL(18,2);

    SELECT @TongTien = SUM(ThanhTien)
    FROM ChiTietDonThuoc
    WHERE MaDon = @MaDon;

    RETURN ISNULL(@TongTien, 0);
END;

-- Hàm tính tiền khám (dựa trên dịch vụ trong hồ sơ khám)
CREATE OR ALTER FUNCTION fn_TinhTienKham (@MaHS INT)
RETURNS DECIMAL(18,2)
AS
BEGIN
    DECLARE @TongTien DECIMAL(18,2);

    SELECT @TongTien = SUM(ThanhTien)
    FROM ChiTietDichVu
    WHERE MaHS = @MaHS;

    RETURN ISNULL(@TongTien, 0);
END;

-- Hàm tính tổng đơn thuốc trả nhà thuốc (sau trừ bảo hiểm, dựa trên hóa đơn liên quan)
CREATE OR ALTER FUNCTION fn_TinhTongDonThuocTraNhaThuoc (@MaDon INT)
RETURNS DECIMAL(18,2)
AS
BEGIN
    DECLARE @TienTra DECIMAL(18,2);

    SELECT @TienTra = (
        SELECT TienBNPhaiTra
        FROM HoaDon
        WHERE MaHS = (
            SELECT MaHS 
            FROM HoSoKham 
            WHERE MaHS = (
                SELECT MaHS FROM DonThuoc WHERE MaDon = @MaDon
            )
        )
    );

    RETURN ISNULL(@TienTra, dbo.fn_TinhTongDonThuoc(@MaDon));
END;
GO


-- 5.1 Thống kê – viết thủ tục thống kê số lượt khám, doanh thu, bệnh phổ biến

-- Thủ tục thống kê lượt khám theo tháng
CREATE OR ALTER PROCEDURE sp_ThongKeLuotKhamThang
    @Thang INT,
    @Nam INT
AS
BEGIN
    DECLARE @SoLuotKham INT;

    SELECT @SoLuotKham = COUNT(*)
    FROM HoSoKham
    WHERE MONTH(NgayKham) = @Thang AND YEAR(NgayKham) = @Nam;

    SELECT @SoLuotKham AS SoLuotKham;
END;

-- Thủ tục thống kê doanh thu theo tháng
CREATE OR ALTER PROCEDURE sp_ThongKeDoanhThuThang
    @Thang INT,
    @Nam INT
AS
BEGIN
    DECLARE @TongDoanhThu DECIMAL(18,2);

    SELECT @TongDoanhThu = SUM(TongTien)
    FROM HoaDon
    WHERE MONTH(NgayLap) = @Thang AND YEAR(NgayLap) = @Nam;

    SELECT ISNULL(@TongDoanhThu, 0) AS TongDoanhThu;
END;

-- Thủ tục thống kê bệnh phổ biến
CREATE OR ALTER PROCEDURE sp_ThongKeBenhPhoBien
    @TuNgay DATE,
    @DenNgay DATE
AS
BEGIN
    SELECT TOP 5 
        (SELECT TenBenh FROM Benh WHERE MaBenh = HoSoKham.MaBenh) AS TenBenh,
        COUNT(MaBenh) AS SoLuot
    FROM HoSoKham
    WHERE NgayKham BETWEEN @TuNgay AND @DenNgay
    GROUP BY MaBenh
    ORDER BY SoLuot DESC;
END;
GO

-- 5.2 Trigger – kiểm tra ràng buộc, cập nhật tự động

-- Trigger tự tính tiền đơn thuốc (AFTER INSERT/UPDATE trên bảng ChiTietDonThuoc)
CREATE OR ALTER TRIGGER trg_CapNhatTongTienDonThuoc
ON ChiTietDonThuoc
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    UPDATE DonThuoc
    SET TongTien = (
        SELECT SUM(SoLuong * DonGia)
        FROM ChiTietDonThuoc
        WHERE ChiTietDonThuoc.MaDon = DonThuoc.MaDon
    )
    WHERE DonThuoc.MaDon IN (
        SELECT MaDon FROM inserted
        UNION
        SELECT MaDon FROM deleted
    );
END;
GO

-- Trigger kiểm tra xóa bác sĩ (INSTEAD OF DELETE trên bảng BacSi)
CREATE OR ALTER TRIGGER trg_KiemTraXoaBacSi
ON BacSi
INSTEAD OF DELETE
AS
BEGIN
    DECLARE @MaBS INT;

    SELECT @MaBS = MaBS FROM deleted;

    IF EXISTS (SELECT 1 FROM HoSoKham WHERE MaBS = @MaBS)
       OR EXISTS (SELECT 1 FROM LichKham WHERE MaBS = @MaBS)
       OR EXISTS (SELECT 1 FROM DonThuoc WHERE MaBS = @MaBS)
    BEGIN
        PRINT('Không thể xóa bác sĩ vì có dữ liệu liên quan (hồ sơ khám, lịch khám hoặc đơn thuốc).');
        RETURN;
    END

    -- Nếu không có liên kết, thực hiện xóa
    DELETE FROM BacSi WHERE MaBS = @MaBS;
END;

-- Trigger kiểm tra xóa bệnh nhân (INSTEAD OF DELETE trên bảng BenhNhan)
CREATE OR ALTER TRIGGER trg_KiemTraXoaBenhNhan
ON BenhNhan
INSTEAD OF DELETE
AS
BEGIN
    DECLARE @MaBN INT;

    SELECT @MaBN = MaBN FROM deleted;

    IF EXISTS (SELECT 1 FROM HoSoKham WHERE MaBN = @MaBN)
       OR EXISTS (SELECT 1 FROM LichKham WHERE MaBN = @MaBN)
       OR EXISTS (SELECT 1 FROM HoaDon WHERE MaBN = @MaBN AND TienBNPhaiTra > 0) -- Kiểm tra thanh toán hết chưa
    BEGIN
        PRINT('Không thể xóa bệnh nhân vì có dữ liệu liên quan (hồ sơ khám, lịch khám hoặc hóa đơn chưa thanh toán).');
        RETURN;
    END

    -- Nếu không có liên kết, thực hiện xóa
    DELETE FROM BenhNhan WHERE MaBN = @MaBN;
END;

-- Trigger cập nhật tự động số lượng thuốc (sau khi INSERT trên bảng ChiTietDonThuoc - giả sử khi thêm chi tiết đơn sẽ giảm tồn kho)
CREATE OR ALTER TRIGGER trg_CapNhatTonKhoThuoc
ON ChiTietDonThuoc
AFTER INSERT
AS
BEGIN
    DECLARE @MaThuoc INT, @SoLuong INT;

    SELECT @MaThuoc = MaThuoc, @SoLuong = SoLuong FROM inserted;

    IF (SELECT SoLuongTon FROM Thuoc WHERE MaThuoc = @MaThuoc) < @SoLuong
    BEGIN
        PRINT('Số lượng tồn kho không đủ.');
        ROLLBACK TRANSACTION;
        RETURN;
    END

    UPDATE Thuoc
    SET SoLuongTon = SoLuongTon - @SoLuong
    WHERE MaThuoc = @MaThuoc;
END;

CREATE DATABASE QuanLyKhamChuaBenh;
USE QuanLyKhamChuaBenh;

-- FUNCTION

CREATE OR ALTER FUNCTION fn_TinhTongDonThuoc (@MaDon INT)
RETURNS DECIMAL(18,2)
AS
BEGIN
    DECLARE @TongTien DECIMAL(18,2);

    SELECT @TongTien = SUM(SoLuong * DonGia)
    FROM ChiTietDonThuoc
    WHERE MaDon = @MaDon;

    RETURN ISNULL(@TongTien, 0);
END;
GO

CREATE OR ALTER FUNCTION fn_TinhTongDichVu (@MaHS INT)
RETURNS DECIMAL(18,2)
AS
BEGIN
    DECLARE @TongDV DECIMAL(18,2);

    SELECT @TongDV = SUM(SoLuong * (
        SELECT DonGia FROM DichVu WHERE DichVu.MaDV = ChiTietDichVu.MaDV
    ))
    FROM ChiTietDichVu
    WHERE MaHS = @MaHS;

    RETURN ISNULL(@TongDV, 0);
END;
GO

CREATE OR ALTER FUNCTION fn_TinhTongDonThuocTraNhaThuoc (@MaDon INT)
RETURNS DECIMAL(18,2)
AS
BEGIN
    DECLARE @TienTra DECIMAL(18,2);

    SELECT @TienTra = (
        SELECT TienBNPhaiTra
        FROM HoaDon
        WHERE MaHS = (
            SELECT MaHS FROM DonThuoc WHERE MaDon = @MaDon
        )
    );

    RETURN ISNULL(@TienTra, dbo.fn_TinhTongDonThuoc(@MaDon));
END;
GO

CREATE OR ALTER FUNCTION fn_TinhDoanhThuNhaThuocTheoNgay (@Ngay DATE)
RETURNS DECIMAL(18,2)
AS
BEGIN
    DECLARE @Tong DECIMAL(18,2);

    SELECT @Tong = SUM(dbo.fn_TinhTongDonThuocTraNhaThuoc(MaDon))
    FROM DonThuoc
    WHERE CONVERT(DATE, NgayKeDon) = @Ngay;

    RETURN ISNULL(@Tong, 0);
END;
GO

-- TRIGGER

-- Trigger cập nhật DonThuoc.TongTien khi ChiTietDonThuoc thay đổi
CREATE OR ALTER TRIGGER trg_CapNhatTongTienDonThuoc
ON ChiTietDonThuoc
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    -- Cập nhật tất cả MaDon bị ảnh hưởng (từ insert/delete)
    UPDATE DonThuoc
    SET TongTien = (
        SELECT SUM(SoLuong * DonGia) FROM ChiTietDonThuoc WHERE ChiTietDonThuoc.MaDon = DonThuoc.MaDon
    )
    WHERE DonThuoc.MaDon IN (
        SELECT MaDon FROM inserted
        UNION
        SELECT MaDon FROM deleted
    );
END;
GO

-- Trigger cập nhật Thuoc.SoLuongTon khi xuất thuốc (khi chèn vào ChiTietDonThuoc)
CREATE OR ALTER TRIGGER trg_GiamTonKhoSauBan
ON ChiTietDonThuoc
AFTER INSERT
AS
BEGIN
    UPDATE Thuoc
    SET SoLuongTon = SoLuongTon - (
        SELECT SUM(SoLuong) FROM ChiTietDonThuoc WHERE ChiTietDonThuoc.MaThuoc = Thuoc.MaThuoc AND MaDon IN (SELECT MaDon FROM inserted)
    )
    WHERE MaThuoc IN (
        SELECT MaThuoc FROM ChiTietDonThuoc WHERE MaDon IN (SELECT MaDon FROM inserted)
    );
END;
GO

-- Trigger phục hồi tồn kho khi xóa chi tiết đơn thuốc
CREATE OR ALTER TRIGGER trg_PhucHoiTonKhoSauXoa
ON ChiTietDonThuoc
AFTER DELETE
AS
BEGIN
    UPDATE Thuoc
    SET SoLuongTon = SoLuongTon + (
        SELECT SUM(SoLuong) FROM deleted WHERE deleted.MaThuoc = Thuoc.MaThuoc
    )
    WHERE MaThuoc IN (SELECT MaThuoc FROM deleted);
END;
GO

-- Trigger tự động cập nhật HoaDon.TienBNPhaiTra khi HoaDon được chèn/ cập nhật
-- Giả sử TyLeTra (ví dụ 80) là phần trăm BHYT chi trả, nếu có MaBHYT
CREATE OR ALTER TRIGGER trg_CapNhatTienBNPhaiTra
ON HoaDon
AFTER INSERT, UPDATE
AS
BEGIN
    UPDATE HoaDon
    SET TienBNPhaiTra = 
        CASE 
            WHEN MaBHYT IS NOT NULL AND TyLeTra IS NOT NULL 
                THEN ROUND(TongTien * (100 - TyLeTra) / 100.0, 2)
            ELSE TongTien
        END
    WHERE MaHoaDon IN (SELECT MaHoaDon FROM inserted);
END;
GO

-- Trigger cập nhật HoaDon khi DonThuoc.TongTien thay đổi (synchronise)
CREATE OR ALTER TRIGGER trg_CapNhatHoaDonKhiDonThuocThayDoi
ON DonThuoc
AFTER UPDATE
AS
BEGIN
    UPDATE HoaDon
    SET TongTien = (
        SELECT ISNULL(DonThuoc.TongTien,0) + ISNULL( (SELECT SUM(SoLuong * (SELECT DonGia FROM DichVu WHERE DichVu.MaDV = ChiTietDichVu.MaDV)) FROM ChiTietDichVu WHERE ChiTietDichVu.MaHS = DonThuoc.MaHS), 0 )
    )
    WHERE HoaDon.MaHS IN (SELECT MaHS FROM inserted);
    
    -- Sau khi cập nhật TongTien, cập nhật TienBNPhaiTra theo trigger trg_CapNhatTienBNPhaiTra tự động thực thi.
END;
GO

-- Trigger cập nhật HoaDon khi ChiTietDichVu thay đổi (thêm/sửa/xóa)
CREATE OR ALTER TRIGGER trg_CapNhatHoaDonKhiDichVuThayDoi
ON ChiTietDichVu
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    UPDATE HoaDon
    SET TongTien = (
        SELECT ISNULL((SELECT TongTien FROM DonThuoc WHERE DonThuoc.MaHS = HoaDon.MaHS), 0) 
               + ISNULL((SELECT SUM(SoLuong * (SELECT DonGia FROM DichVu WHERE DichVu.MaDV = ChiTietDichVu.MaDV)) FROM ChiTietDichVu WHERE ChiTietDichVu.MaHS = HoaDon.MaHS), 0)
    )
    WHERE HoaDon.MaHS IN (
        SELECT MaHS FROM inserted
        UNION
        SELECT MaHS FROM deleted
    );
END;
GO


-- VIEW

CREATE OR ALTER VIEW DonThuocBenhNhan AS
SELECT 
    DonThuoc.MaDon,
    DonThuoc.NgayKeDon,
    (SELECT HoTen FROM BenhNhan WHERE BenhNhan.MaBN = (
        SELECT MaBN FROM HoSoKham WHERE HoSoKham.MaHS = DonThuoc.MaHS
    )) AS TenBenhNhan,
    (SELECT HoTen FROM BacSi WHERE BacSi.MaBS = DonThuoc.MaBS) AS TenBacSi,
    (SELECT TenThuoc FROM Thuoc WHERE Thuoc.MaThuoc = ChiTietDonThuoc.MaThuoc) AS TenThuoc,
    ChiTietDonThuoc.SoLuong,
    ChiTietDonThuoc.DonGia,
    ChiTietDonThuoc.ThanhTien,
    DonThuoc.GhiChu
FROM DonThuoc, ChiTietDonThuoc
WHERE DonThuoc.MaDon = ChiTietDonThuoc.MaDon;
GO

CREATE OR ALTER VIEW LichSuKhamBenhNhan AS
SELECT 
    BenhNhan.MaBN,
    BenhNhan.HoTen AS TenBenhNhan,
    HoSoKham.MaHS AS MaHoSoKham,
    HoSoKham.NgayKham,
    (SELECT HoTen FROM BacSi WHERE BacSi.MaBS = HoSoKham.MaBS) AS TenBacSi,
    (SELECT TenBenh FROM Benh WHERE Benh.MaBenh = HoSoKham.MaBenh) AS ChanDoan,
    HoSoKham.TrieuChung,
    HoSoKham.ChanDoan AS MoTaChanDoan
FROM HoSoKham, BenhNhan
WHERE BenhNhan.MaBN = HoSoKham.MaBN;
GO

CREATE OR ALTER VIEW vw_DoanhThuTheoNgay AS
SELECT 
    HoSoKham.NgayKham AS Ngay,
    (SELECT SUM(TongTien) FROM HoaDon WHERE CONVERT(DATE, HoaDon.NgayLap) = CONVERT(DATE, HoSoKham.NgayKham)) AS TongDoanhThuNgay
FROM HoSoKham
GROUP BY HoSoKham.NgayKham;
GO

-- PROCEDURE

CREATE OR ALTER PROCEDURE sp_ThemDonThuoc
    @MaHS INT,
    @MaBS INT,
    @NgayKeDon DATE,
    @GhiChu NVARCHAR(255)
AS
BEGIN
    INSERT INTO DonThuoc (MaHS, MaBS, NgayKeDon, GhiChu)
    VALUES (@MaHS, @MaBS, @NgayKeDon, @GhiChu);
END;
GO

CREATE OR ALTER PROCEDURE sp_ThemChiTietDonThuoc
    @MaDon INT,
    @MaThuoc INT,
    @SoLuong INT,
    @DonGia DECIMAL(18,2)
AS
BEGIN
    INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, SoLuong, DonGia)
    VALUES (@MaDon, @MaThuoc, @SoLuong, @DonGia);

    -- Cập nhật TongTien của DonThuoc bằng trigger trg_CapNhatTongTienDonThuoc sẽ xử lý
END;
GO

CREATE OR ALTER PROCEDURE sp_ThemDichVuChoHoSo
    @MaHS INT,
    @MaDV INT,
    @SoLuong INT
AS
BEGIN
    DECLARE @DonGia DECIMAL(18,2);
    SELECT @DonGia = DonGia FROM DichVu WHERE MaDV = @MaDV;

    INSERT INTO ChiTietDichVu (MaHS, MaDV, SoLuong, ThanhTien)
    VALUES (@MaHS, @MaDV, @SoLuong, @SoLuong * @DonGia);
END;
GO

CREATE OR ALTER PROCEDURE sp_TaoHoaDonDayDu
    @MaHS INT,
    @MaBN INT,
    @NgayLap DATE
AS
BEGIN
    DECLARE @TongThuoc DECIMAL(18,2);
    DECLARE @TongDichVu DECIMAL(18,2);
    DECLARE @TongTien DECIMAL(18,2);
    DECLARE @MaBHYT NVARCHAR(20);
    DECLARE @TyLeTra DECIMAL(5,2);

    SELECT @TongThuoc = TongTien FROM DonThuoc WHERE MaHS = @MaHS;
    SELECT @TongDichVu = dbo.fn_TinhTongDichVu(@MaHS);

    SELECT @MaBHYT = MaBHYT FROM BenhNhan WHERE MaBN = @MaBN;
    SELECT @TyLeTra = TyLeTra FROM BaoHiemYTe WHERE MaBHYT = @MaBHYT;

    SET @TongTien = ISNULL(@TongThuoc,0) + ISNULL(@TongDichVu,0);

    INSERT INTO HoaDon (MaHS, MaBN, NgayLap, TongTien, MaBHYT, TyLeTra, TienBNPhaiTra)
    VALUES (@MaHS, @MaBN, @NgayLap, @TongTien, @MaBHYT, @TyLeTra, @TongTien);
END;
GO

CREATE OR ALTER PROCEDURE sp_ThanhToanHoaDon
    @MaHoaDon INT,
    @SoTienThu DECIMAL(18,2),
    @PhuongThuc NVARCHAR(50)
AS
BEGIN
    INSERT INTO ThanhToan (MaHoaDon, NgayThanhToan, SoTien, PhuongThuc)
    VALUES (@MaHoaDon, GETDATE(), @SoTienThu, @PhuongThuc);

    -- Nếu thanh toán, ta có thể cập nhật trạng thái hoặc số tiền còn nợ trong bảng HoaDon tùy mở rộng
END;
GO

CREATE OR ALTER PROCEDURE sp_ThongKeBenhPhoBien
    @TuNgay DATE,
    @DenNgay DATE
AS
BEGIN
    SELECT TOP 5 
        (SELECT TenBenh FROM Benh WHERE Benh.MaBenh = HoSoKham.MaBenh) AS TenBenh,
        COUNT(MaBenh) AS SoLuot
    FROM HoSoKham
    WHERE NgayKham BETWEEN @TuNgay AND @DenNgay
    GROUP BY MaBenh
    ORDER BY SoLuot DESC;
END;
GO

CREATE OR ALTER PROCEDURE sp_ThongKeThuocBanRa
    @TuNgay DATE,
    @DenNgay DATE
AS
BEGIN
    SELECT 
        MaThuoc,
        SUM(SoLuong) AS TongSoLuong,
        SUM(SoLuong * DonGia) AS TongDoanhThu
    FROM ChiTietDonThuoc
    WHERE MaDon IN (
        SELECT MaDon FROM DonThuoc WHERE NgayKeDon BETWEEN @TuNgay AND @DenNgay
    )
    GROUP BY MaThuoc
    ORDER BY TongSoLuong DESC;
END;
GO

CREATE OR ALTER PROCEDURE sp_ThongKeDoanhThuTongHop
    @TuNgay DATE,
    @DenNgay DATE
AS
BEGIN
    DECLARE @DoanhThuThuoc DECIMAL(18,2);
    DECLARE @DoanhThuDichVu DECIMAL(18,2);

    SELECT @DoanhThuThuoc = SUM(TongTien) FROM DonThuoc WHERE MaHS IN (
        SELECT MaHS FROM HoSoKham WHERE NgayKham BETWEEN @TuNgay AND @DenNgay
    );

    SELECT @DoanhThuDichVu = SUM(SoLuong * (SELECT DonGia FROM DichVu WHERE DichVu.MaDV = ChiTietDichVu.MaDV))
    FROM ChiTietDichVu
    WHERE MaHS IN (SELECT MaHS FROM HoSoKham WHERE NgayKham BETWEEN @TuNgay AND @DenNgay);

    SELECT ISNULL(@DoanhThuThuoc,0) + ISNULL(@DoanhThuDichVu,0) AS TongDoanhThu;
END;
GO

-- view hiển thị hóa đơn chi tiết (thuốc + dịch vụ) 

CREATE OR ALTER VIEW vw_HoaDonChiTiet AS
SELECT 
    HoaDon.MaHoaDon,
    HoaDon.NgayLap,
    HoaDon.TongTien,
    HoaDon.TienBNPhaiTra,
    (SELECT HoTen FROM BenhNhan WHERE BenhNhan.MaBN = HoaDon.MaBN) AS TenBenhNhan,
    (SELECT TenBenh FROM Benh WHERE Benh.MaBenh = (SELECT MaBenh FROM HoSoKham WHERE HoSoKham.MaHS = HoaDon.MaHS)) AS ChanDoan
FROM HoaDon;
GO