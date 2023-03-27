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