-- Câu lệnh Distinct được sử dụng cùng với Select,
-- dùng để select các dữ liệu, bỏ qua các dữ liệu trùng nhau. Cú pháp là:
-- Select distinct <column1>, <column2>  ....

-- Truy vấn sản phẩm (Sản phẩm dịch vụ của Ngân hàng)
-- Cột mã sản phẩm, tên và kiểu sản phẩm.
Select Pro.Product_Cd
     , Pro.Name
     , Pro.Product_Type_Cd
From Product Pro;

-- Truy vấn các kiểu sản phẩm  (Product_Type_Cd) trong bảng Product.
-- Dữ liệu là nhiều, nhưng trùng nhau.
Select Pro.Product_Type_Cd
from Product Pro;

-- Cần sử dụng Distinct để loại bỏ việc trùng lặp.
Select Distinct Pro.Product_Type_Cd
from Product Pro;