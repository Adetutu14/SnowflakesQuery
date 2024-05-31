//First start on query in the covid 19 table
select * from covid_table
limit 10;

//1.Records for the following observation dates - 1/22/2020,1/27/2020, 1/31/2020
select *
from covid_table
where observationdate = '1/22/2020' or observationdate = '1/27/2020' or observationdate = '1/31/2020';

//2.Retrieve a summary of all the cases. This should include the following information for each country: The total number of confirmed cases The total number of deaths The total number of recoveries.
select  country, sum(confirmed) confirmed_cases, sum(deaths) death_cases, sum(recovered) recovery_cases 
from covid_table
group by country
order by confirmed_cases desc;

//3.Retrieve the number of confirmed cases, deaths, and recoveries for Mainland China.
select sum(confirmed), sum(deaths), sum(recovered)
from covid_table
where country = 'Mainland China';

//4. Retrieve information for the top 5 countries with the highest confirmed cases.
select country, sum(confirmed) as confirmed_cases
from covid_table
group by country
order by 2 desc
limit 5;

//5. Retrieve information for the top 5 countries with the highest death cases specifically for 27th and 31st of January 2020.
create or replace table analytics.public.highest_deaths_by_country as
select country, observationdate, sum(deaths) as death_case
from covid_table
where observationdate = '1/27/2020' or observationdate ='1/31/2020'
group by 1,2
order by 3 desc
limit 5;