/*
[VI] TAI LIEU HUONG DAN + GIAI THICH CHI TIET
Bai: The PADS
File: E:\HackerRank-SQL-Solutions\Advanced Select\The PADS.sql

1) Muc tieu:
- Truy van nay giai bai toan 'The PADS' tren HackerRank.

2) Cach su dung:
- Mo file trong SQL client (MySQL/PostgreSQL/SQL Server/Oracle tuy bai).
- Dam bao schema + du lieu mau giong de bai HackerRank.
- Chay toan bo script va doi chieu ket qua voi output mong doi.

3) Thuat ngu chuyen nganh (giu nguyen tieng Anh) + chu thich:
- SELECT: Từ khóa truy vấn để chọn dữ liệu.
- FROM: Xác định bảng nguồn.
- GROUP BY: Nhóm dữ liệu để tổng hợp.
- ORDER BY: Sắp xếp kết quả.

4) Giai thich tung dong lenh trong file:
- Dòng 1: SELECT: Chọn các cột/biểu thức cần trả về trong kết quả.
- Dòng 2: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 3: ORDER BY: Sắp xếp kết quả theo cột/biểu thức chỉ định.
- Dòng 4: SELECT: Chọn các cột/biểu thức cần trả về trong kết quả.
- Dòng 5: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 6: GROUP BY: Gom nhóm bản ghi để dùng hàm tổng hợp.
- Dòng 7: ORDER BY: Sắp xếp kết quả theo cột/biểu thức chỉ định.
*/
SELECT CONCAT(NAME,'(',LEFT(OCCUPATION,1),')')
FROM OCCUPATIONS
ORDER BY NAME;
SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(OCCUPATION),'s.')
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(*), OCCUPATION;

