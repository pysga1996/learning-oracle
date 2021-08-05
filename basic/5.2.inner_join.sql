-- INNER JOIN từ khóa chọn tất cả các dòng từ hai bảng miễn là có sự ăn khớp dữ liệu giữa các cột trong cả hai bảng.

-- Cú pháp

-- SELECT column_name(s)
-- FROM table1
-- INNER JOIN table2
-- ON table1.column_name=table2.column_name;

-- Có thể thay INNER JOIN bởi JOIN
-- Ý nghĩa và kết quả là như nhau.

-- SELECT column_name(s)
-- FROM table1
-- JOIN table2
-- ON table1.column_name=table2.column_name;

-- INNER JOIN 2 bảng EMPLOYEE và DEPARTMENT.

Select Emp.Emp_Id
     ,Emp.First_Name
     ,Emp.Last_Name
     ,Emp.Dept_Id
     ,Dep.Name Dept_Name
From   Employee Emp
Inner  Join Department Dep
On     Emp.Dept_Id = Dep.Dept_Id
Order  By Emp.Emp_Id;

-- Việc INNER JOIN theo cách viết khác của Oracle thực sự đơn giản.
-- Oracle đẩy điều kiện JOIN hai bảng xuống WHERE.

Select Emp.Emp_Id
    ,Emp.First_Name
    ,Emp.Last_Name
    ,Emp.Dept_Id
    ,Dep.Name Dept_Name
From   Employee   Emp
    ,Department Dep
Where  Emp.Dept_Id = Dep.Dept_Id
Order  By Emp.Emp_Id;