
select *
from parks_and_recreation.employee_demographics;

select *
from parks_and_recreation.employee_salary;

delimiter $$
create trigger employee_insert
    after insert on parks_and_recreation.employee_salary
    for each row
begin
	insert into parks_and_recreation.employee_demographics(employee_id, first_name,last_name)
    values (new.employee_id, new.first_name, new.last_name);
end$$
delimiter ;

insert into parks_and_recreation.employee_salary(employee_id, first_name,last_name,occupation,salary,dept_id)
values(13,'Jean', 'Baafour', 'Entertainment 720 CEO', 1000000, null);

#Events------
select *
from  parks_and_recreation.employee_demographics;


delimiter $$
create event delete_retirees
on schedule every 30 second
do
begin
	delete
	from  parks_and_recreation.employee_demographics
    where age >= 60;
end$$
delimiter ;

show variables like 'event%';
