

create temporary table temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);

Select *
from temp_table; 

insert into temp_table
values ('Kofi', 'Baako', 'Lord of the Rings: The Two Towers');

Select *
from temp_table;

select *
from parks_and_recreation.employee_salary;

create temporary table salary_over_50k
select *
from parks_and_recreation.employee_salary
where salary >= 50000;

select *
from salary_over_50k;
