create database org;
use org;
create table emp (id int, 
name varchar(300),
dept varchar(300),
salary int);
insert into emp values (1,"Peter","IT",30000); 
insert into emp values (2,"Meg","IT",330000);
insert into emp values (3,"Louis","Data",360000);
insert into emp values (4,"Steiwe","Data",20000);
select * from emp
order by salary desc;

-- first highest salary 
select * from emp 
where salary =(select max(salary) from emp);

-- second highest salary 
select max(salary)
from emp
where salary < (Select max(salary) from emp);

select salary
from (select * , row_number() over(order by salary desc ) as sal_rank  from emp) as a 
where sal_rank =;
