SELECT * FROM world.city where countrycode = "kor" order by Population desc;

select countrycode,population from world.city order by countrycode, Population desc;

select * from world.city where CountryCode = "kor" or "chn" or "jpn";

select * from world.city where countrycode = "kor" and Population >= 1000000;

select * from world.city where countrycode = "kor" order by population desc limit 10;

select * from world.city where countrycode = "kor" and population>=1000000 and population<=5000000;

select count(*) from world.city where countrycode = "kor";

-- city 테이블에서 국가코드가 'KOR'인 도시들의 인구수 총합을 구하시오.

select sum(population) from world.city where countrycode = "kor";
-- Hint) sum

-- city 테이블에서 국가코드가 'KOR'인 도시들의 인구수 중 최소값을 구하시오. 단 결과를 나타내는 테이블의 필드는 "최소값"으로 표시하시오

-- Hint) min
select min(population) from world.city where countrycode = "kor";

-- city 테이블에서 국가코드가 'KOR'인 도시들의 평균을 구하시오.


-- Hint) avg
select avg(population) from world.city where countrycode = "kor";
-- city 테이블에서 국가코드가 'KOR'인 도시들의 인구수 중 최대값을 구하시오. 단 결과를 나타내는 테이블의 필드는 "최대값"으로 표시하시오.

-- Hint) max
select max(population) as "최댓값" from world.city where countrycode = "kor";
-- country 테이블 각 레코드의 Name 칼럼의 글자수를 표시하시오.

-- Hint) length()
select length(
-- country테이블의 나라명(Name 칼럼)을 앞 세글자만 대문자로 표시하시오.

-- Hint) upper, mid 함수

-- country테이블의 기대수명(LifeExpectancy)을 소수점 첫째자리에서 반올림해서 표시하시오.

-- Hint) round()