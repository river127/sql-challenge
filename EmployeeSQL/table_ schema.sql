-- drop table departments;
-- drop table dept_emp;
-- drop table dept_manager;
-- drop table employees;
-- drop table salaries;
-- drop table titles;

CREATE TABLE departments (
     dept_no VARCHAR(10)   NOT NULL,
     dept_name VARCHAR(30)   NOT NULL,
     CONSTRAINT pk_departments PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
    emp_no INTEGER   NOT NULL,
    dept_no VARCHAR(10)   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL,
    CONSTRAINT pk_dept_emp PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_manager (
   dept_no VARCHAR(10)   NOT NULL,
   emp_no INTEGER   NOT NULL,
   from_date DATE   NOT NULL,
   to_date DATE   NOT NULL
);

CREATE TABLE employees (
    emp_no INTEGER   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    gender VARCHAR(1)   NOT NULL,
    hire_date DATE   NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (emp_no)
);

CREATE TABLE salaries (
    emp_no INTEGER   NOT NULL,
    salary INTEGER   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL,
    CONSTRAINT pk_salaries PRIMARY KEY (emp_no)
);

CREATE TABLE titles (
    emp_no INTEGER   NOT NULL,
    title VARCHAR   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL
);

copy departments from '/Users/alanriveros/departments.csv' with (format CSV, HEADER);
copy dept_emp from '/Users/alanriveros/dept_emp.csv' with (format CSV, HEADER);
copy dept_manager from '/Users/alanriveros/dept_manager.csv' with (format CSV, HEADER);
copy employees from '/Users/alanriveros/employees.csv' with (format CSV, HEADER);
copy salaries from '/Users/alanriveros/salaries.csv' with (format CSV, HEADER);
copy titles from '/Users/alanriveros/titles.csv' with (format CSV, HEADER);

select * from departments;
