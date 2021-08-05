-- Câu lệnh Select là một câu lệnh cơ bản nhất trong SQL, mục đích là truy vấn dữ liệu trong các bảng (Table).
-- PRODUCT_TYPE: Bảng dữ liệu các kiểu sản phẩm (Kiểu dịch vụ của ngân hàng).

-- Truy vấn dữ liệu trên bảng Product_Type
-- Truy vấn toàn bộ các cột.

-- Đây là câu lệnh truy vấn dữ liệu trên bảng PRODUCT_TYPE

Select *
From Product_Type;

-- Câu lệnh truy vấn trên và câu lệnh dưới đây là tương đương nhau.
-- Pty là alias (tên bí danh đặt cho bảng Product_Type).

Select Pty.*
From Product_Type Pty;

-- Truy vấn một vài cột
-- Có thể liệt kê ra.

Select Pty.Product_Type_Cd
     , Pty.Name
From Product_Type Pty;

-- Sử dụng hàm concat(string1, string2) để nối 2 chuỗi với nhau.
-- Chúng ta có một cột mới sử dụng 'as' để định nghĩa tên cột cho cột mới này.
Select Emp.Emp_Id
     , Emp.First_Name
     , Emp.Last_Name
     , Emp.Dept_Id
     , Concat('EMP'
    , Emp.Emp_Id) As Emp_No2 -- Cột mới
From Employee Emp;


-- Có thể không cần sử dụng 'as' trong định nghĩa Alias cho cột.
Select Emp.Emp_Id
     , Emp.First_Name
     , Emp.Last_Name
     , Emp.Dept_Id
     , Concat('EMP'
    , Emp.Emp_Id) Emp_No2 -- Cột mới
From Employee Emp;

-- Với Oracle bạn có thể sử dụng toán tử || để nối 2 chuỗi
-- Toán tử này có thể nối nhiều chuỗi với nhau.
-- (Chú ý chỉ với Oracle).
-- Câu lệnh trên viết lại với Oracle.
Select Emp.Emp_Id
     , Emp.First_Name
     , Emp.Last_Name
     , Emp.Dept_Id
     , 'EMP' || Emp.Emp_Id As Emp_No2 -- Cột mới
From Employee Emp;