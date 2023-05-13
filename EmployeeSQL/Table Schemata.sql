-- titles are independent from employee creation
-- title_id can be set to 5, but used 6
-- title varchar 45, should be enough for title description
CREATE TABLE titles (
	title_id varchar(6) PRIMARY KEY NOT NULL,
	title varchar(45) NOT NULL
);

-- department are independent from employee creation
-- dept_no can be set to 4 varchar...used 5 for future adds
CREATE TABLE departments (
	dept_no varchar(5) PRIMARY KEY NOT NULL,
	dept_name varchar(30) NOT NULL
);

-- Creating the employees table. 
CREATE TABLE employees (
	emp_no int PRIMARY KEY NOT NULL,
	emp_title_id varchar(5) NOT NULL,
	birth_date date NOT NULL,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	sex varchar(1) NOT NULL,
	hire_date date NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

CREATE TABLE salaries (
	emp_no int PRIMARY KEY NOT NULL,
	salary int NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE Dept_Emp (
    emp_no int NOT NULL,
    dept_no varchar(5) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE Dept_Manager (
	dept_no varchar(5) NOT NULL,
	emp_no int PRIMARY KEY NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)	
);





