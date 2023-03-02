select custid '고객번호', round(sum(saleprice)/count(*), -2) '평균금액'
from orders
group by custid;

select bookid , replace(bookname, '야구', '농구') bookname, publisher, price
from book;

select bookname, char_length(bookname), length(bookname)
from book
where publisher = '굿스포츠';

select substr(name, 1, 1) '성', count(*)
from customer
group by substr(name, 1,1);

select orderid, orderdate, adddate(orderdate, interval 10 day) '확정일자'
from orders;


select orderid, str_to_date(orderdate, '%Y-%m-%d'), custid, bookid
from orders
where orderdate = date_format('20140707', '%y%m%d');

select sysdate(), date_format(sysdate(), '%Y/%m/%d %M %h:%s');

create table mybook
(
bookid char(10),
price char(10),
primary key(bookid)
);

insert into mybook(bookid, price) values('1', '10000');
insert into mybook(bookid, price) values('2', '20000');
insert into mybook(bookid, price) values('3', null);

select * from mybook where price is null;

select bookid, ifnull(price, '가격없음') from mybook;

set @seq:=0;
select (@seq:=@seq+1), custid, name, phone
from customer
where @seq<2;

select custid, (select name from customer where customer.custid = orders.custid), sum(saleprice) from orders group by custid;

select cs.name, sum(od.saleprice) 'total' from customer cs, orders od where cs.custid= od.custid group by cs.name;

select cs.name, sum(od.saleprice) 'total'
from (select custid, name from customer where custid <=2) cs, orders od
where cs.custid = od.custid
group by cs.name;

select orderid, saleprice from orders where saleprice <= (select avg(saleprice) from orders);

select round(avg(saleprice),0) from orders;
select avg(saleprice) from orders;
select orderid, custid, saleprice from orders od where saleprice >(select avg(saleprice) from orders so where od.custid = so.custid);

select orderid, saleprice from orders where saleprice > all(select saleprice from orders where custid='3');
select sum(saleprice) from orders where custid='3';

select sum(saleprice) 'total' from orders od where exists(select * from customer cs where address like '%대한민국%' and cs.custid = od.custid);

create view vw_customer
as select *
from customer where address like '%대한민국%';

-- 기존 테이블을 변경하면 뷰 자료 자동으로 변경됨
select * from vw_customer ;
insert into customer (custid, name, address, phone) values ('100','khc','대한민국 부산','000-1234-1234');

create view vw_orders(orderid, custid, name, bookid, bookname, saleprice, orderdate)
as select od.orderid, od.custid, cs.name, od.bookid, bk.bookname, od.saleprice, od.orderdate
from orders od, customer cs, book bk
where od.custid = cs.custid and od.bookid = bk.bookid;

select * from vw_orders where name = '김연아';