-- Cú pháp xóa các dòng dữ liệu trong bảng.

-- DELETE FROM "table_name"
-- WHERE "condition";

-- Xóa 2 dòng dữ liệu trong bảng Acc_Transaction:

Delete From Acc_Transaction Txn
Where  Txn.Txn_Id In (61,62);