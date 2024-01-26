
DROP TABLE IF EXISTS Dept_manager, Dept_emp, Salaries, Employees, Titles, Departments CASCADE;

CREATE TABLE departments (
    dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
    dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE titles (
    title_id VARCHAR(5) NOT NULL PRIMARY KEY,
    title VARCHAR(30) NOT NULL
);


CREATE TABLE employees (
    emp_no INTEGER NOT NULL PRIMARY KEY,
    emp_title_id VARCHAR(5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id)
        REFERENCES titles (title_id)
);

CREATE TABLE salaries (
    "emp_no" INTEGER NOT NULL PRIMARY KEY,
    "salary" INTEGER NOT NULL,
    FOREIGN KEY (emp_no)
        REFERENCES employees (emp_no)
);

CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    FOREIGN KEY (emp_no)
        REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no)
        REFERENCES departments (dept_no),
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no", "dept_no"
     )
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(4) NOT NULL,
    emp_no INTEGER NOT NULL,
    FOREIGN KEY (dept_no)
        REFERENCES departments (dept_no),
    FOREIGN KEY (emp_no)
        REFERENCES employees (emp_no),
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "dept_no", "emp_no"
     )
);
