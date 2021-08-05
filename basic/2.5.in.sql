-- Toán tử IN cho phép kiểm tra một giá trị có thuộc vào một tập hợp cố định các giá trị nào đó không.
-- Và nó có thể làm việc với tất cả cac loại kiểu dữ liệu.

-- Câu lệnh này tìm kiếm các nhân viên có tên
-- Susan hoặc Paula hoặc Helen.
Select Emp.Emp_Id
     ,Emp.First_Name
     ,Emp.Last_Name
     ,Emp.Dept_Id
From   Employee Emp
Where  Emp.First_Name In ('Susan'
                        ,'Paula'
                        ,'Helen');