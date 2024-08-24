
with CTE_Example as
(select gender ,
avg(salary) as avg_salary, 
max(salary) as max_salary,
min(salary) as min_salary, 
count(salary) as count_salary
from parks_and_recreation.employee_demographics dem
join parks_and_recreation.employee_salary sal
      on dem.employee_id = sal.employee_id
group by gender)
select avg(avg_salary)
from CTE_Example
;


with CTE_Example (Gender, AVG_Sal, MAX_Sal, MIN_Sal, COUNT_Sal) as
(select gender ,
avg(salary) as avg_salary, 
max(salary) as max_salary,
min(salary) as min_salary, 
count(salary) as count_salary
from parks_and_recreation.employee_demographics dem
join parks_and_recreation.employee_salary sal
      on dem.employee_id = sal.employee_id
group by gender)
select *
from CTE_Example
;

with CTE_Example as
(select employee_id, gender, birth_date
from parks_and_recreation.employee_demographics 
where birth_date > '1985-01-01'),
CTE_Example2 as
(select employee_id, salary
from parks_and_recreation.employee_salary
where salary > 50000)
select *
from CTE_Example
join CTE_Example2
     on CTE_Example.employee_id = CTE_Example2.employee_id
;