/*
[VI] TAI LIEU HUONG DAN + GIAI THICH CHI TIET
Bai: Type of Triangle
File: E:\HackerRank-SQL-Solutions\Advanced Select\Type of Triangle.sql

1) Muc tieu:
- Truy van nay giai bai toan 'Type of Triangle' tren HackerRank.

2) Cach su dung:
- Mo file trong SQL client (MySQL/PostgreSQL/SQL Server/Oracle tuy bai).
- Dam bao schema + du lieu mau giong de bai HackerRank.
- Chay toan bo script va doi chieu ket qua voi output mong doi.

3) Thuat ngu chuyen nganh (giu nguyen tieng Anh) + chu thich:
- SELECT: Từ khóa truy vấn để chọn dữ liệu.
- FROM: Xác định bảng nguồn.

4) Giai thich tung dong lenh trong file:
- Dòng 1: SELECT: Chọn các cột/biểu thức cần trả về trong kết quả.
- Dòng 2: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
*/
SELECT IF(A+B<=C OR B+C<=A OR C+B<=B,'Not A Triangle', IF(A = B AND B = C,'Equilateral',IF(A=B OR B=C OR C=A,'Isosceles','Scalene')))
FROM TRIANGLES;
