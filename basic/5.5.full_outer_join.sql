-- FULL OUTER JOIN là sự kết hợp của LEFT OUTER JOIN và RIGHT OUTER JOIN

-- Cú pháp:  (FULL OUTER JOIN)
-- Có thể viết FULL JOIN

-- SELECT columns
-- FROM table1
-- FULL [OUTER] JOIN table2
-- ON table1.column = table2.column;

Select Cus.Cust_Id
     ,Cus.Fed_Id
     ,Cus.State
     ,Ofc.Cust_Id As Ofc_Cust_Id
     ,Ofc.Officer_Id
     ,Ofc.Start_Date
     ,Ofc.Title
From   Customer Cus  -- Table1
Full   Outer Join Officer Ofc  -- Table2
On     Cus.Cust_Id = Ofc.Cust_Id;