-- Một truy vấn phụ cũng có thể được tìm thấy trong mệnh đề FROM.
-- Chúng được gọi là inline views.

Select Cus.Cust_Id
     ,Cus.Address
     ,Cus.Fed_Id
     ,Acc2.Sum_Avail_Balance
From   Customer Cus
     , -- Câu Subquery định nghĩa 1 bảng ảo (inline view)
      (Select Acc.Cust_Id
             ,Sum(Acc.Avail_Balance) As Sum_Avail_Balance
       From   Account Acc
       Group  By Acc.Cust_Id) Acc2
Where  Cus.Cust_Id = Acc2.Cust_Id;