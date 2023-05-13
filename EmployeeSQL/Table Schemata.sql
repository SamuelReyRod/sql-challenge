-- titles are independent from employee creation
CREATE TABLE titles (
	title_id varchar(6) PRIMARY KEY NOT NULL,
	title varchar(30)
);

-- department are independent from employee creation
CREATE TABLE departments (
	dept_no int PRIMARY KEY NOT NULL,
	dept_no varchar(6) NOT NULL,
);

-- Creating the employees table. 
CREATE TABLE employees (
	emp_no int PRIMARY KEY NOT NULL,
	emp_title_id varchar(6) NOT NULL,
	birth_date date NOT NULL,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	sex varchar(1) NOT NULL,
	hire_date date NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

CREATE TABLE salaries (
	emp_no int PRIMARY KEY,
	salary int,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE Dept_Emp (
	emp_no int PRIMARY KEY NOT NULL,
	dept_no varchar(6) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)	
);

CREATE TABLE Dept_Manager (
	dept_no varchar(6) NOT NULL,
	emp_no int PRIMARY KEY NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)	
);





