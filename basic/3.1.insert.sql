-- Cú pháp câu lệnh Insert Into:

-- INSERT INTO "table_name" ("column1", "column2", ...)
-- VALUES ("value1", "value2", ...);

-- Trèn 1 dòng dữ liệu vào bảng Acc_Trasaction
-- Cột Txn_ID sẽ có giá trị do Sequence Hibernate_Sequence tạo ra
-- Sysdate là hàm của Oracle lấy ra giờ hệ thống (System Date)
-- Sysdate: Giờ hiện tại.
Insert Into Acc_Transaction
  (Txn_Id
  ,Amount
  ,Funds_Avail_Date
  ,Txn_Date
  ,Txn_Type_Cd
  ,Account_Id
  ,Execution_Branch_Id
  ,Teller_Emp_Id)
Values
  (Hibernate_Sequence.Nextval -- Txn_Id
  ,100 -- Amount
  ,Sysdate -- Funds_Avail_Date
  ,Sysdate -- Txn_Date
  ,'CDT' -- Txn_Type_Cd
  ,2 -- Account_Id
  ,Null -- Execution_Branch_Id
  ,Null -- Teller_Emp_Id
   );