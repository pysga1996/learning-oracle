-- Having là một câu lệnh điều kiện của Group by.
-- Giả sử bạn muốn nhóm các loại hình dịch vụ (Product_Cd) trên bảng Account,
-- và chỉ hiển thị ra các loại hình nào có số người tham gia > 3.

Select Acc.Product_Cd
     ,Count(Acc.Product_Cd) As Count_Acc -- Số tài khoản
     ,Sum(Acc.Avail_Balance) As Sum_Avail_Balance -- Tổng số tiền trong tài khoản
     ,Avg(Acc.Avail_Balance) As Avg_Avail_Balance -- Số tiền trung bình
From   Account Acc
Group  By Acc.Product_Cd
Having Count(Acc.Product_Cd) > 3;

-- Phân biệt Where & Having
-- Bạn cần phân biệt Where và Having trong cùng một câu lệnh.
-- Where là một mệnh đề để lọc bớt dữ liệu trước khi nhóm (Group)
-- Having là một mệnh đề để lọc bớt dữ liệu sau khi đã nhóm (Group)
-- Trường hợp bạn muốn có các thông tin tổng hợp của một chi nhánh ngân hàng (Bảng BRANCH).
-- Bạn có thể sử dụng where để lọc bớt dữ liệu trước khi group.

Select Acc.Product_Cd
     ,Count(Acc.Product_Cd) As Count_Acc
     ,Sum(Acc.Avail_Balance) As Sum_Avail_Balance
     ,Avg(Acc.Avail_Balance) As Avg_Avail_Balance
From   Account Acc
-- Sử dụng Where lọc bớt dữ liệu trước khi group.
Where  Acc.Open_Branch_Id = 1
Group  By Acc.Product_Cd
-- Sử dụng Having lọc bớt dữ liệu sau khi đã group
Having Count(Acc.Product_Cd) > 1;