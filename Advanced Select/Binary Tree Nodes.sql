/*
[VI] TAI LIEU HUONG DAN + GIAI THICH CHI TIET
Bai: Binary Tree Nodes
File: E:\HackerRank-SQL-Solutions\Advanced Select\Binary Tree Nodes.sql

1) Muc tieu:
- Truy van nay giai bai toan 'Binary Tree Nodes' tren HackerRank.

2) Cach su dung:
- Mo file trong SQL client (MySQL/PostgreSQL/SQL Server/Oracle tuy bai).
- Dam bao schema + du lieu mau giong de bai HackerRank.
- Chay toan bo script va doi chieu ket qua voi output mong doi.

3) Thuat ngu chuyen nganh (giu nguyen tieng Anh) + chu thich:
- SELECT: Từ khóa truy vấn để chọn dữ liệu.
- FROM: Xác định bảng nguồn.
- ORDER BY: Sắp xếp kết quả.
- CASE: Biểu thức điều kiện dạng nhiều nhánh.

4) Giai thich tung dong lenh trong file:
- Dòng 1: SELECT: Chọn các cột/biểu thức cần trả về trong kết quả.
- Dòng 2: CASE: Rẽ nhánh điều kiện để trả về giá trị theo từng trường hợp.
- Dòng 3: WHEN: Một nhánh điều kiện bên trong CASE.
- Dòng 4: WHEN: Một nhánh điều kiện bên trong CASE.
- Dòng 5: ELSE: Giá trị mặc định khi các điều kiện WHEN không khớp.
- Dòng 6: END: Kết thúc khối CASE/PLSQL hiện tại.
- Dòng 7: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
- Dòng 8: ORDER BY: Sắp xếp kết quả theo cột/biểu thức chỉ định.
*/
SELECT N,
    CASE
        WHEN P IS NULL THEN 'Root'
        WHEN N IN (SELECT P FROM BST) THEN 'Inner'
        ELSE 'Leaf'
    END 
FROM BST
ORDER BY N;
