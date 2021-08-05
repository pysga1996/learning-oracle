-- Cú pháp câu lệnh Update:

-- UPDATE "table_name"
-- SET "column_1" = "new value 1", "column_2"= "new value 2"
-- WHERE "condition";

-- Update, tăng số tiền trong tài khoản lên 2% cho khách hàng CUST_ID = 1.
Update Account Acc
Set    Acc.Avail_Balance   = Acc.Avail_Balance + 2 * Acc.Avail_Balance / 100
     ,Acc.Pending_Balance = Acc.Pending_Balance +
                            2 * Acc.Pending_Balance / 100
Where  Acc.Cust_Id = 1;