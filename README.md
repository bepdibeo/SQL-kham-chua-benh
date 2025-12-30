# CƠ SỞ DỮ LIỆU “QUẢN LÝ KHÁM CHỮA BỆNH”
## 15 bảng: Khoa, PhongKham, BacSi, BenhNhan, Benh, LichKham, Thuoc, DonThuoc, ChiTietDonThuoc, DichVu, ChiTietDichVu, HoSoKham, HoaDon, ThanhToan, BaoHiemYTe
---

## 1. Giới thiệu
Dự án là hệ thống cơ sở dữ liệu phục vụ cho hoạt động quản lý tại cơ sở y tế (phòng khám / bệnh viện), gồm:
* Quản lý bệnh nhân, bác sĩ, hồ sơ khám
* Quản lý đơn thuốc, thuốc, dịch vụ y tế
* Quản lý bảo hiểm y tế (BHYT)
* Quản lý hóa đơn và thanh toán
* Quản lý lịch khám

Dự án phục vụ môn Hệ quản trị Cơ sở dữ liệu, tập trung vào:
* Thiết kế CSDL quan hệ
* Ràng buộc 
* Trigger, Function, Procedure
* Nghiệp vụ y tế
---

## 2. Công nghệ sử dụng
* **Hệ quản trị CSDL:** Microsoft SQL Server
* **Môi trường phát triển:** SQL Server Management Studio (SSMS)
* **Ngôn ngữ:** T-SQL
---

## 3. Hướng dẫn chạy dự án

### 3.1 Yêu cầu
* Đã cài **SQL Server**
* Đã cài **SQL Server Management Studio (SSMS)**
---

### 3.2 Các bước chạy
#### Bước 1: Mở SSMS
Kết nối tới SQL Server
#### Bước 2: Mở file `RunAll.sql`
* Chuột phải → **Open With → SSMS**
* Hoặc mở trong SSMS: `File → Open → File`
#### Bước 3: Chạy file
* Nhấn **Execute / F5** 

File `RunAll.sql` sẽ tự động:
* Tạo database 
* Tạo bảng
* Tạo function
* Tạo procedure
* Tạo trigger
* Tạo view
* Tạo index
---

## 4. Một số nghiệp vụ tiêu biểu

### Quản lý bảo hiểm y tế (BHYT)

* Mỗi bệnh nhân có thể có hoặc không có BHYT
* Tỷ lệ chi trả được áp dụng khi tính hóa đơn
* Công thức:
```
TienBNPhaiTra = TongTien * (100 - TyLeBHYT) / 100
```
---

### Quản lý kho thuốc
* Trigger tự động:
  * Giảm tồn kho khi kê đơn
  * Xử lý INSERT và UPDATE dữ liệu
  * Hoàn trả kho nếu giảm số lượng
---

### Quản lý lịch khám

* Không cho phép bác sĩ có 2 lịch trùng giờ bằng trigger
* Procedure đặt lịch và cập nhật trạng thái
