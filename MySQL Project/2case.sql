SELECT first_name,
last_name,
age,
CASE 
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 30 and 50 THEN 'Old'
    WHEN age >= 50 THEN "On Death's Door"
END AS Age_Bracket
FROM parks_and_recreation.employee_demographics;


#---Pay Increase and Bonus
#---< 50000 = 5%
# ----> 50000 = 7%
#-----Finance = 10% bonus


select first_name, last_name, salary,
case 
	when salary < 50000 then salary + (salary * 0.05)
    when salary > 50000 then salary + (salary * 0.07)
end as new_salary,
case
	when dept_id = 6 then salary * .10
end as bonus
from parks_and_recreation.employee_salary;

