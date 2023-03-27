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


select * from account;*/
select* from book;
/*select publisher, sum(price) from book group by publisher;*/
select publisher, avg(price) from book group by publisher having avg(price) > 8000;

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