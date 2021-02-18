SELECT * FROM departments
SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM employees
SELECT * FROM salaries
SELECT * FROM titles

-- List for each employee: employee number, last name, first name, sex, salary
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries on salaries.emp_no = employees.emp_no;


-- List employees hired in 1986: first name, last name, hire date
SELECT last_name, first_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31' 


-- List department managers: department number, department name, the manager's employee number, last name, first name
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM employees
INNER JOIN dept_manager on dept_manager.emp_no = employees.emp_no
INNER JOIN departments on departments.dept_no = dept_manager.dept_no


-- List the department of each employee: employee number, last name, first name, department name
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp on dept_emp.emp_no = employees.emp_no
INNER JOIN departments on departments.dept_no = dept_emp.dept_no


-- For employees whose first name is "Hercules" and last names begin with "B": first name, last name, sex
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE employees.first_name = 'Hercules' AND employees.last_name LIKE 'B%'

-- For employees in the sales department: employee number, last name, first name, department name
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp on dept_emp.emp_no = employees.emp_no
INNER JOIN departments on departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'


-- For employees in the sales and developement departments: employee number, last name, first name, department name
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp on dept_emp.emp_no = employees.emp_no
INNER JOIN departments on departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'

-- In descending order, list the frequency count of employee last names
SELECT last_name, COUNT(first_name) AS emp_count
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;
