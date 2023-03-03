show index from dept_emp;

show table status like 'dept_emp';

alter table dept_emp drop foreign key dept_emp_ibfk_1;

alter table dept_emp drop foreign key dept_emp_ibfk_2;

drop index dept_no on dept_emp;

alter table dept_emp drop primary key;

analyze table dept_emp;
select * from dept_emp order by emp_no limit 1;
select * from dept_emp order by emp_no desc limit 1;

select count(*) from dept_emp;

-- explain해서 row 값 확인
explain select* from dept_emp where emp_no = 10001;
explain select* from dept_emp where emp_no = 499999;
-- index 추가하니 explain에서 row 값 1됨 검색 한번에 했다는 뜻 index 사용해야 하는 이유(검색 속도 향상)
alter table dept_emp add primary key ( emp_no, dept_no);

select count(*) from dept_emp where dept_no = 'd006';
create index dept_emp on dept_emp(dept_no);
explain select * from dept_emp where dept_no = 'd006';

select * from dept_emp where dept_no = 'd006' and from_date = '1996-11-26';
alter table salaries drop foreign key salaries_ibfk_1;
alter table dept_manager drop foreign key dept_manager_ibfk_1;
alter table titles drop foreign key titles_ibfk_1;
alter table employees drop primary key;


analyze table employees, dept_emp;

explain select a.emp_no, b.first_name, b.last_name
from dept_emp a inner join employees b
on a.emp_no = b.emp_no;

explain select a.emp_no, b.first_name, b.last_name
from dept_emp a inner join employees b
on a.emp_no = b.emp_no
where a.emp_no = 10001;

alter table employees add primary key (emp_no);
alter table dept_emp add primary key (emp_no, dept_no);