-- COUNT() trả về số dòng phù hợp với một tiêu chí cụ thể.

-- Đếm số row (dòng) có trong bảng Account

Select Count(Acc.Account_Id) From Account Acc;

-- Đếm số tài khoản ngân hàng, có giao dịch với ngân hàng (Bảng Acc_Transaction)

-- Đếm số tài khoản có giao dịch với ngân hàng.

Select Count(distinct txn.Account_id) From Acc_Transaction txn;

-- Sử dụng với Group by:
-- Một khách hàng có thể mở nhiều tài khoản, mỗi tài khoản ứng với một sản phẩm dịch vụ của ngân hàng.
-- Bạn muốn liệt kê các khách hàng (CUST_ID) và tương ứng là số tài khoản họ đã mở.

-- Đếm số tài khoản đã mở ứng với mỗi khách hàng.

Select Acc.Cust_Id
     ,Count(Acc.Account_Id)
From   Account Acc
Group  By Acc.Cust_Id;