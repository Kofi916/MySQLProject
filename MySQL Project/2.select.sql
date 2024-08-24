SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT first_name, 
last_name, 
birth_date,
age,
age + 10
FROM parks_and_recreation.employee_demographics;

#PEMDAS parenthesis, exponents, multiplication, division, addition, subtraction


SELECT distinct gender
FROM parks_and_recreation.employee_demographics;

select *
FROM parks_and_recreation.employee_salary
where first_name = 'leslie';