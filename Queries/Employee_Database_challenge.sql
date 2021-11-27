-- list of employees eligible for retirement w/ titles
select e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date
into retirement_titles
from employees as e
inner join titles as ti
on (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by e.emp_no;

select * from retirement_titles;