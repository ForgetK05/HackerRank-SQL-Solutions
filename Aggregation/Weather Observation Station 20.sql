/*
[VI] TAI LIEU HUONG DAN + GIAI THICH CHI TIET
Bai: Weather Observation Station 20
File: E:\HackerRank-SQL-Solutions\Aggregation\Weather Observation Station 20.sql

1) Muc tieu:
- Truy van nay giai bai toan 'Weather Observation Station 20' tren HackerRank.

2) Cach su dung:
- Mo file trong SQL client (MySQL/PostgreSQL/SQL Server/Oracle tuy bai).
- Dam bao schema + du lieu mau giong de bai HackerRank.
- Chay toan bo script va doi chieu ket qua voi output mong doi.

3) Thuat ngu chuyen nganh (giu nguyen tieng Anh) + chu thich:
- SELECT: Từ khóa truy vấn để chọn dữ liệu.
- FROM: Xác định bảng nguồn.
- WHERE: Điều kiện lọc dữ liệu.
- ORDER BY: Sắp xếp kết quả.

4) Giai thich tung dong lenh trong file:
- Dòng 1: SELECT: Chọn các cột/biểu thức cần trả về trong kết quả.
- Dòng 2: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 3: SELECT: Chọn các cột/biểu thức cần trả về trong kết quả.
- Dòng 4: COUNT(): Đếm số dòng hoặc số giá trị khác NULL.
- Dòng 5: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 6: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
*/
SELECT ROUND(AVG(LAT_N),4) AS MEDIAN
FROM (
    SELECT LAT_N, ROW_NUMBER() OVER (ORDER BY LAT_N) ROW_NUM,
    COUNT(*) OVER() TOTAL_COUNT FROM STATION
)
NUMBERED_ROWS WHERE ROW_NUM IN ((TOTAL_COUNT+1)/2,(TOTAL_COUNT+2)/2);
