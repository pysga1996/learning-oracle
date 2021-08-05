-- Trước hết chúng ta cần hiểu các hàm tổng hợp (Aggregate Functions) là gì:
-- Sum: Hàm tính tổng
-- Avg: Hàm lấy trung bình
-- Count: Hàm tính số lần
-- Min: Hàm tìm giá trị nhỏ nhất
-- Max: Hàm tìm giá trị lớn nhất
-- Đó là một số hàm tổng hợp (Aggregate) thông dụng. Chúng có thể tham gia vào câu lệnh nhóm (Group by).

-- Truy vấn dữ liệu trong bảng Account.

Select Acc.Account_Id
     ,Acc.Product_Cd
     ,Acc.Avail_Balance
     ,Acc.Pending_Balance
From   Account Acc;

-- Câu hỏi đặt ra bạn muốn xem tổng số tiền có trong tài khoản, ứng với mỗi loại dịch vụ (Product_Cd) khác nhau.
-- Điều đó có nghĩa là bạn cần nhóm trên các Product_Cd.

Select Acc.Product_Cd
     ,Count(Acc.Product_Cd) As Count_Acc -- Số tài khoản
     ,Sum(Acc.Avail_Balance) As Sum_Avail_Balance -- Tổng số tiền sẵn có trong tài khoản.
     ,Avg(Acc.Avail_Balance) As Avg_Avail_Balance -- Số tiền trung bình
From   Account Acc
Group  By Acc.Product_Cd;