/*
[VI] TAI LIEU HUONG DAN + GIAI THICH CHI TIET
Bai: Average Population of Each Continent
File: E:\HackerRank-SQL-Solutions\Basic Join\Average Population of Each Continent.sql

1) Muc tieu:
- Truy van nay giai bai toan 'Average Population of Each Continent' tren HackerRank.

2) Cach su dung:
- Mo file trong SQL client (MySQL/PostgreSQL/SQL Server/Oracle tuy bai).
- Dam bao schema + du lieu mau giong de bai HackerRank.
- Chay toan bo script va doi chieu ket qua voi output mong doi.

3) Thuat ngu chuyen nganh (giu nguyen tieng Anh) + chu thich:
- SELECT: Từ khóa truy vấn để chọn dữ liệu.
- FROM: Xác định bảng nguồn.
- JOIN: Ghép bảng dựa trên quan hệ khóa.
- GROUP BY: Nhóm dữ liệu để tổng hợp.

4) Giai thich tung dong lenh trong file:
- Dòng 1: SELECT: Chọn các cột/biểu thức cần trả về trong kết quả.
- Dòng 2: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 3: AVG(): Tính giá trị trung bình.
- Dòng 4: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 5: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 6: JOIN: Kết hợp dữ liệu giữa nhiều bảng theo quan hệ khóa.
- Dòng 7: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 8: GROUP BY: Gom nhóm bản ghi để dùng hàm tổng hợp.
- Dòng 9: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
*/
SELECT 
    COUNTRY.CONTINENT, 
    FLOOR(AVG(CITY.POPULATION))
FROM 
    CITY
JOIN 
    COUNTRY ON CITY.COUNTRYCODE=COUNTRY.CODE
GROUP BY 
    COUNTRY.CONTINENT;

