delimiter //
create procedure 학과_입력_수정(
in p학과번호 char(2),
in p학과명 char(20),
in p전화번호 char(20))
begin
	declare cnt int;
    