create table account(
accnum char(10) primary key,
amount int not null default 0);

insert into account values('a',45000);
insert into account values('b',30000);
select * from account;

start transaction;
update account
set amount = amount-40000
where accnum = 'a';
update account
set amount = amount+40000
where accnum = 'b';
rollback;

delimiter //
create trigger afterupdateaccount
after update on account for each row
begin
update account
set amount = amount - new.amount 
where accnum = a;

end;//
delimiter ;