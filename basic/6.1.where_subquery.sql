-- Khá thường xuyên, các subquery sẽ được tìm thấy trong mệnh đề WHERE.
-- Những truy vấn con còn được gọi là truy vấn con lồng nhau.

Select Acc.Account_Id
     ,Acc.Open_Date
     ,Acc.Product_Cd
     ,Acc.Avail_Balance
From   Account Acc
Where  Acc.Cust_Id In
      (Select Cus.Cust_Id From Customer Cus Where Cus.Cust_Type_Cd = 'B');