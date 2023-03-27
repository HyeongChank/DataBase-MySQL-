SET GLOBAL log_bin_trust_function_creators = 1;

delimiter //
create procedure proc7()
begin
	declare done boolean default false;
	declare msum int;
	declare mid int;
	declare mname varchar(20);
    declare cursor1 cursor for select custid, name from customer;
	declare continue handler for not found set done = true;
    open cursor1;
    myloop : loop
    fetch cursor1 into mid, mname;
    select sum(saleprice) into msum from orders where custid = mid;
    if done then leace mloop;
    end if;
    select mname, msum;
    end loop mloop;
    close cursor1;
    end$$
    delimiter //