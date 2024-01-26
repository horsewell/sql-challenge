SELECT * FROM departments;
SELECT * FROM titles;

SELECT (SELECT COUNT(*) FROM employees) AS TOTAL_EMP, 
		(SELECT COUNT(*) FROM salaries) AS TOTAL_SALARIES, 
		(SELECT COUNT(*) FROM titles) AS TOTAL_TITLES, 
		(SELECT COUNT(*) FROM dept_emp) AS TOTAL_EMP_IN_DEPTS,
		(SELECT COUNT(*) FROM departments) AS TOTAL_DEPTS, 
		(SELECT COUNT(*) FROM dept_manager) AS TOTAL_DEPT_MANAGERS;

SELECT first_name, last_name, sex, hire_date, s.salary, d.dept_name
FROM employees AS e
JOIN salaries AS s ON e.emp_no = s.emp_no
JOIN departments AS d ON d.dept_no IN (SELECT dept_no FROM dept_emp AS de WHERE de.emp_no = e.emp_no);
	
SELECT first_name, last_name, d.dept_name
FROM employees AS e
JOIN departments AS d ON d.dept_no IN (SELECT dept_no FROM dept_manager AS de WHERE de.emp_no = e.emp_no)
ORDER BY d.dept_name ASC

