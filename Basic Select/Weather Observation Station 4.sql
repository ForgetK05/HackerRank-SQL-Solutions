/*
[VI] TAI LIEU HUONG DAN + GIAI THICH CHI TIET
Bai: Weather Observation Station 4
File: E:\HackerRank-SQL-Solutions\Basic Select\Weather Observation Station 4.sql

1) Muc tieu:
- Truy van nay giai bai toan 'Weather Observation Station 4' tren HackerRank.

2) Cach su dung:
- Mo file trong SQL client (MySQL/PostgreSQL/SQL Server/Oracle tuy bai).
- Dam bao schema + du lieu mau giong de bai HackerRank.
- Chay toan bo script va doi chieu ket qua voi output mong doi.

3) Thuat ngu chuyen nganh (giu nguyen tieng Anh) + chu thich:
- SELECT: Từ khóa truy vấn để chọn dữ liệu.
- FROM: Xác định bảng nguồn.

4) Giai thich tung dong lenh trong file:
- Dòng 1: SELECT: Chọn các cột/biểu thức cần trả về trong kết quả.
- Dòng 2: COUNT(): Đếm số dòng hoặc số giá trị khác NULL.
- Dòng 3: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 4: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
*/
SELECT 
    COUNT(CITY) - COUNT(DISTINCT CITY) AS city_difference
FROM 
    STATION;
