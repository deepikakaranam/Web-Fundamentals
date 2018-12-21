use world;
select * from city;
select * from country;
select * from countrylanguage;
/*What query would you run to get all the countries that speak Slovene? Your query should
 return the name of the country, language and language percentage. 
Your query should arrange the result by language percentage in descending order. (1)*/
select name , 
Language,Percentage as lang_percentage
from country
 join countrylanguage on country.Code=countrylanguage.countrycode
where language="slovene"
order by lang_percentage desc;
/*2. What query would you run to get all the cities in Mexico with a population of greater 
than 500,000? Your query should arrange the result by population in descending order. (1)*/
select city.Name as city_name,city.Population,country.Name as country_name
from city
join country
on city.CountryCode=country.Code
where countrycode="mex" and city.Population>500000
order by city.Population desc;
/*3. What query would you run to get all languages in each country with a percentage greater than 89%?
 Your query should arrange the result by percentage in descending order. (1)*/
 select countrylanguage.Language as lang,countrylanguage.Percentage as percent,country.Name as country_name
 from countrylanguage
 join country
 on countrylanguage.countrycode=country.code
 where percentage>89
 order by percentage desc;
 /*4.What query would you run to get countries with only Constitutional Monarchy with a capital greater 
 than 200 and a life expectancy greater than 75 years? (1)*/
 select Name as country_name, GovernmentForm as Government, Capital, LifeExpectancy
 from country
 where GovernmentForm="Constitutional Monarchy" and Capital>200 and LifeExpectancy >75;
 
 /*5.What query would you run to get all the countries with Surface Area below 501 and 
 Population greater than 100,000? (2)*/
 
 select Name as country_name,SurfaceArea,Population
 from country
 where SurfaceArea<501 and Population>100000;
  /*6.What query would you run to get all the cities of Argentina inside the Buenos Aires district and 
  have the population greater than 500, 000? The query should return the Country Name, City Name,
  District and Population. (2)*/
  select country.Name as country_name,city.Name as city_name, city.district,city.population
  from city
  join country
  on city.CountryCode=country.code
  where district="Buenos Aires" and city.population>500000;
  
   /*7.What query would you run to summarize the number of countries in each region? The query should display
   the name of the region and the number of countries. Also, the query should arrange the result by the 
   number of countries in descending order. (2)*/
   select Region,count(city.countrycode)
   from country
   join city
   on country.code=city.countrycode
   group by  city.countrycode 
   order by  count(city.countrycode) desc;
  /*What query would you run to display the total number of cities for each country? Your query should return 
  the name of the country and the total number of cities. Your query should arrange the result by
  the number of cities in descending order. (3)*/
    select country.name as country_name, count(city.name)
    from country
    join city
    on country.code=city.countrycode
    group by country.name
    order by count(city.name) desc; 