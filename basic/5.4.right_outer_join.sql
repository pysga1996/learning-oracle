-- RIGHT OUTER JOIN ngược lại với LEFT OUTER JOIN:

Select Cus.Cust_Id
     ,Cus.Fed_Id
     ,Cus.State
     ,Ofc.Cust_Id As Ofc_Cust_Id
     ,Ofc.Officer_Id
     ,Ofc.Start_Date
     ,Ofc.Title
From   Customer Cus  -- Table1
Right   Outer Join Officer Ofc  -- Table2
On     Cus.Cust_Id = Ofc.Cust_Id;

-- RIGHT OUTER JOIN theo cú pháp khác của Oracle.
-- Oracle đẩy điều kiện RIGHT OUTER JOIN hai bảng xuống WHERE.
-- Sử dụng (+) tại Table1.
Select Cus.Cust_Id
    ,Cus.Fed_Id
    ,Cus.State
    ,Ofc.Cust_Id As Ofc_Cust_Id
    ,Ofc.Officer_Id
    ,Ofc.Start_Date
    ,Ofc.Title
From   Customer Cus -- Table1
    ,Officer  Ofc -- Table2
Where  Cus.Cust_Id(+) = Ofc.Cust_Id;