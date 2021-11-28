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

-- create a list of employees eligible to be mentors
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
e.first_name, 
e.last_name, 
e.birth_date,
de.from_date,
de.to_date,
ti.title
INTO mentorship_eligibilty
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

select * from mentorship_eligibilty;

-- create list to broaden potential mentors
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
e.first_name, 
e.last_name, 
e.birth_date,
de.from_date,
de.to_date,
ti.title
INTO expanded_mentorship_eligibilty
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
	AND (e.birth_date BETWEEN '1963-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

-- create new list w/ older sales and development employees
ELECT DISTINCT ON (e.emp_no) e.emp_no, 
e.first_name, 
e.last_name, 
e.birth_date,
de.from_date,
de.to_date,
ti.title
INTO sales_development_mentors
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
	AND (e.birth_date BETWEEN '1963-01-01' AND '1965-12-31')
	AND (de.dept_no = 'd007')
	OR (de.dept_no = 'd005')
ORDER BY e.emp_no;
