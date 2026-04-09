/*
[VI] TAI LIEU HUONG DAN + GIAI THICH CHI TIET
Bai: Challenges
File: E:\HackerRank-SQL-Solutions\Basic Join\Challenges.sql

1) Muc tieu:
- Truy van nay giai bai toan 'Challenges' tren HackerRank.

2) Cach su dung:
- Mo file trong SQL client (MySQL/PostgreSQL/SQL Server/Oracle tuy bai).
- Dam bao schema + du lieu mau giong de bai HackerRank.
- Chay toan bo script va doi chieu ket qua voi output mong doi.

3) Thuat ngu chuyen nganh (giu nguyen tieng Anh) + chu thich:
- SELECT: Từ khóa truy vấn để chọn dữ liệu.
- FROM: Xác định bảng nguồn.
- JOIN: Ghép bảng dựa trên quan hệ khóa.
- GROUP BY: Nhóm dữ liệu để tổng hợp.
- HAVING: Lọc sau khi nhóm.
- ORDER BY: Sắp xếp kết quả.
- LIMIT: Giới hạn số dòng kết quả.

4) Giai thich tung dong lenh trong file:
- Dòng 1: SELECT: Chọn các cột/biểu thức cần trả về trong kết quả.
- Dòng 2: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 3: COUNT(): Đếm số dòng hoặc số giá trị khác NULL.
- Dòng 4: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 5: JOIN: Kết hợp dữ liệu giữa nhiều bảng theo quan hệ khóa.
- Dòng 6: GROUP BY: Gom nhóm bản ghi để dùng hàm tổng hợp.
- Dòng 7: HAVING: Lọc các nhóm sau khi GROUP BY.
- Dòng 8: COUNT(): Đếm số dòng hoặc số giá trị khác NULL.
- Dòng 9: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 10: GROUP BY: Gom nhóm bản ghi để dùng hàm tổng hợp.
- Dòng 11: ORDER BY: Sắp xếp kết quả theo cột/biểu thức chỉ định.
- Dòng 12: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 13: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 14: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 15: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 16: COUNT(): Đếm số dòng hoặc số giá trị khác NULL.
- Dòng 17: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 18: JOIN: Kết hợp dữ liệu giữa nhiều bảng theo quan hệ khóa.
- Dòng 19: GROUP BY: Gom nhóm bản ghi để dùng hàm tổng hợp.
- Dòng 20: GROUP BY: Gom nhóm bản ghi để dùng hàm tổng hợp.
- Dòng 21: HAVING: Lọc các nhóm sau khi GROUP BY.
- Dòng 22: ORDER BY: Sắp xếp kết quả theo cột/biểu thức chỉ định.
*/
SELECT H.HACKER_ID, 
       H.NAME, 
       COUNT(C.CHALLENGE_ID) AS C_COUNT
FROM HACKERS H
JOIN CHALLENGES C ON C.HACKER_ID = H.HACKER_ID
GROUP BY H.HACKER_ID, H.NAME
HAVING C_COUNT = 
    (SELECT COUNT(C2.CHALLENGE_ID) AS C_MAX
     FROM CHALLENGES AS C2
     GROUP BY C2.HACKER_ID 
     ORDER BY C_MAX DESC LIMIT 1)
OR C_COUNT IN 
    (SELECT DISTINCT C_COMPARE AS C_UNIQUE
     FROM (SELECT H2.HACKER_ID, 
                  H2.NAME, 
                  COUNT(CHALLENGE_ID) AS C_COMPARE
           FROM HACKERS H2
           JOIN CHALLENGES C ON C.HACKER_ID = H2.HACKER_ID
           GROUP BY H2.HACKER_ID, H2.NAME) COUNTS
     GROUP BY C_COMPARE
     HAVING COUNT(C_COMPARE) = 1)
ORDER BY C_COUNT DESC, H.HACKER_ID;
