commit;
rollback;
select @@autocommit;
set autocommit =0;
drop table book1;
create table book1(select*from book);
create table book2(select*from book);

delete from book1;
rollback;
-- rollback해도 book1 내용 delete한거 안 돌아옴
delete from book2 where price>10000;
rollback;
select* from book2;

-- rollback하면 되돌아가기 됨
start transaction;
delete from book1;
delete from book2;
rollback;
select * from book1;

start transaction;
savepoint A;
delete from book1;
savepoint B;
delete from book2;
rollback to savepoint B;
commit;