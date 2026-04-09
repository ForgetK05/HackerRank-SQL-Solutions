/*
[VI] TAI LIEU HUONG DAN + GIAI THICH CHI TIET
Bai: Interviews
File: E:\HackerRank-SQL-Solutions\Advanced Join\Interviews.sql

1) Muc tieu:
- Truy van nay giai bai toan 'Interviews' tren HackerRank.

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
- Dòng 2: SUM(): Tính tổng giá trị số.
- Dòng 3: SUM(): Tính tổng giá trị số.
- Dòng 4: SUM(): Tính tổng giá trị số.
- Dòng 5: SUM(): Tính tổng giá trị số.
- Dòng 6: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 7: JOIN: Kết hợp dữ liệu giữa nhiều bảng theo quan hệ khóa.
- Dòng 8: ON: Đặt điều kiện ghép bảng cho JOIN.
- Dòng 9: JOIN: Kết hợp dữ liệu giữa nhiều bảng theo quan hệ khóa.
- Dòng 10: ON: Đặt điều kiện ghép bảng cho JOIN.
- Dòng 11: JOIN: Kết hợp dữ liệu giữa nhiều bảng theo quan hệ khóa.
- Dòng 12: SUM(): Tính tổng giá trị số.
- Dòng 13: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 14: GROUP BY: Gom nhóm bản ghi để dùng hàm tổng hợp.
- Dòng 15: ON: Đặt điều kiện ghép bảng cho JOIN.
- Dòng 16: JOIN: Kết hợp dữ liệu giữa nhiều bảng theo quan hệ khóa.
- Dòng 17: SUM(): Tính tổng giá trị số.
- Dòng 18: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 19: GROUP BY: Gom nhóm bản ghi để dùng hàm tổng hợp.
- Dòng 20: ON: Đặt điều kiện ghép bảng cho JOIN.
- Dòng 21: GROUP BY: Gom nhóm bản ghi để dùng hàm tổng hợp.
- Dòng 22: HAVING: Lọc các nhóm sau khi GROUP BY.
- Dòng 23: ORDER BY: Sắp xếp kết quả theo cột/biểu thức chỉ định.
*/
SELECT A.CONTEST_ID, A.HACKER_ID, A.NAME, 
        SUM(TOTAL_SUBMISSIONS) AS TOTAL_SUBMISSIONS, 
        SUM(TOTAL_ACCEPTED_SUBMISSIONS) AS TOTAL_ACCEPTED_SUBMISSIONS,
        SUM(TOTAL_VIEWS) AS TOTAL_VIEWS,
        SUM(TOTAL_UNIQUE_VIEWS) AS TOTAL_UNIQUE_VIEWS
FROM CONTESTS AS A
LEFT JOIN COLLEGES AS B
    ON A.CONTEST_ID = B.CONTEST_ID
LEFT JOIN CHALLENGES AS C
    ON B.COLLEGE_ID = C.COLLEGE_ID 
LEFT JOIN (SELECT CHALLENGE_ID, SUM(TOTAL_VIEWS) AS TOTAL_VIEWS, 
                  SUM(TOTAL_UNIQUE_VIEWS) AS TOTAL_UNIQUE_VIEWS
           FROM VIEW_STATS
           GROUP BY CHALLENGE_ID) AS D 
    ON C.CHALLENGE_ID = D.CHALLENGE_ID 
LEFT JOIN (SELECT CHALLENGE_ID, SUM(TOTAL_SUBMISSIONS) AS TOTAL_SUBMISSIONS, 
                  SUM(TOTAL_ACCEPTED_SUBMISSIONS) AS TOTAL_ACCEPTED_SUBMISSIONS
           FROM SUBMISSION_STATS
           GROUP BY CHALLENGE_ID) AS E
    ON C.CHALLENGE_ID = E.CHALLENGE_ID
GROUP BY A.CONTEST_ID, A.HACKER_ID, A.NAME
HAVING (TOTAL_SUBMISSIONS + TOTAL_ACCEPTED_SUBMISSIONS + TOTAL_VIEWS + TOTAL_UNIQUE_VIEWS) > 0 
ORDER BY A.CONTEST_ID;
