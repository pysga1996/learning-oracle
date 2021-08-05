-- Where là câu lệnh nhằm giới hạn phạm vi tìm kiếm.
-- Chẳng hạn bạn muốn tìm kiếm những sản phẩm dịch vụ có kiểu "Cho vay cá nhân và kinh doanh".

-- Product_Type_Cd = 'LOAN'.
-- Bạn cần truy vấn trong bảng PRODUCT, tại các vị trí có Product_Type_Cd= 'LOAN'.

-- Truy vấn bảng Product tìm các sản phẩm dịch vụ có kiểu:
-- "Cho vay cá nhân và kinh doanh".
-- Ứng với cột Product_Type_Cd = 'LOAN'.
Select * From Product Pro Where Pro.Product_Type_Cd = 'LOAN';