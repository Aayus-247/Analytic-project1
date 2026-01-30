--SELECT TOP 10 *
--FROM dbo.covid_dataset;

SELECT
continent,day,time,cases,Deaths
from covidanalysis..covid_dataset
order by 1,2

SELECT
continent,cases,tests,Deaths,death_percentage=(Deaths/cases)*100,recovered
from covidanalysis..covid_dataset
order by 1,2


SELECT 
    continent,
    MAX((Deaths * 100.0) / Cases) AS max_death_percentage,
    recovered
FROM covidanalysis..covid_dataset
where continent is not null
GROUP BY continent, recovered
ORDER BY 1, 2;


SELECT
sum(cases) as Total_cases,sum(Deaths) as total_deaths,sum((Deaths * 100.0) / Cases) as Total_death_percent
from covidanalysis..covid_dataset
order by 1,2

SELECT
    continent,
    SUM(cases) AS total_cases,
    SUM(deaths) AS total_deaths
FROM covidanalysis..covid_dataset
GROUP BY continent
ORDER BY total_cases DESC;


SELECT continent, cases
FROM covid_dataset
order by cases desc;

