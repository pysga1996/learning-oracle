-- AVG là hàm tính trung bình trên cột.(Chỉ dùng cho cột giá trị số).

-- Cú pháp:

-- SELECT AVG("column_name")
-- FROM "table_name";

-- Tính số tiền trung bình ứng với loại hình gửi tiết kiêm.
Select Avg(Acc.Avail_Balance)
From   Account Acc
Where  Acc.Product_Cd = 'SAV';


-- Sử dụng với Group by.
-- Một khách hàng có thể có 1 hoặc nhiều tài khoản.
-- Tính số tiền trung bình mỗi tài khoản ứng với từng khách hàng
-- (tại ngân hàng Branch_ID = 1)
Select Acc.Cust_Id
    ,Avg(Acc.Avail_Balance)
From   Account Acc
Where  Acc.Open_Branch_Id = 1
Group  By Acc.Cust_Id;