/*
[VI] TAI LIEU HUONG DAN + GIAI THICH CHI TIET
Bai: The Report
File: E:\HackerRank-SQL-Solutions\Basic Join\The Report.sql

1) Muc tieu:
- Truy van nay giai bai toan 'The Report' tren HackerRank.

2) Cach su dung:
- Mo file trong SQL client (MySQL/PostgreSQL/SQL Server/Oracle tuy bai).
- Dam bao schema + du lieu mau giong de bai HackerRank.
- Chay toan bo script va doi chieu ket qua voi output mong doi.

3) Thuat ngu chuyen nganh (giu nguyen tieng Anh) + chu thich:
- SELECT: Từ khóa truy vấn để chọn dữ liệu.
- FROM: Xác định bảng nguồn.
- WHERE: Điều kiện lọc dữ liệu.
- ORDER BY: Sắp xếp kết quả.
- CASE: Biểu thức điều kiện dạng nhiều nhánh.

4) Giai thich tung dong lenh trong file:
- Dòng 1: SELECT: Chọn các cột/biểu thức cần trả về trong kết quả.
- Dòng 2: CASE: Rẽ nhánh điều kiện để trả về giá trị theo từng trường hợp.
- Dòng 3: WHEN: Một nhánh điều kiện bên trong CASE.
- Dòng 4: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 5: WHERE: Lọc các bản ghi theo điều kiện.
- Dòng 6: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 7: ELSE: Giá trị mặc định khi các điều kiện WHEN không khớp.
- Dòng 8: END: Kết thúc khối CASE/PLSQL hiện tại.
- Dòng 9: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 10: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 11: WHERE: Lọc các bản ghi theo điều kiện.
- Dòng 12: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 13: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 14: ORDER BY: Sắp xếp kết quả theo cột/biểu thức chỉ định.
- Dòng 15: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 16: CASE: Rẽ nhánh điều kiện để trả về giá trị theo từng trường hợp.
- Dòng 17: WHEN: Một nhánh điều kiện bên trong CASE.
- Dòng 18: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 19: WHERE: Lọc các bản ghi theo điều kiện.
- Dòng 20: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 21: ELSE: Giá trị mặc định khi các điều kiện WHEN không khớp.
- Dòng 22: END: Kết thúc khối CASE/PLSQL hiện tại.
*/
SELECT 
    CASE 
        WHEN (SELECT GRADE
              FROM GRADES
              WHERE MIN_MARK <= S.MARKS AND MAX_MARK >= S.MARKS) >= 8
        THEN S.NAME
        ELSE 'NULL'
    END AS NAME,
    (SELECT GRADE
     FROM GRADES
     WHERE MIN_MARK <= S.MARKS AND MAX_MARK >= S.MARKS) AS GRADE,
    S.MARKS
FROM STUDENTS S
ORDER BY 
    GRADE DESC, 
    CASE 
        WHEN (SELECT GRADE
              FROM GRADES
              WHERE MIN_MARK <= S.MARKS AND MAX_MARK >= S.MARKS) >= 8
        THEN S.NAME
        ELSE S.MARKS
    END ASC;

