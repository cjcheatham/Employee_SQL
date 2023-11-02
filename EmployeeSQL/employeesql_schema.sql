-- Drop tables if they already exits
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

-- Create tables 
CREATE TABLE departments(
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL	
);
CREATE TABLE employees(
	emp_no int NOT NULL PRIMARY KEY, 
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date date NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date date NOT NULL
);
CREATE TABLE dept_emp(
	emp_no int NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
CREATE TABLE dept_manager(
	dept_no VARCHAR(10),
	emp_no int,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
CREATE TABLE salaries(
	emp_no bigint NOT NULL,
	salary bigint NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);
CREATE TABLE titles(
	title_id VARCHAR(10) NOT NULL,
	title VARCHAR(30)
);


