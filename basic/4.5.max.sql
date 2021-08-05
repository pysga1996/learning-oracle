-- Max là hàm tìm giá trị lớn nhất trên cột.
-- Cách sử dụng giống MIN, bạn có thể tham khảo các ví dụ tại MIN.

-- -- Cú pháp:
--
-- SELECT MAX("column_name")
-- FROM "table_name";

-- Tìm số tiền gửi tiết kiệm lớn nhất.
Select Min(Acc.Avail_Balance)
From   Account Acc
Where  Acc.Product_Cd = 'SAV';

-- Sử dụng với Group by.
-- Một khách hàng có thể có 1 hoặc nhiều tài khoản.
-- Mở tại các chi nhánh khác nhau.
-- Tìm số tiền trong tài khoản nhỏ nhất ứng với từng chi nhánh
Select Acc.Open_Branch_Id
     ,Max(Acc.Avail_Balance)
From   Account Acc
Group  By Acc.Open_Branch_Id;