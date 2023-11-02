SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;

-- List employee number, last name, first name, sex, and salary for each employee.
SELECT employees.emp_no,
last_name,
first_name,
sex,
salary 
FROM employees 
LEFT JOIN salaries 
ON employees.emp_no = salaries.emp_no
ORDER BY emp_no;

-- Employees who were hired in 1986
SELECT * FROM employees 
WHERE DATE_PART('year', hire_date) = 1986
ORDER BY emp_no;

-- Manager of each department including their department number, department name, employee number, last name, and first name.
SELECT dept_manager.dept_no,
departments.dept_name,
dept_manager.emp_no,
employees.last_name,
employees.first_name
FROM dept_manager
LEFT JOIN departments
ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees
ON dept_manager.emp_no = employees.emp_no
ORDER BY emp_no;

-- Employee's first name, last name, department number, department name, and employee number.
SELECT employees.emp_no,
employees.last_name,
employees.first_name,
dept_emp.dept_no,
departments.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
ORDER BY emp_no;

-- First name, last name, sex, of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%';

-- All employees from the Sales Departments including employee number, last name, and first name.
SELECT employees.emp_no,
employees.last_name,
employees.first_name,
dept_emp.dept_no
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales';

-- All employees from the Sales and Debelopment departments including employee number, last name, first name, and department name.
SELECT employees.emp_no,
employees.last_name,
employees.first_name,
dept_emp.dept_no,
departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name in ('Sales', 'Development');

-- Frequency counts of employee last names in descending order.
SELECT last_name,
COUNT(*) AS freq_count
FROM employees
GROUP BY last_name
ORDER BY freq_count DESC;