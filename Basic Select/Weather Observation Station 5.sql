/*
[VI] TAI LIEU HUONG DAN + GIAI THICH CHI TIET
Bai: Weather Observation Station 5
File: E:\HackerRank-SQL-Solutions\Basic Select\Weather Observation Station 5.sql

1) Muc tieu:
- Truy van nay giai bai toan 'Weather Observation Station 5' tren HackerRank.

2) Cach su dung:
- Mo file trong SQL client (MySQL/PostgreSQL/SQL Server/Oracle tuy bai).
- Dam bao schema + du lieu mau giong de bai HackerRank.
- Chay toan bo script va doi chieu ket qua voi output mong doi.

3) Thuat ngu chuyen nganh (giu nguyen tieng Anh) + chu thich:
- SELECT: Từ khóa truy vấn để chọn dữ liệu.
- FROM: Xác định bảng nguồn.
- ORDER BY: Sắp xếp kết quả.
- LIMIT: Giới hạn số dòng kết quả.

4) Giai thich tung dong lenh trong file:
- Dòng 1: SELECT: Chọn các cột/biểu thức cần trả về trong kết quả.
- Dòng 2: ORDER BY: Sắp xếp kết quả theo cột/biểu thức chỉ định.
- Dòng 3: LIMIT: Giới hạn số dòng trả về (thường dùng ở MySQL/PostgreSQL).
- Dòng 5: SELECT: Chọn các cột/biểu thức cần trả về trong kết quả.
- Dòng 6: ORDER BY: Sắp xếp kết quả theo cột/biểu thức chỉ định.
- Dòng 7: LIMIT: Giới hạn số dòng trả về (thường dùng ở MySQL/PostgreSQL).
*/
SELECT CITY, LENGTH(CITY) FROM STATION
ORDER BY LENGTH(CITY), CITY
LIMIT 1;

SELECT CITY, LENGTH(CITY) FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY
LIMIT 1;
