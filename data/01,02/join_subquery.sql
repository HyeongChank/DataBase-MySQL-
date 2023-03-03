-- SELECT sum(saleprice)
-- select count(saleprice) as '건수', 
-- sum(saleprice) as '합계', 
-- min(saleprice) as '최소액', 
-- max(saleprice) as '최대액',
-- avg(saleprice) as '평균액'
select *
from orders;

select custid, count(*), sum(saleprice)
FROM bookstore.orders
where saleprice>8000
group by custid
having count(orderid) >=2;

-- 조인
select*
from customer, orders
where customer.custid * orders.custid;

select name, sum(saleprice)
from customer, orders
where customer.custid = orders.custid
group by customer.name;

select customer.name, book.bookname
from customer, orders, book
where customer.custid = orders.custid and orders.bookid = book.bookid and saleprice =20000;

select customer.name, saleprice
from customer left outer join orders on customer.custid = orders.custid;

select sum(orders.saleprice)
from customer, orders
where customer.custid = orders.custid;

-- 서브쿼리
select bookname
from book
where price = (select max(price) from book);



-- where custid = '2';
