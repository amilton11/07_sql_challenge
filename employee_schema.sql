CREATE TABLE departments
( 
dept_no varchar NOT NULL,
dept_name varchar NOT NULL,
PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp
( 
emp_no int NOT NULL,
dept_no varchar NOT NULL,
PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_manager
( 
dept_no varchar NOT NULL,
emp_no int NOT NULL,
PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE employees
( 
emp_no int NOT NULL,
emp_title_id varchar NOT NULL,
birth_date date NOT NULL, 
first_name varchar NOT NULL,
last_name varchar NOT NULL,
sex varchar NOT NULL,
hire_date date NOT NULL,
PRIMARY KEY (emp_no)
);

CREATE TABLE salaries
( 
emp_no int NOT NULL,
salary int NOT NULL,
PRIMARY KEY (emp_no)
);

CREATE TABLE titles
( 
title_id varchar NOT NULL,
title varchar NOT NULL,
PRIMARY KEY (title_id)
);
