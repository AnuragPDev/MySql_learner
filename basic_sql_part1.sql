-- ---------------------------Basic things to learn SQL for begineers ----------------------------------

-- to create database we use create statment 
Create database myDb;

-- to use myDb we need to select that database 
use myDb;

-- to create table inside that database we use create statement 
create table my_first_table 
( column_1 int ,
  column_2 varchar(20), 
  column3 boolean );
  
  -- to insert some data inside the tavble use insert statement
   insert into my_first_table (column_1 , column_2, column3) values (1,'Coulmn1', True );


