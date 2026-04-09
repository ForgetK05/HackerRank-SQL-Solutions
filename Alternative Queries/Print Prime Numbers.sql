/*
[VI] TAI LIEU HUONG DAN + GIAI THICH CHI TIET
Bai: Print Prime Numbers
File: E:\HackerRank-SQL-Solutions\Alternative Queries\Print Prime Numbers.sql

1) Muc tieu:
- Truy van nay giai bai toan 'Print Prime Numbers' tren HackerRank.

2) Cach su dung:
- Mo file trong SQL client (MySQL/PostgreSQL/SQL Server/Oracle tuy bai).
- Dam bao schema + du lieu mau giong de bai HackerRank.
- Chay toan bo script va doi chieu ket qua voi output mong doi.

3) Thuat ngu chuyen nganh (giu nguyen tieng Anh) + chu thich:
- SQL: Ngôn ngữ truy vấn dữ liệu dạng quan hệ.

4) Giai thich tung dong lenh trong file:
- Dòng 1: SET: Gán giá trị biến phiên hoặc cấu hình môi trường chạy câu lệnh.
- Dòng 2: DECLARE: Khai báo biến trong PL/SQL block.
- Dòng 3: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 4: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 5: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 6: BEGIN: Bắt đầu phần thực thi của PL/SQL block.
- Dòng 7: FOR: Vòng lặp lặp qua dải giá trị hoặc tập dữ liệu.
- Dòng 8: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 9: FOR: Vòng lặp lặp qua dải giá trị hoặc tập dữ liệu.
- Dòng 10: IF: Rẽ nhánh logic trong PL/SQL.
- Dòng 11: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 12: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 13: END: Kết thúc khối CASE/PLSQL hiện tại.
- Dòng 14: END: Kết thúc khối CASE/PLSQL hiện tại.
- Dòng 15: IF: Rẽ nhánh logic trong PL/SQL.
- Dòng 16: IF: Rẽ nhánh logic trong PL/SQL.
- Dòng 17: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 18: ELSE: Giá trị mặc định khi các điều kiện WHEN không khớp.
- Dòng 19: Tiếp tục biểu thức/truy vấn hiện tại; giữ nguyên logic xử lý của lời giải gốc.
- Dòng 20: END: Kết thúc khối CASE/PLSQL hiện tại.
- Dòng 21: END: Kết thúc khối CASE/PLSQL hiện tại.
- Dòng 22: END: Kết thúc khối CASE/PLSQL hiện tại.
- Dòng 23: DBMS_OUTPUT.PUT_LINE: In chuỗi kết quả ra output console của Oracle.
- Dòng 24: END: Kết thúc khối CASE/PLSQL hiện tại.
- Dòng 25: /: Thực thi PL/SQL block vừa khai báo trong nhiều SQL client (Oracle).
*/
SET SERVEROUTPUT ON;
DECLARE
    n NUMBER := 1000; 
    is_prime BOOLEAN;
    result VARCHAR2(4000) := ''; 
BEGIN
    FOR i IN 2..n LOOP
        is_prime := TRUE;
        FOR j IN 2..TRUNC(SQRT(i)) LOOP
            IF MOD(i, j) = 0 THEN
                is_prime := FALSE;
                EXIT; 
            END IF;
        END LOOP;
        IF is_prime THEN
            IF result IS NOT NULL THEN
                result := result || '&' || i; 
            ELSE
                result := TO_CHAR(i); 
            END IF;
        END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(result);
END;
/

