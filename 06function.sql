delimiter //
/*CREATE PROCEDURE insertCustomer (
 in custid integer,
 in name varchar(40),
 in address varchar(50),
 in phone varchar(20)
 )
BEGIN
 insert into book(custid, name, address, phone)
 values(mycustid, myname, myaddress, myphone);
END;

create procedure findnp(
	in bookname varchar(40)
    )
BEGIN
	select bookname, price from book;
End;


select * from account;
select* from book;
/*select publisher, sum(price) from book group by publisher;*/
/*select publisher, avg(price) from book group by publisher having avg(price) > 8000;

select bookname from book group by  having avg(price) >8000;

drop procedure if exists bookstrore.cursor_pro3;
delimiter $$
create procedure cursor_pro3()
begin
	declare myname varchar(40);
    declare myprice int;
    declare endOfRow boolean default false;
    declare bookCursor cursor for select bookname, price from book where publosher = '이상미디어';
    declare continue handler for not found set endOfRow= True;
    open bookCursor;
    cursor_loop:loop
		fetch bookCursor into myname, myprice;
        if endOfRow then Leave cursor_loop;
        end if;
        select myname, myprice;
	end loop cursor_loop;
    close bookCursor;
end $$
delimiter ;

select b1.bookname
from book b1
where b1.price > (select avg(b2.price) from book b2 where b2.publisher = b1.publisher);

select custid, count(*) as 구매권수, sum(saleprice)
from orders
group by custid;

create procedure 'total'()
begin
select 
*/
delimiter //
CREATE FUNCTION fnc_Interest(
Price INTEGER) RETURNS INT
BEGIN
DECLARE myInterest INTEGER;
-- 가격이 30,000원 이상이면 10%, 30,000원 미만이면 5%
IF Price >= 30000 THEN SET myInterest = Price * 0.1;
ELSE SET myInterest = Price * 0.05;
END IF;
RETURN myInterest;
END; //
delimiter ;

delimiter $$
create function grade(cid int)
returns varchar(10)
begin
	declare total int;
    select sum(saleprice) into total from orders where custid=cid;
    if total >= 20000 then return '우수';
    else return '보통';
    end if;
    end $$