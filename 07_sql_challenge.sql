SELECT * FROM departments
SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM employees
SELECT * FROM salaries
SELECT * FROM titles

-- List for each employee: employee number, last name, first name, sex, salary
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary
FROM Employees
JOIN Salaries on Salaries.emp_no = Employees.emp_no;


-- List employees hired in 1986: first name, last name, hire date
SELECT last_name, first_name, hire_date
FROM Employees
WHERE hire_date LIKE '1986%';


-- List department managers: department number, department name, the manager's employee number, last name, first name
SELECT Departments.dept_no, Departments.dept_name, Dept_Manager.emp_no, Employees.last_name, Employees.first_name
FROM Employees
INNER JOIN Dept_Manager on Dept_Manager.emp_no = Employees.emp_no
INNER JOIN Departments on Departments.dept_no = Dept_Manager.dept_no


-- List the department of each employee: employee number, last name, first name, department name
SELECT Dept_Emp.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees
INNER JOIN Dept_Emp on Dept_Emp.emp_no = Employees.emp_no
INNER JOIN Departments on Departments.dept_no = Dept_Emp.dept_no


-- For employees whose first name is "Hercules" and last names begin with "B": first name, last name, sex
SELECT Employees.first_name, Employees.last_name, Employees.sex
FROM Employees
WHERE Employees.first_name = 'Hercules' AND Employees.last_name LIKE 'B%'

-- For employees in the sales department: employee number, last name, first name, department name
SELECT Dept_Emp.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees
INNER JOIN Dept_Emp on Dept_Emp.emp_no = Employees.emp_no
INNER JOIN Departments on Departments.dept_no = Dept_Emp.dept_no
WHERE Departments.dept_name = 'Sales'


-- For employees in the sales and developement departments: employee number, last name, first name, department name
SELECT Dept_Emp.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees
INNER JOIN Dept_Emp on Dept_Emp.emp_no = Employees.emp_no
INNER JOIN Departments on Departments.dept_no = Dept_Emp.dept_no
WHERE Departments.dept_name = 'Sales' OR Departments.dept_name = 'Development'

-- In descending order, list the frequency count of employee last names
SELECT last_name, COUNT(first_name) AS emp_count
FROM Employees
GROUP BY last_name
ORDER BY last_name DESC;
