-- Có 2 ký tự đặc biệt trong SQL:
-- Ký tự %
-- Ký tự _
-- Ý nghĩa:
-- % mô tả 0, 1 hoặc nhiều ký tự
-- _ mô tả chính xác một ký tự.
-- Hai ký tự này thường được sử dụng trong điều kiện like.

-- Tìm kiếm các Khách hàng (Customer) có số FED_ID theo định dạng:
-- Phần trước bất kỳ, rồi tới dấu - , rồi tới 2 ký tự, rồi tới dấu -, và cuối bất kỳ.
-- Sử dụng 2 dấu _ để minh họa rằng đó là 2 ký tự.
-- (Mỗi dấu _ là chính xác một ký tự).

Select Cus.Cust_Id
     ,Cus.Fed_Id
     ,Cus.Address
From   Customer Cus
where cus.fed_id like '%-__-%';
