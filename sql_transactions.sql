use prsdb;
-- transactions
start transaction;
update users set phone = '888' where id = 1;
/*rollback*/ commit;
select * from users;