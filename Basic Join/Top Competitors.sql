/*
[VI] TAI LIEU HUONG DAN + GIAI THICH CHI TIET
Bai: Top Competitors
File: E:\HackerRank-SQL-Solutions\Basic Join\Top Competitors.sql

1) Muc tieu:
- Truy van nay giai bai toan 'Top Competitors' tren HackerRank.

2) Cach su dung:
- Mo file trong SQL client (MySQL/PostgreSQL/SQL Server/Oracle tuy bai).
- Dam bao schema + du lieu mau giong de bai HackerRank.
- Chay toan bo script va doi chieu ket qua voi output mong doi.

3) Thuat ngu chuyen nganh (giu nguyen tieng Anh) + chu thich:
- SELECT: Từ khóa truy vấn để chọn dữ liệu.
- FROM: Xác định bảng nguồn.
- WHERE: Điều kiện lọc dữ liệu.
- JOIN: Ghép bảng dựa trên quan hệ khóa.
- GROUP BY: Nhóm dữ liệu để tổng hợp.
- HAVING: Lọc sau khi nhóm.
- ORDER BY: Sắp xếp kết quả.

4) Giai thich tung dong lenh trong file:
- Dòng 1: SELECT: Chọn các cột/biểu thức cần trả về trong kết quả.
- Dòng 2: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 3: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 4: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 5: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 6: JOIN: Kết hợp dữ liệu giữa nhiều bảng theo quan hệ khóa.
- Dòng 7: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 8: JOIN: Kết hợp dữ liệu giữa nhiều bảng theo quan hệ khóa.
- Dòng 9: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 10: JOIN: Kết hợp dữ liệu giữa nhiều bảng theo quan hệ khóa.
- Dòng 11: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 12: WHERE: Lọc các bản ghi theo điều kiện.
- Dòng 13: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 14: GROUP BY: Gom nhóm bản ghi để dùng hàm tổng hợp.
- Dòng 15: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 16: HAVING: Lọc các nhóm sau khi GROUP BY.
- Dòng 17: COUNT(): Đếm số dòng hoặc số giá trị khác NULL.
- Dòng 18: ORDER BY: Sắp xếp kết quả theo cột/biểu thức chỉ định.
- Dòng 19: COUNT(): Đếm số dòng hoặc số giá trị khác NULL.
- Dòng 20: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
*/
SELECT 
    H.HACKER_ID, 
    H.NAME
FROM 
    SUBMISSIONS S 
JOIN 
    CHALLENGES C ON S.CHALLENGE_ID = C.CHALLENGE_ID
JOIN 
    DIFFICULTY D ON C.DIFFICULTY_LEVEL = D.DIFFICULTY_LEVEL
JOIN 
    HACKERS H ON S.HACKER_ID = H.HACKER_ID
WHERE 
    S.SCORE = D.SCORE
GROUP BY 
    H.HACKER_ID, H.NAME
HAVING 
    COUNT(S.HACKER_ID) > 1
ORDER BY 
    COUNT(S.HACKER_ID) DESC, 
    H.HACKER_ID;

