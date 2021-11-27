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

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title

INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.to_date DESC;

select * from unique_titles;

-- create a list of the number of employees retiring by title
SELECT COUNT(ut.title) AS "count",
ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY "count" DESC;

select * from retiring_titles;