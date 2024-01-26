DROP TABLE IF EXISTS Dept_manager CASCADE;
DROP TABLE IF EXISTS Dept_emp CASCADE;

DROP TABLE IF EXISTS Salaries CASCADE;

DROP TABLE IF EXISTS Employees CASCADE;

DROP TABLE IF EXISTS Titles CASCADE;
DROP TABLE IF EXISTS Departments CASCADE;

CREATE TABLE Departments (
    dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
    dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE Titles (
    title_id VARCHAR(5) NOT NULL PRIMARY KEY,
    title VARCHAR(30) NOT NULL
);


CREATE TABLE Employees (
    emp_no INTEGER NOT NULL PRIMARY KEY,
    emp_title_id VARCHAR(5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id)
        REFERENCES Titles (title_id)
);

CREATE TABLE "Salaries" (
    "emp_no" INTEGER NOT NULL PRIMARY KEY,
    "salary" INTEGER NOT NULL,
    FOREIGN KEY (emp_no)
        REFERENCES Employees (emp_no)
);

CREATE TABLE Dept_emp (
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    FOREIGN KEY (emp_no)
        REFERENCES Employees (emp_no),
    FOREIGN KEY (dept_no)
        REFERENCES Departments (dept_no),
    CONSTRAINT "pk_Dept_emp" PRIMARY KEY (
        "emp_no", "dept_no"
     )
);

CREATE TABLE Dept_manager (
    dept_no VARCHAR(4) NOT NULL,
    emp_no INTEGER NOT NULL,
    FOREIGN KEY (dept_no)
        REFERENCES Departments (dept_no),
    FOREIGN KEY (emp_no)
        REFERENCES Employees (emp_no),
    CONSTRAINT "pk_Dept_manager" PRIMARY KEY (
        "dept_no", "emp_no"
     )
);
