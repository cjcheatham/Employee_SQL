# EMPLOYEE DATABASE ANALYSIS

## Data
The data folder contains the following csv files which contain data for this employee database:

* departments

* dept_emp

* dept_manager

* employees

* salaries

* titles

where:

* Departments lists the department number (dept_no) and department name (dept_name).

* Dept_emp lists the employees in each department by their employee number (emp_no) and their department number (dept_no).

* Dept_manager lists the managers by their employee number (emp_no) and their department number (dept_no).

* Employees lists the employee number (emp_no), employee title id (emp_title_id), birth date (birth_date), first and last names (first_name, last_name), gender (sex), and hire date (hire_date) for each employee. 

* Salaries list the employee number (emp_no) and salary (salary) for each employee.

* Titles lists the title id (title_id) and the name of each title (title). The title_id is the same as emp_title_id.

## Analysis 
Using SQL, we will analyze all data based on the following stipulations:

1. List the employee number, last name, first name, sex, and salary of each employee.

2. List the first name, last name, and hire date for the employees who were hired in 1986.

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).