-- Tạo mới một Sequence có tên My_Sequence;

Create Sequence My_Sequence;

-- Mỗi lần gọi Nextval giá trị của My_Sequence sẽ tăng dần.
-- Hãy thử thực thi lệnh này vài lần.

Select My_Sequence.Nextval From Dual;

-- Bạn có thể sử dụng Currval để lấy ra giá trị hiện thời của My_Sequence.

Select My_Sequence.Currval From Dual;