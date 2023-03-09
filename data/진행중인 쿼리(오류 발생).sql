use newwork;
delimiter //
create procedure 학과(
 in 학과번호 char(2),
 in 학과명 char(20),
 in 전화번호 char(20))
begin
insert into 학과(학과번호, 학과명, 전화번호)
values(08, '컴퓨터보안학과', '022-200-7000');
end;
// delimiter ;