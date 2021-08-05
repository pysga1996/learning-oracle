-- Tìm các nhân viên có Emp_Id trong khoảng từ 5 đến 10.
Select Emp.Emp_Id
    ,Emp.First_Name
    ,Emp.Last_Name
    ,Emp.Start_Date
From   Employee Emp
Where  (Emp.Emp_Id Between 5 And 10);

-- Câu lệnh trên tương đương với:
Select Emp.Emp_Id
     ,Emp.First_Name
     ,Emp.Last_Name
     ,Emp.Start_Date
From   Employee Emp
Where  Emp.Emp_Id >= 5
And    Emp.Emp_Id <= 10;

-- Câu lệnh này tìm kiếm các nhân viên bắt đầu vào làm việc trong 1 khoảng thời gian
-- xác định trong mệnh đề where.
-- 03-05-2002 ==> 09-08-2002  (Theo dd-MM-yyyy)
Select Emp.Emp_Id
     ,Emp.First_Name
     ,Emp.Last_Name
     ,Emp.Start_Date
     , -- To_Char là một hàm của Oracle.
      -- Không dùng cho DB khác.
      -- To_Char chuyển kiểu Date sang text
      -- Theo một định dạng nào đó ở đây là dd-MM-yyyy
      To_Char(Emp.Start_Date
             ,'dd-MM-yyyy') Start_Date_Vn
From   Employee Emp
Where
-- To_Date là một hàm của Oracle (Có thể ko có trên DB khác)
-- To_Date là hàm chuyển Text thành Date
-- Theo một định dạng nào đó, ở đây là dd-MM-yyyy.
( --
 Emp.Start_Date Between To_Date('03-05-2002'
                               ,'dd-MM-yyyy') And
 To_Date('09-08-2002'
        ,'dd-MM-yyyy') --
);