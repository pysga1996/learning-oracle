-- Sum là hàm dùng để tính tổng giá trị một cột trong câu SQL. (Chỉ dùng cho cột giá trị số).

-- Cú pháp:

-- SELECT SUM("column_name")
-- FROM "table_name";

-- Tính tổng số tiền trong các tài khoản của khách hàng với Cust_ID = 1
Select Sum(Acc.Avail_Balance) From Account Acc Where Acc.Cust_Id = 1;



-- Sử dụng với Group by.
-- Tính tổng số tiền trong tài khoản ứng với mỗi khách hàng
Select Acc.Cust_Id
    ,Sum(Acc.Avail_Balance)
From   Account Acc
Group  By Acc.Cust_Id;