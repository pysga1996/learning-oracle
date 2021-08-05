-- Việc query dữ liệu cho một tập kết quả, mà có thể nó sắp xếp không như ý muốn, sử dụng Order by để sắp xếp kết quả trả về.
-- Cú pháp

-- SELECT "column_name"
-- FROM "table_name"
-- [WHERE "condition"]
-- ORDER BY "column_name1" [ASC, DESC], "column_name2" [ASC, DESC];

-- Ghi chú:
-- ASC: nghĩa là sắp xếp tăng dần (Mặc định)
-- DESC: Nghĩa là sắp xếp giảm dần.

-- Sắp xếp ưu tiên Product_Type_Cd tăng dần
-- Sau đó mới tới Name (Cũng tăng dần)
Select Pro.Product_Cd
     ,Pro.Product_Type_Cd
     ,Pro.Name
From   Product Pro
Order  By Pro.Product_Type_Cd Asc
        ,Pro.Name            Asc;


-- Trong Order BY, ASC là mặc định.
-- Vì vậy có thể ko cần viết ASC.
Select Pro.Product_Cd
     ,Pro.Product_Type_Cd
     ,Pro.Name
From   Product Pro
Order  By Pro.Product_Type_Cd
        ,Pro.Name;

-- Sắp xếp ưu tiên Product_Type_Cd giảm dần
-- Sau đó mới tới Name (Tăng dần)
Select Pro.Product_Cd
     ,Pro.Product_Type_Cd
     ,Pro.Name
From   Product Pro
Order  By Pro.Product_Type_Cd Desc
        ,Pro.Name            Asc;

-- Order By bao giờ cũng đứng sau where.
-- Tìm các nhân viên có tên bắt đầu bởi S.
-- Sắp xếp giảm dần theo ngày bắt đầu vào làm việc.
Select Emp.Emp_Id
     ,Emp.First_Name
     ,Emp.Last_Name
     ,Emp.Start_Date
From   Employee Emp
Where  Emp.First_Name Like 'S%'
Order  By Emp.Start_Date Desc;

-- Đây là cú pháp của Oracle (Có thể không được hỗ trợ bởi Database khác).
-- Sử dụng thứ tự của cột vào trong câu Order by.
-- First_Name là cột thứ 2 trong câu Select
-- Có thể sử dụng: Order by 2 thay cho Order by First_Name.
Select Emp.Emp_Id
    ,Emp.First_Name
    ,Emp.Last_Name
    ,Emp.Start_Date
From   Employee Emp
Order  By 2 Desc;