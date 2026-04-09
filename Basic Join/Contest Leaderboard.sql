/*
[VI] TAI LIEU HUONG DAN + GIAI THICH CHI TIET
Bai: Contest Leaderboard
File: E:\HackerRank-SQL-Solutions\Basic Join\Contest Leaderboard.sql

1) Muc tieu:
- Truy van nay giai bai toan 'Contest Leaderboard' tren HackerRank.

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

4) Giai thich tung dong lenh trong file:
- Dòng 1: SELECT: Chọn các cột/biểu thức cần trả về trong kết quả.
- Dòng 2: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 3: ON: Đặt điều kiện ghép bảng cho JOIN.
- Dòng 4: GROUP BY: Gom nhóm bản ghi để dùng hàm tổng hợp.
- Dòng 5: HAVING: Lọc các nhóm sau khi GROUP BY.
- Dòng 6: ORDER BY: Sắp xếp kết quả theo cột/biểu thức chỉ định.
*/
SELECT H.HACKER_ID,H.NAME,SUM(TEMP.MSCORE) AS SSCORE
FROM HACKERS H JOIN (SELECT S.HACKER_ID,MAX(SCORE) AS MSCORE FROM SUBMISSIONS S GROUP BY S.HACKER_ID,S.CHALLENGE_ID) AS TEMP
ON H.HACKER_ID=TEMP.HACKER_ID
GROUP BY H.HACKER_ID,H.NAME
HAVING SSCORE>0
ORDER BY SSCORE DESC, H.HACKER_ID

