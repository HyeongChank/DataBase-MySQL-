select 이름 from 학생;

select 이름, 전화번호 from 교수;

select * from 수강신청;

SELECT 이름 FROM 학생 where 이름 not in(select 학생.이름 from 학생 inner join 수강신청 on 학생.학번 = 수강신청.학번 where 연도 = '2018' and 학기 ='1');

select 과목명 from 학생, 수강신청, 수강신청내역, 과목 where 학생.학번 = 수강신청.학번 and 수강신청.수강신청번호 = 수강신청내역.수강신청번호 and 수강신청내역.과목번호 = 과목.과목번호 and 학생.이름='김민준' and 수강신청.연도='2018' and 수강신청.학기='1';

select 이름 from 학생 order by 이름 asc;

select 시도, 이름 from 학생 order by 시도 desc, 이름 desc;

select 수강신청번호, 학번, 날짜 from 수강신청 where 학번 = '1801001';

select 수강신청번호, 학번, 날짜 from 수강신청 where 날짜 < '2018-01-01' ;

select 과목번호, 과목명, 시수 from 과목 where 시수 in ('1','2','3');

select 이름, 학과 from 교수 where 전화번호 is null;

select 학번, 날짜 from 수강신청 where 날짜 between '2018-01-01' and '2018-07-31';

select 이름, 전자우편, 전화번호 from 교수 where 전화번호 is not null;

select * from 수강신청 where 학번 = '1601001' and 연도 = '2016';

select * from 수강신청 where 학번 in ('1601002','1801002');

select * from 수강신청 where 학번 in ('1601001','1601002') and 연도 = '2016';

select * from 수강신청 where 학번 in ('1601001','1601002');

select * from 수강신청 where 학번 != '1601001';

select * from 교수 where 이름 like '김%';

select * from 학과 where 학과명 like '%공학%';

select 과목번호, 과목명, 영문명 from 과목 where 영문명 like 'c%e';

select * from 학생 where 이름 like '__준';

select 수강신청번호, 과목번호, 평점 from 수강신청내역 where 과목번호 in ('k20045', 'k20056') and 평점 = '3';

select 수강신청번호, 과목번호, 평점 from 수강신청내역 where 과목번호 in ('k20045', 'k20056', 'y00132') order by 2;

select * from 수강신청내역 where 평점 != '-1';

select 학번, 이름, 시도 from 학생 where 학번 like '18%';

select 학번, 이름, 시도, 시군구 from 학생 where 시군구 like '%구';

select 과목번호, 과목명, 영문명 from 과목 where 영문명 like 'i%n';

select 과목번호, 과목명, 영문명 from 과목 where 과목명 like '컴퓨터__';

select 학번, 학과, 이름, 시도 from 학생 where 이름 like '%서%';

select concat(이름, 주소, 시군구, 시도, 우편번호)  as 학생정보 from 학생;

select 과목명, 담당교수 as 담당교수사번 from 과목;

select 수강신청번호, concat(연도,'학년도-', 학번,'학기') as 신청학년도 from 수강신청 where 학번 = '1801001';

select 학번, 이름, left(이름, 1) from 학생;

select 학번, 이름, 학년 from 학생 where left(학번, 2) = '16';

select 수강신청.수강신청번호, 수강신청.학번, 수강신청.날짜 from 수강신청, 학생, 학과 where 수강신청.학번 = 학생.학번 and 학생.학과 = 학과.학과번호 and 학과.학과명 !='컴퓨터정보학과';

select 수강신청번호, 학번, 날짜 from 수강신청 where left(날짜,7)='3';

