-- Create Employee table
CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id INT NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES title(title_id)
);

-- Create Salaries table
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create Department table
CREATE TABLE departments (
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (dept_no)
);

-- Create Emp_dept table (Associating Employees with Departments)
CREATE TABLE dept_emp(
    emp_no INT NOT NULL,
    dept_no CHAR(4) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);

-- Create Title table
CREATE TABLE title (
    title_id INT NOT NULL,
    title VARCHAR(100) NOT NULL,
    PRIMARY KEY (title_id)
);

-- Create Dept_manager table
CREATE TABLE dept_manager (
    dept_no CHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES department(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
