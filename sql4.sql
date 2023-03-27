delimiter $$    
create procedure print()
begin
declare mypublisher varchar(40);
declare myprice int;
select publisher, sum(price) from book, orders where book.bookid = orders.bookid group by publisher;
End $$