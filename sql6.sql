delimiter $$
create procedure num6()
begin
declare mybookid varchar(40);
declare mysaleprice int;
declare mycustid varchar(40);
select count(bookid), sum(orders.saleprice) from orders  group by orders.custid;
end$$