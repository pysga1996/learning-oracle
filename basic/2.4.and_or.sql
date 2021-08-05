-- And và Or là 2 lệnh điều kiện sử dụng trong where:
-- Chẳng hạn bạn muốn tìm danh sách các nhân viên có tên bắt đầu bởi chữ S và thuộc phòng điều hành (Operations).

-- Câu lệnh tìm kiếm các Nhân viên có tên bắt đầu bởi chữ S.
Select Emp.Emp_Id
     ,Emp.First_Name
     ,Emp.Last_Name
     ,Emp.Dept_Id
From   Employee Emp
Where  Emp.First_Name Like 'S%';

-- Câu lệnh tìm kiếm các nhân viên có tên bắt đầu bởi chữ S
-- và thuộc phòng điều hành (Operations)  Dept_Id  = 1.

Select Emp.Emp_Id
     ,Emp.First_Name
     ,Emp.Last_Name
     ,Emp.Dept_Id
From   Employee Emp
Where  Emp.First_Name Like 'S%'
And    Emp.Dept_Id = 1;

-- Tìm kiếm các nhân viên có tên bắt đầu bởi chữ S hoặc P.
-- và trong phòng điều hành (Operations). (Dept_Id = 1)
Select Emp.Emp_Id
     ,Emp.First_Name
     ,Emp.Last_Name
     ,Emp.Dept_Id
From   Employee Emp
Where  (Emp.First_Name Like 'S%' Or Emp.First_Name Like 'P%')
And    Emp.Dept_Id = 1;