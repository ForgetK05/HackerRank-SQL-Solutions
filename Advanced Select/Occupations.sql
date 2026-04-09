/*
[VI] TAI LIEU HUONG DAN + GIAI THICH CHI TIET
Bai: Occupations
File: E:\HackerRank-SQL-Solutions\Advanced Select\Occupations.sql

1) Muc tieu:
- Truy van nay giai bai toan 'Occupations' tren HackerRank.

2) Cach su dung:
- Mo file trong SQL client (MySQL/PostgreSQL/SQL Server/Oracle tuy bai).
- Dam bao schema + du lieu mau giong de bai HackerRank.
- Chay toan bo script va doi chieu ket qua voi output mong doi.

3) Thuat ngu chuyen nganh (giu nguyen tieng Anh) + chu thich:
- SELECT: Từ khóa truy vấn để chọn dữ liệu.
- FROM: Xác định bảng nguồn.
- GROUP BY: Nhóm dữ liệu để tổng hợp.
- ORDER BY: Sắp xếp kết quả.
- CASE: Biểu thức điều kiện dạng nhiều nhánh.

4) Giai thich tung dong lenh trong file:
- Dòng 1: WITH (CTE): Tạo bảng tạm logic để tách nhỏ truy vấn và tăng tính dễ đọc.
- Dòng 2: SELECT: Chọn các cột/biểu thức cần trả về trong kết quả.
- Dòng 3: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 4: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 5: ROW_NUMBER(): Đánh số thứ tự dòng trong từng partition theo ORDER BY.
- Dòng 6: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 7: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 9: SELECT: Chọn các cột/biểu thức cần trả về trong kết quả.
- Dòng 10: MAX(): Lấy giá trị lớn nhất.
- Dòng 11: MAX(): Lấy giá trị lớn nhất.
- Dòng 12: MAX(): Lấy giá trị lớn nhất.
- Dòng 13: MAX(): Lấy giá trị lớn nhất.
- Dòng 14: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 15: GROUP BY: Gom nhóm bản ghi để dùng hàm tổng hợp.
- Dòng 16: ORDER BY: Sắp xếp kết quả theo cột/biểu thức chỉ định.
*/
WITH OccupationRank AS (
    SELECT 
        NAME, 
        OCCUPATION,
        ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME) AS RowNum
    FROM OCCUPATIONS
)

SELECT 
    MAX(CASE WHEN OCCUPATION = 'Doctor' THEN NAME END) AS Doctor,
    MAX(CASE WHEN OCCUPATION = 'Professor' THEN NAME END) AS Professor,
    MAX(CASE WHEN OCCUPATION = 'Singer' THEN NAME END) AS Singer,
    MAX(CASE WHEN OCCUPATION = 'Actor' THEN NAME END) AS Actor
FROM OccupationRank
GROUP BY RowNum
ORDER BY RowNum;

