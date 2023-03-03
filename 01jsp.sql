SELECT * FROM world.countrylanguage;

select count(*) from countrylanguage where Language = 'english';
select language from countrylanguage where countrycode = 'kor';

select continent, name from country, countrylanguage where country.Code=countrylanguage.CountryCode and Language ='english' and IsOfficial = 't';
select continent, count(*) from countrylanguage, country where country.Code=countrylanguage.CountryCode and Language='english' group by continent;