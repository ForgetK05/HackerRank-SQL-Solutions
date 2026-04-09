/*
[VI] TAI LIEU HUONG DAN + GIAI THICH CHI TIET
Bai: Draw The Triangle 2
File: E:\HackerRank-SQL-Solutions\Alternative Queries\Draw The Triangle 2.sql

1) Muc tieu:
- Truy van nay giai bai toan 'Draw The Triangle 2' tren HackerRank.

2) Cach su dung:
- Mo file trong SQL client (MySQL/PostgreSQL/SQL Server/Oracle tuy bai).
- Dam bao schema + du lieu mau giong de bai HackerRank.
- Chay toan bo script va doi chieu ket qua voi output mong doi.

3) Thuat ngu chuyen nganh (giu nguyen tieng Anh) + chu thich:
- SELECT: Từ khóa truy vấn để chọn dữ liệu.
- FROM: Xác định bảng nguồn.
- LIMIT: Giới hạn số dòng kết quả.

4) Giai thich tung dong lenh trong file:
- Dòng 1: SET: Gán giá trị biến phiên hoặc cấu hình môi trường chạy câu lệnh.
- Dòng 2: SELECT: Chọn các cột/biểu thức cần trả về trong kết quả.
- Dòng 3: FROM: Xác định bảng hoặc nguồn dữ liệu chính.
*/
SET  @N=0;
SELECT REPEAT('* ', @N:=@N+1)
FROM INFORMATION_SCHEMA.TABLES LIMIT 20;
