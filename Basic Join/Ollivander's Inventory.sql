/*
[VI] TAI LIEU HUONG DAN + GIAI THICH CHI TIET
Bai: Ollivander's Inventory
File: E:\HackerRank-SQL-Solutions\Basic Join\Ollivander's Inventory.sql

1) Muc tieu:
- Truy van nay giai bai toan 'Ollivander's Inventory' tren HackerRank.

2) Cach su dung:
- Mo file trong SQL client (MySQL/PostgreSQL/SQL Server/Oracle tuy bai).
- Dam bao schema + du lieu mau giong de bai HackerRank.
- Chay toan bo script va doi chieu ket qua voi output mong doi.

3) Thuat ngu chuyen nganh (giu nguyen tieng Anh) + chu thich:
- SELECT: Từ khóa truy vấn để chọn dữ liệu.
- FROM: Xác định bảng nguồn.
- WHERE: Điều kiện lọc dữ liệu.
- JOIN: Ghép bảng dựa trên quan hệ khóa.
- ORDER BY: Sắp xếp kết quả.

4) Giai thich tung dong lenh trong file:
- Dòng 1: SELECT: Chọn các cột/biểu thức cần trả về trong kết quả.
- Dòng 2: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 3: JOIN: Kết hợp dữ liệu giữa nhiều bảng theo quan hệ khóa.
- Dòng 4: ON: Đặt điều kiện ghép bảng cho JOIN.
- Dòng 5: WHERE: Lọc các bản ghi theo điều kiện.
- Dòng 6: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 7: JOIN: Kết hợp dữ liệu giữa nhiều bảng theo quan hệ khóa.
- Dòng 8: ON: Đặt điều kiện ghép bảng cho JOIN.
- Dòng 9: WHERE: Lọc các bản ghi theo điều kiện.
- Dòng 10: ORDER BY: Sắp xếp kết quả theo cột/biểu thức chỉ định.
*/
SELECT W.ID, P.AGE, W.COINS_NEEDED, W.POWER 
FROM WANDS AS W
JOIN WANDS_PROPERTY AS P
ON (W.CODE = P.CODE) 
WHERE P.IS_EVIL = 0 AND W.COINS_NEEDED = (SELECT MIN(COINS_NEEDED) 
                                          FROM WANDS AS X
                                          JOIN WANDS_PROPERTY AS Y 
                                          ON (X.CODE = Y.CODE) 
                                          WHERE X.POWER = W.POWER AND Y.AGE = P.AGE) 
ORDER BY W.POWER DESC, P.AGE DESC;
