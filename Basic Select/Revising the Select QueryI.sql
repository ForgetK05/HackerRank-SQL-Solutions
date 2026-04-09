/*
[VI] TAI LIEU HUONG DAN + GIAI THICH CHI TIET
Bai: Revising the Select QueryI
File: E:\HackerRank-SQL-Solutions\Basic Select\Revising the Select QueryI.sql

1) Muc tieu:
- Truy van nay giai bai toan 'Revising the Select QueryI' tren HackerRank.

2) Cach su dung:
- Mo file trong SQL client (MySQL/PostgreSQL/SQL Server/Oracle tuy bai).
- Dam bao schema + du lieu mau giong de bai HackerRank.
- Chay toan bo script va doi chieu ket qua voi output mong doi.

3) Thuat ngu chuyen nganh (giu nguyen tieng Anh) + chu thich:
- SELECT: Từ khóa truy vấn để chọn dữ liệu.
- FROM: Xác định bảng nguồn.
- WHERE: Điều kiện lọc dữ liệu.

4) Giai thich tung dong lenh trong file:
- Dòng 1: SELECT: Chọn các cột/biểu thức cần trả về trong kết quả.
- Dòng 2: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 3: WHERE: Lọc các bản ghi theo điều kiện.
*/
select * 
from city 
where population >100000 and countrycode ='USA';
