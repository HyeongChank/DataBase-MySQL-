delimiter $$
create procedure expen()
begin
declare mybookname varchar(40);
declare myprice int;
declare mypublisher varchar(40);
select b1.booknamenum5
from book b1
where b1.price > (select avg(b2.price) from book b2 where b2.publisher = b1.publisher);
end$$
