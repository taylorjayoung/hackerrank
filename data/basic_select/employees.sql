--Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

--employee names: 
select name from employee 
order by name;

--salary: 
select name from employee 
where salary > 2000 and months < 10
order by employee_id;