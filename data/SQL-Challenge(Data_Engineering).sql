Create Table departments (
    dept_no VARCHAR Primary Key,
    dept_name VARCHAR Not Null
);

Create Table employees (
    emp_no INTEGER Primary Key,
    emp_title_id VARCHAR,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date DATE
);

Create Table titles (
    title_id VARCHAR Primary Key,
    title VARCHAR Not Null
);

Create Table dept_emp (
    emp_no INTEGER,
    dept_no VARCHAR,
    Primary Key (emp_no, dept_no),
    Foreign Key (emp_no) References employees(emp_no),
    Foreign Key (dept_no) References departments(dept_no)
);

Create Table dept_manager (
    dept_no VARCHAR,
    emp_no INTEGER,
    Primary Key (dept_no, emp_no),
    Foreign Key (dept_no) References departments(dept_no),
    Foreign Key (emp_no) References employees(emp_no)
);

Create Table salaries (
    emp_no INTEGER Primary Key,
    salary INTEGER Not Null,
    Foreign Key (emp_no) References employees(emp_no)
);