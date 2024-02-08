We have a table name movie in movies database 
Table -movie
-----------------------------------------------------------------------------------------------------------------------
rating  genre   year  released  score   votes   director   writer   star   country   budget   gross   company   runtime
------------------------------------------------------------------------------------------------------------------------

#### QUESTIONS
What is the total number of votes for all movies?

select sum(votes) from movies;


What is the average score of the movies?

select avg(score) from movies;



