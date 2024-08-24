select *
from parks_and_recreation.employee_demographics
where employee_id in 
                   (select employee_id
                     from  parks_and_recreation.employee_salary
                     where dept_id = 1);
                     
select first_name, salary, avg(salary)
from parks_and_recreation.employee_salary;

select first_name, salary,
(select avg(salary)
from parks_and_recreation.employee_salary)
from parks_and_recreation.employee_salary;

select gender, avg(age), max(age), min(age), count(age)
from parks_and_recreation.employee_demographics
group by gender;

select *
from 
(select gender, 
avg(age) as avg_age, 
max(age) as max_age, 
min(age) as min_age, 
count(age) as count_age
from parks_and_recreation.employee_demographics
group by gender) as Agg_table;

select avg(max_age)
from 
(select gender, 
avg(age) as avg_age, 
max(age) as max_age, 
min(age) as min_age, 
count(age) as count_age
from parks_and_recreation.employee_demographics
group by gender) as Agg_table
;


