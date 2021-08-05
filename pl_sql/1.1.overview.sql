-- Có một số khái niệm cần phải nắm vững khi lập trình với PL/SQL:
-- Mỗi lệnh SQL kềt thúc bằng dấu chấm phẩy (;)
-- Các lệnh thuộc "ngôn ngữ định nghĩa dữ liệu" (Data Definition Language - DDL) không được sử dụng trong PL/SQL
-- Lệnh SELECT.. INTO trả về nhiều dòng có thể gây ra exception ( > 1 dòng).
-- Lệnh SELECT .. INTO không trả về dòng nào có thể gây ra exception
-- Các lệnh thuộc "ngôn ngữ thao tác trên dữ liệu" (Data Manipulation Language - DML) có thể tác động trên nhiều dòng dữ liệu.
-- Sử dụng toán tử := để giá giá trị cho một biến.
DECLARE
    x         NUMBER;
    v_Dept_Id NUMBER;
-- Bắt ngoại lệ:
Begin
    -- Lệnh Insert:
    Insert into Department (Dept_Id, Dept_No, Name, Location)
    values (1, 'D1', 'HR', 'Chicago');
    -- Lệnh gán giá trị cho biến
    x := 1;
    Select Dept.Dept_Id
    into v_Dept_Id
    from Department Dept;
Exception
    when too_many_rows then
        Dbms_Output.put_line('Error:' || SQLCODE || SQLERRM);
    when dup_val_on_index then
        Dbms_Output.put_line('Error unique:' || SQLCODE || SQLERRM);
End;

--
Declare
    -- Phần khai báo - Không bắt buộc-
    -- Khai báo các biến sử dụng trong phần thân
    v_Location Varchar2(100);
Begin
    -- Phần thân của khối lệnh
    -- Đoạn lệnh thực hiện
    v_Location := 'Chicago';
    -- ....
Exception
    -- Phần xử lý lỗi - Không bắt buộc
    -- Bắt để sử lý các ngoại lệ khác nhau.
    When No_Data_Found Then
        -- Ngoại lệ khi câu lệnh SELECT .. INTO không trả về dòng nào
        -- (Không bắt buộc phải bắt)
        -- Sử lý gì đó tại đây.
        -- Hoặc để lệnh null nếu không cần sử lý.
        Null;
    When Too_Many_Rows Then
        -- Ngoại lệ khi câu lệnh SELECT .. INTO trả về nhiều dòng
        -- (Không bắt buộc phải bắt)
        Null;
    When Others Then
        -- Các ngoại lệ khác
        Null;
End;