SELECT e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO retirement_titles
FROM employees as e
LEFT JOIN titles as t
ON (t.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no; 


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, 
first_name,
last_name,
title,
to_date
INTO unique_titles
FROM retirement_titles
WHERE (to_date = '9999-01-01')
ORDER BY emp_no,to_date desc;

--create a table to show the employees count of each title.
SELECT COUNT(title) as "count", title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY "count" desc;

SELECT DISTINCT ON (e.emp_no)e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (birth_date >= '1965-01-01' AND birth_date <= '1965-12-31')
ORDER BY e.emp_no;
	   


