# BÀI LÀM – THI THỬ HACKATHON 01

- **Mã đề:** Thi thử
- **Họ tên:** Mai Đình Long Bình
- **Lớp:** CNTT2
- **Link repository:** [https://github.com/binhbinh87200/HN-KS26-CNTT2\_Nhap-mon-CNTT\_ThiThu](https://github.com/binhbinh87200/HN-KS26-CNTT2_Nhap-mon-CNTT_ThiThu)
- **Hệ điều hành (Windows/macOS): Windows**

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
B1 : pwd
B2 : ls -Force -Recurse
B3 : mv nhap_hang.txt docs
     mv logo_van_phong_pham.png media 
B4 : cp media/logo_van_phong_pham.png backup
B5 : rm *.tmp
B6 : cd logs
     ls
     cd ..

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
 Directory: C:\Users\ThinkPad\Downloads\starter-kit\van-phong-pham-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/23/2026  11:07 AM                backup
d-----        10/23/2026  11:09 AM                data
d-----        10/23/2026  11:11 AM                docs
d-----        10/23/2026  11:09 AM                logs
d-----        10/23/2026  11:12 AM                media
-a----        10/23/2026  11:10 AM              0 .env
-a----        10/23/2026  11:05 AM           2357 bai_lam.md
------        10/19/2026   9:41 AM             22 temp_131.tmp


    Directory: C:\Users\ThinkPad\Downloads\starter-kit\van-phong-pham-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/19/2026   9:41 AM           6105 don_ban_thang_10.xlsx


    Directory: C:\Users\ThinkPad\Downloads\starter-kit\van-phong-pham-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/19/2026   9:41 AM             51 nhap_hang.txt


    Directory: C:\Users\ThinkPad\Downloads\starter-kit\van-phong-pham-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/19/2026   9:41 AM           1053 shop.log


    Directory: C:\Users\ThinkPad\Downloads\starter-kit\van-phong-pham-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/19/2026   9:41 AM           6053 logo_van_phong_pham.png

```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
 gc logs/shop.log| sls "error" | Add-content logs/daily_report.txt

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2025-10-28 08:24:28 [ERROR] Thanh toan bi tu choi
2025-10-28 08:30:28 [ERROR] Thanh toan bi tu choi


```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] Heading 1: tên dự án

- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*

- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu

- [x] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án

- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành

- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
./auto_report.ps1

```

### Nội dung file logs/auto_report.txt

```text
# Script: auto_report.ps1

# Tac gia: "long bình"

# Ngay tao: 23/10/2026

 

Write-Host "Dang loc log..."

 

"=== BAO CAO LOI ===" >  logs/daily_report.txt

Get-Content logs/shop.log | Select-String "error" >> logs/daily_report.txt

 

Write-Host "Hoan thanh!"

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
 gc logs/shop.log| sls "error" | Measure-object -Line

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
6

```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
em không chạy từng dòng lệnh một mà đã tạo một file tong_hop.ps1
./tong_hop.ps1
nội dung : 
# Script: tong_hop.ps1

# Tac gia: "long bình"

# Ngay tao: 23/10/2026

 

Write-Host "Dang loc log..."

 

"=== TONG HOP LOG ===" >  logs/tong_hop.txt

Get-Content logs/shop.log | Select-String "warning" >> logs/tong_hop.txt
Get-Content logs/shop.log | Select-String "error" >> logs/tong_hop.txt

 

Write-Host "Hoan thanh!"
```

### Nội dung file logs/tong_hop.txt

```text
=== TONG HOP LOG ===

2025-10-28 08:51:28 [WARNING] Thoi gian tai trang cham
2025-10-28 08:54:28 [WARNING] Anh san pham dung luong lon
2025-10-28 08:57:28 [WARNING] Thoi gian tai trang cham



2025-10-28 08:24:28 [ERROR] Thanh toan bi tu choi
2025-10-28 08:30:28 [ERROR] Thanh toan bi tu choi
2025-10-28 08:33:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 08:39:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 08:42:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 09:12:28 [ERROR] Thanh toan bi tu choi




```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/don_ban_thang_10.xlsx`, không cần ghi vào đây.
