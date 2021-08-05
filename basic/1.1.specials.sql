-- Dual giống như một bảng ảo, nó có tại mọi SCHEMA.
-- Và vì vậy bạn có thể truy vấn nó giống một bảng thông thường.

Select * from Dual;

Select 'Dual is special table in Oracle' As Column_Title From Dual;