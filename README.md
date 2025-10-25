# CƠ SỞ DỮ LIỆU “QUẢN LÝ KHÁM CHỮA BỆNH”
Bao gồm: quản lý bệnh nhân, bác sĩ, lịch hẹn, hóa đơn thanh toán, kho thuốc, đơn thuốc.

## Bảng: Bệnh nhân (BenhNhan)
Chức năng: Lưu trữ thông tin cá nhân và bảo hiểm của từng bệnh nhân.

Các thuộc tính:
- `id` (Khóa chính): Mã định danh duy nhất cho mỗi bệnh nhân.
- `ten`: Họ tên đầy đủ của bệnh nhân.
- `ngaysinh`: Ngày sinh của bệnh nhân.
- `gioitinh`: Giới tính của bệnh nhân.
- `diachi`: Địa chỉ nơi cư trú.
- `dienthoai`: Số điện thoại liên hệ.
- `baohiem`: Thông tin bảo hiểm y tế (nếu có).

## Bảng: Bác sĩ (BacSi)
Chức năng: Lưu trữ thông tin cá nhân, chuyên khoa, lịch làm việc của các bác sĩ.

Các thuộc tính:

- `id` (Khóa chính): Mã định danh duy nhất cho mỗi bác sĩ.
- `ten`: Họ tên đầy đủ của bác sĩ.
- `chuyenkhoa`: Chuyên khoa của bác sĩ (ví dụ: Nội, Nhi, Tai–Mũi–Họng...).

Mỗi bác sĩ có thể đảm nhận nhiều lịch hẹn và kê nhiều đơn thuốc khác nhau.

## Bảng: Lịch hẹn (LichHen)
Chức năng: Quản lý các cuộc hẹn giữa bệnh nhân và bác sĩ, bao gồm thời gian và trạng thái của lịch hẹn.

Các thuộc tính:
- `id` (Khóa chính): Mã định danh duy nhất cho mỗi lịch hẹn.
- `id_benhnhan` (Khóa ngoại, tham chiếu `BenhNhan.id`): Mã bệnh nhân có lịch hẹn.
- `id_bacsi` (Khóa ngoại, tham chiếu `BacSi.id`): Mã bác sĩ thực hiện buổi khám.
- `ngayhen`: Ngày và giờ hẹn khám.
- `trangthai`: Tình trạng của lịch hẹn (ví dụ: “Đã đặt”, “Đã hủy”, “Đã hoàn thành”).

Quan hệ:
- Một bệnh nhân có thể có nhiều lịch hẹn.
- Một bác sĩ- cũng có thể có nhiều lịch hẹn.

## Bảng: Hóa đơn (HoaDon)
Chức năng: Quản lý các hóa đơn và giao dịch thanh toán cho dịch vụ khám chữa bệnh.

Các thuộc tính:
- `id` (Khóa chính): Mã định danh duy nhất của mỗi hóa đơn.
- `id_benhnhan` (Khóa ngoại, tham chiếu `BenhNhan.id`): Mã bệnh nhân được lập hóa đơn.
- `sotien`: Số tiền cần thanh toán.
- `ngaylap`: Ngày lập hóa đơn.
- `trangthai`: Trạng thái thanh toán (ví dụ: “Đã thanh toán”, “Chưa thanh toán”).

Quan hệ:
- Một bệnh nhân có thể có nhiều hóa đơn trong hệ thống.

## Bảng: Kho thuốc (KhoThuoc)

Chức năng: Quản lý danh mục thuốc, vật tư y tế và số lượng tồn kho.

Các thuộc tính:
- `id` (Khóa chính): Mã định danh duy nhất cho mỗi loại thuốc hoặc vật tư.
- `tenhang`: Tên thuốc hoặc sản phẩm y tế.
- `soluong`: Số lượng hiện có trong kho.
- `hansudung`: Hạn sử dụng của thuốc (nếu có).

## Bảng: Đơn thuốc (DonThuoc)

Chức năng: Lưu thông tin các đơn thuốc được bác sĩ kê cho bệnh nhân.

Các thuộc tính:
- `id` (Khóa chính): Mã định danh duy nhất cho đơn thuốc.
- `id_benhnhan` (Khóa ngoại, tham chiếu `BenhNhan.id`): Bệnh nhân được kê đơn.
- `id_bacsi` (Khóa ngoại, tham chiếu `BacSi.id`): Bác sĩ kê đơn.
- `ngaylap`: Ngày lập đơn thuốc.
- `ghichu`: Ghi chú thêm (nếu có).

Quan hệ:
- Một bệnh nhân có thể có nhiều đơn thuốc.
- Một bác sĩ có thể kê nhiều đơn thuốc.

## Bảng: Chi tiết đơn thuốc (ChiTietDonThuoc)

Chức năng: Lưu thông tin chi tiết về các loại thuốc trong mỗi đơn thuốc.

Các thuộc tính:
- `id` (Khóa chính): Mã định danh duy nhất cho mỗi dòng chi tiết trong đơn.
- `id_donthuoc` (Khóa ngoại, tham chiếu `DonThuoc.id`): Đơn thuốc chứa dòng thuốc này.
- `id_thuoc` (Khóa ngoại, tham chiếu `KhoThuoc.id`): Thuốc được kê trong đơn.
- `soluong`: Số lượng thuốc cần dùng.
- `lieudung`: Liều lượng hoặc hướng dẫn sử dụng.

Quan hệ:
- Một đơn thuốc có thể gồm nhiều chi tiết thuốc.
- Mỗi chi tiết thuốc liên kết với một thuốc cụ thể trong kho.

## Mối quan hệ giữa các bảng

Bệnh nhân – Lịch hẹn           : 1 – N   : Mỗi bệnh nhân có thể đặt nhiều lịch hẹn với các bác sĩ khác nhau.          
Bệnh nhân – Hóa đơn            : 1 – N   : Mỗi bệnh nhân có thể có nhiều hóa đơn dịch vụ khác nhau.                  
Bác sĩ – Lịch hẹn              : 1 – N   : Mỗi bác sĩ có thể có nhiều lịch hẹn với các bệnh nhân.                     
Bác sĩ – Đơn thuốc             : 1 – N   : Mỗi bác sĩ có thể kê nhiều đơn thuốc.                                      
Bệnh nhân – Đơn thuốc          : 1 – N   : Mỗi bệnh nhân có thể được kê nhiều đơn thuốc.                              
Đơn thuốc – Chi tiết đơn thuốc : 1 – N   : Mỗi đơn thuốc có thể gồm nhiều loại thuốc.                                 
Kho thuốc – Chi tiết đơn thuốc : 1 – N   : Mỗi loại thuốc trong kho có thể xuất hiện trong nhiều đơn thuốc khác nhau. 
