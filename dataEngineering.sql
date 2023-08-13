Create Table employees (
name VARCHAR (30),
emp_no INT PRIMARY KEY,
emp_title_id VARCHAR REFERENCES titles(tile_id),
birth_date DATE,
first_name VARCHAR,
last_name VARCHAR,
sex VARCHAR,
hire_date DATE);

Create Table departments (
dept_no INT PRIMARY KEY,
dept_name VARCHAR
);

Create Table dept_emp (
emp_no INT REFERENCES employees(emp_no),
dept_no INT REFERENCES departments(dept_no)
);

Create Table dept_manager (
dept_no	INT REFERENCES departments(dept_no),
emp_no INT REFERENCES employees(emp_no)
);

Create Table salaries (
emp_no INT REFERENCES employees(emp_no),
salary INT
);
	
Create Table titles (
title_id INT PRIMARY KEY,
title VARCHAR
);