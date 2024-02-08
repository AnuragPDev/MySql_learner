We have a table name movie in movies database 
Table -movie
-----------------------------------------------------------------------------------------------------------------------
rating  genre   year  released  score   votes   director   writer   star   country   budget   gross   company   runtime
------------------------------------------------------------------------------------------------------------------------

#### QUESTIONS
-- aggregate function min max count avg sum-- 
 -- What is the total number of votes for all movies?-- 
 select sum(votes) from movies;
 
 -- What is the average score of the movies?--
 select avg(score) from movies;
 
-- How many movies were released in a 1996 year?
select count(year) from movies where year=1996;

-- What is the highest grossing movie?
SELECT MAX(gross) 
FROM movies;

-- What is the lowest grossing movie?
Select min(gross)
from movies;
-- What is the total budget for all movies?
select sum(budget)from movies;


-- How many movies were produced by columbia pictures?

Select count(*)
from movies 
where lower(company)= "columbia pictures"
;
-- What is the average runtime of the movies?
select avg(runtime)
from movies;

-- How many movies were directed by alan parker?
select count(*)  from movies where lower(director)="alan parker";

-- What is the total gross revenue for movies released in a 1996 year?
select sum(gross)
from movies
where year =1996;

-- What is the average budget for movies in a drama genre?
select avg(budget)
from movies 
where genre="Drama";



-- How many movies have a score greater than a 7 rating?
select count(*) from movies where score >7;


-- What is the maximum budget for movies released in a specific country?
select max(budget) from movies
where country ="Australia";


-- What is the minimum score for movies with a specific rating?

select min(score)
from movies
where rating="R" ;


-- How many movies were released in each year?

select count(*) as movies_released , year
from movies
group by year;

-- What is the total budget for movies released in each year?
select sum(budget),year
from movies
group by year;

-- What is the average gross revenue for movies in a specific genre?

select avg(gross)
from movies 
where genre="Drama";

-- How many movies were produced by each company?
select count(*) as movie_produced ,company
from movies
group by company;

-- What is the highest rated movie?

select max(score) from movies;

-- How many movies have a budget greater than a 500000?
select count(*)
from movies 
where budget > 5000000;
