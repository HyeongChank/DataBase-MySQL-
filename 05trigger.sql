delimiter //
create trigger afterinsert입고
after insert on 입고 for each row
begin
update 상품
set 재고수량 = 재고수량 + new.입고수량
where 상품코드 = new.상품코드;
end;//
delimiter ;


show triggers;
drop trigger afterupdate입고;
update 상품
set 재고수량 = 3
where 상품코드 = "AAAAAA";

delimiter //
create trigger afterupdate입고
after update on 입고 for each row
begin
update 상품
set 재고수량 = 재고수량 -old.입고수량 + new.입고수량

where 상품코드 = new.상품코드;
end;//
delimiter ;

update 입고
set 입고수량 =4
where 입고번호 = 1;

delimiter //
create trigger afterdelete입고
after delete on 입고 for each row
begin
update 상품
set 재고수량 = 재고수량 -old.입고수량
where 상품코드 = old.상품코드;
end;//
delimiter ;

delimiter //
create trigger afterinsert판매
after insert on 판매 for each row
begin
update 상품
set 재고수량 = 재고수량 -new.판매수량
where 상품코드 = new.상품코드;
end;//
delimiter ;
insert into 판매(판매번호, 상품코드, 판매일자, 판매수량, 판매단가) values(1, "AAAAAA", "2022-03-03", 2, 200000);