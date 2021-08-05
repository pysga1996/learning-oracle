-- LEFT OUTER JOIN là từ khóa trả về tất cả các hàng (rows) từ bảng bên trái (table1), với các hàng tương ứng trong bảng bên phải (table2).
-- Chấp nhận cả dữ liệu NULL ở bảng 2.

-- Customer LEFT OUTER JOIN Officer
-- Có thể thay thế LEFT OUTER JOIN bởi LEFT JOIN (Ý nghĩa và kết quả là giống nhau)
Select Cus.Cust_Id
     ,Cus.Fed_Id
     ,Cus.State
     ,Ofc.Cust_Id As Ofc_Cust_Id
     ,Ofc.Officer_Id
     ,Ofc.Start_Date
     ,Ofc.Title
From   Customer Cus  -- Table1
Left   Outer Join Officer Ofc  -- Table2
On     Cus.Cust_Id = Ofc.Cust_Id;

-- LEFT OUTER JOIN theo cú pháp khác của Oracle.
-- Oracle đẩy điều kiện LEFT OUTER JOIN hai bảng xuống WHERE.
-- Sử dụng (+) tại Table2.
Select Cus.Cust_Id
    ,Cus.Fed_Id
    ,Cus.State
    ,Ofc.Cust_Id As Ofc_Cust_Id
    ,Ofc.Officer_Id
    ,Ofc.Start_Date
    ,Ofc.Title
From   Customer Cus -- Table1
    ,Officer  Ofc -- Table2
Where  Cus.Cust_Id = Ofc.Cust_Id(+);