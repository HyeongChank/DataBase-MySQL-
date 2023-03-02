select 이름 from 학생;

select 이름, 전화번호 from 교수;

select * from 수강신청;

SELECT 이름 FROM 학생 where 이름 not in(select 학생.이름 from 학생 inner join 수강신청 on 학생.학번 = 수강신청.학번 where 연도 = '2018' and 학기 ='1');


select 과목명 from 학생, 수강신청, 수강신청내역, 과목 where 학생.학번 = 수강신청.학번 and 수강신청.수강신청번호 = 수강신청내역.수강신청번호 and 수강신청내역.과목번호 = 과목.과목번호 and 학생.이름='김민준' and 수강신청.연도='2018' and 수강신청.학기='1';

-- 조인
select distinct 이름 from 학생
inner join 수강신청 on 학생.학번 = 수강신청.학번;

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

select 수강신청번호, concat(연도,'학년도-', substr(수강신청번호,3,1),'학기') as 신청학년도 from 수강신청 where 학번 = '1801001';

select 학번, 이름, left(이름, 1) as '성' from 학생;

select 학번, 이름, 학년 from 학생 where left(학번, 2) = '16';

select 수강신청.수강신청번호, 수강신청.학번, 수강신청.날짜 from 수강신청, 학생, 학과 where 수강신청.학번 = 학생.학번 and 학생.학과 = 학과.학과번호 and 학과.학과명 !='컴퓨터정보학과';

select 수강신청번호, 학번, 날짜 from 수강신청 where left(날짜,7) = '2018-03';


select 수강신청번호, 과목번호, 평점, (case 평점 when 0 then '미취득' else '취득' end) as 취득여부 from 수강신청내역 where 평점 not in ('-1');

select concat(이름, "(" , 시도, ")") as 이름 from 학생;

select 담당교수, concat(과목명, "(", 영문명, ")") as 과목명 from 과목;

select 과목명, 학점, 학점 * 15 '총시간수' from 과목 order by 과목명 asc;

select 학번, right(이름,2) as 이름 from 학생;

select 학번, 날짜 from 수강신청 where substr(날짜, 7,4)='3-01';


select 학번, 이름, 학과, (case 학과명 when '컴퓨터정보학과' then '컴퓨터정보학과' else '타과' end)  from 학생, 학과 where 학생.학과 = 학과.학과번호;

select count(*) as 신청수 from 수강신청내역;

select count(*) as 과목수 from 수강신청내역 where 수강신청번호 = '1810002';

select count(*) as 교수수 from 교수 where 전화번호 is not null;

select count(distinct 담당교수) as 강의교수수 from 과목 ;

select avg(학점) as 평균학점, sum(학점) as 총학점 from 과목;

select max(학점) as 최대학점, min(학점) as 최소학점 from 과목;

select 담당교수, count(*) as 과목수 , sum(학점) as 학점수 from 과목 group by 담당교수;

select count(distinct 과목번호) as 과목수 from 수강신청내역;

select count(distinct 학번) as '학생 수' from 수강신청;

select count(distinct 과목번호) as '과목수', avg(평점) from 수강신청내역 where 수강신청번호 = 1810001;

-- 57번
select 과목번호, count(수강신청번호) as 수강자수 from 수강신청내역 group by 과목번호;

select 과목번호, count(수강신청번호) as 수강자수 from 수강신청내역 where 평점 not in ('-1') group by 과목번호;

select 과목번호, count(수강신청번호) '수강자수', avg(평점) from 수강신청내역 where 평점 not in ('-1') group by 과목번호;

-- 60
select 과목번호, count(*) '수강자수', avg(평점) from 수강신청내역 where 평점 not in ('-1') group by 과목번호 having count(*)>=4;
-- 61
select 과목번호, count(*) '수강자수', avg(평점) '평균평점' from 수강신청내역 where 평점 not in ('-1') group by 과목번호 having count(*)>=4 order by '평균평점' asc;

select distinct 수강신청번호, count(*), avg(평점) '평균평점' from 수강신청내역 where 평점 not in ('-1') group by 수강신청번호 having count(*) >=3;

select 학번, 학과, 이름, 학과명 from 학생, 학과 where 학생.학과=학과.학과번호;

select 수강신청번호, 수강신청내역.과목번호, 과목명 from 수강신청내역, 과목 where 수강신청내역.과목번호=과목.과목번호 and 수강신청번호 in ('1610001', '1810001');

select 수강신청번호, 수강신청.학번, 학생.이름 from 수강신청, 학생 where 수강신청.학번=학생.학번 and left(수강신청번호,2)='18' order by 수강신청번호 asc;

select 수강신청.수강신청번호, 수강신청내역.과목번호, 과목명 from 수강신청, 수강신청내역, 과목 where 학번 = '1801001' and 수강신청.수강신청번호 = 수강신청내역.수강신청번호 and 수강신청내역.과목번호=과목.과목번호;

select count(수강신청.수강신청번호) as '과목수', sum(수강신청내역.평점) as '평점' from 수강신청, 수강신청내역, 과목 where 학번 = '1801001' and 수강신청.수강신청번호 = 수강신청내역.수강신청번호 and 수강신청내역.과목번호=과목.과목번호;

select 수강신청번호, 학생.학번, 이름 from 수강신청, 학생 where 학생.학번 = 수강신청.학번;

select 학번, 학과, 이름, 학과명 from 학생, 학과 where 학생.학과 = 학과.학과번호;

select 수강신청번호, 과목.과목번호, 과목명 from 수강신청내역, 과목 where 수강신청번호 in ('1810001', '1610001') and 수강신청내역.과목번호 = 과목.과목번호;

select 수강신청번호, 수강신청.학번, 이름 from 수강신청, 학생 where 수강신청.학번=학생.학번 and left(수강신청번호,2) = '18' order by 수강신청번호 asc;

select 수강신청.수강신청번호, 수강신청내역.과목번호, 과목명 from 수강신청, 수강신청내역, 과목 where 학번 = '1801001' and 수강신청.수강신청번호 = 수강신청내역.수강신청번호 and 수강신청내역.과목번호=과목.과목번호;

select 사번, 학과, 이름 from 교수 where 학과=(select 학과 from 교수 where 사번='1000004') ;

select 과목.과목번호, 과목명, count(수강신청번호), avg(평점) from 과목, 수강신청내역 where 학기 = '1' and 과목.과목번호 = 수강신청내역.과목번호 group by 과목번호;





