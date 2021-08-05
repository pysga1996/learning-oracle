-- Bạn có thể sử dụng câu Select để cung cấp dữ liệu trèn vào bảng.
-- Thông qua câu lệnh Insert Into ... Select.

-- Ngữ pháp câu lệnh INSERT INTO .. SELECT

-- INSERT INTO "table1" ("column1", "column2", ...)
-- SELECT "column3", "column4", ...
-- FROM "table2";

Insert Into Acc_Transaction
  (Txn_Id
  ,Txn_Date
  ,Account_Id
  ,Txn_Type_Cd
  ,Amount
  ,Funds_Avail_Date)
  Select Hibernate_Sequence.Nextval -- Txn_Id
        ,Acc.Open_Date -- Txn_Date
        ,Acc.Account_Id -- Account_Id
        ,'CDT' -- Txn_Type_Cd
        ,200 -- Amount
        ,Acc.Open_Date -- Funds_Avail_Date
  From   Account Acc
  Where  Acc.Product_Cd = 'CD';