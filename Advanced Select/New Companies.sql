/*
[VI] TAI LIEU HUONG DAN + GIAI THICH CHI TIET
Bai: New Companies
File: E:\HackerRank-SQL-Solutions\Advanced Select\New Companies.sql

1) Muc tieu:
- Truy van nay giai bai toan 'New Companies' tren HackerRank.

2) Cach su dung:
- Mo file trong SQL client (MySQL/PostgreSQL/SQL Server/Oracle tuy bai).
- Dam bao schema + du lieu mau giong de bai HackerRank.
- Chay toan bo script va doi chieu ket qua voi output mong doi.

3) Thuat ngu chuyen nganh (giu nguyen tieng Anh) + chu thich:
- SELECT: Từ khóa truy vấn để chọn dữ liệu.
- FROM: Xác định bảng nguồn.
- JOIN: Ghép bảng dựa trên quan hệ khóa.
- GROUP BY: Nhóm dữ liệu để tổng hợp.
- ORDER BY: Sắp xếp kết quả.

4) Giai thich tung dong lenh trong file:
- Dòng 1: SELECT: Chọn các cột/biểu thức cần trả về trong kết quả.
- Dòng 2: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 3: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 4: COUNT(): Đếm số dòng hoặc số giá trị khác NULL.
- Dòng 5: COUNT(): Đếm số dòng hoặc số giá trị khác NULL.
- Dòng 6: COUNT(): Đếm số dòng hoặc số giá trị khác NULL.
- Dòng 7: COUNT(): Đếm số dòng hoặc số giá trị khác NULL.
- Dòng 8: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 9: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 10: JOIN: Kết hợp dữ liệu giữa nhiều bảng theo quan hệ khóa.
- Dòng 11: JOIN: Kết hợp dữ liệu giữa nhiều bảng theo quan hệ khóa.
- Dòng 12: JOIN: Kết hợp dữ liệu giữa nhiều bảng theo quan hệ khóa.
- Dòng 13: JOIN: Kết hợp dữ liệu giữa nhiều bảng theo quan hệ khóa.
- Dòng 14: GROUP BY: Gom nhóm bản ghi để dùng hàm tổng hợp.
- Dòng 15: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 16: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 17: ORDER BY: Sắp xếp kết quả theo cột/biểu thức chỉ định.
- Dòng 18: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
*/
SELECT      
    C.COMPANY_CODE,
    C.FOUNDER,
    COUNT(DISTINCT LM.LEAD_MANAGER_CODE) AS NUM_LEAD_MANAGERS,
    COUNT(DISTINCT SM.SENIOR_MANAGER_CODE) AS NUM_SENIOR_MANAGERS,
    COUNT(DISTINCT M.MANAGER_CODE) AS NUM_MANAGERS,
    COUNT(DISTINCT E.EMPLOYEE_CODE) AS NUM_EMPLOYEES
FROM 
    COMPANY C
    JOIN LEAD_MANAGER LM ON C.COMPANY_CODE = LM.COMPANY_CODE
    JOIN SENIOR_MANAGER SM ON LM.LEAD_MANAGER_CODE = SM.LEAD_MANAGER_CODE
    JOIN MANAGER M ON SM.SENIOR_MANAGER_CODE = M.SENIOR_MANAGER_CODE
    JOIN EMPLOYEE E ON M.MANAGER_CODE = E.MANAGER_CODE
GROUP BY 
    C.COMPANY_CODE, 
    C.FOUNDER
ORDER BY 
    C.COMPANY_CODE;

