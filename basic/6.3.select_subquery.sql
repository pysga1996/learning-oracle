-- Một truy vấn phụ cũng có thể được tìm thấy trong mệnh đề SELECT.

Select Cus.Cust_Id
     ,Cus.Address
     ,Cus.Fed_Id
     ,(Select Sum(Acc.Avail_Balance)
       From   Account Acc
       Where  Acc.Cust_Id = Cus.Cust_Id) As Sum_Avail_Balance
From   Customer Cus;

-- Bí quyết để đặt một truy vấn phụ trong mệnh đề select là subquery
-- phải trả lại một giá trị duy nhất. Đây là lý do tại sao một các hàm tổng hợp như hàm SUM, COUNT, MIN, hoặc MAX thường được sử dụng trong subquery.