use world;
show tables;
select * from city;
select * from city where CountryCode = 'IDN' limit 10;

select * from city order by population desc limit 10;

select Code, Name, Continent, Region, IndepYear as 'Tahun Merdeka' 
from country   where IndepYear is not null order by IndepYear asc limit 10; 

select * from country;
select Continent, sum(Continent) ,sum(Population), avg(LifeExpectancy) 
from country where Population > 0 group by Continent order by sum(Population) desc limit 6;

select Name, Continent, LifeExpectancy, GNP from country where Continent ='Asia' and LifeExpectancy > 
(select avg(LifeExpectancy) from country where Continent='Europe')
order by LifeExpectancy desc;
 
select CountryCode, Name, Language, Percentage  from countrylanguage join country
on country.Code = countrylanguage.CountryCode
where Language = 'English'
order by Percentage desc limit 10;
 
 select * from city where CountryCode = 'IDN';
 select * from country;
 
 select country.Name, country.Population, GNP, city.Name, city.Population from country join city
 on city.CountryCode = country.Code
 where Region ='Southeast Asia' group by country.Name order by country.Name;
 
 select Name, Population, GNP from country where Name='Argentina' or Name='Indonesia';
 