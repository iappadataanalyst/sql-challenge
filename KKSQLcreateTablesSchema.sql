
-- Employees table
drop table if exists employees cascade; 
CREATE TABLE employees (
	emp_no INTEGER NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	gender VARCHAR(2) NOT NULL, 
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

-- Departments table
drop table if exists departments cascade; 
CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

-- Department_Employees table
drop table if exists dept_emp cascade; 
CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- Department_Manager table
drop table if exists dept_manager cascade; 
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INTEGER NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-- Salaries table 
drop table if exists salaries cascade; 
CREATE TABLE salaries (
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	PRIMARY KEY (emp_no, from_date),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-- Titles table
drop table if exists titles cascade; 
CREATE TABLE titles (
	emp_no INTEGER NOT NULL,
	title VARCHAR(30) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	PRIMARY KEY (emp_no, from_date),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);