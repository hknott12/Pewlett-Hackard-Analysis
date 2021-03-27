--Retirement Titles Table
SELECT
e.emp_no,
e.first_name,
e.last_name,
titles.title, 
titles.from_date,
titles.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles
ON (e.emp_no = titles.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' and '1955-12-31'
ORDER BY e.emp_no;

--Unique Titles Table
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC