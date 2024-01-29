# Module 9 Challenge

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modelling, data engineering, and data analysis, respectively.

## Data Modelling

* Entity Relationship Diagram is included or table schemas provided for all tables

![ERD diagram of the database schema](EmployeeSQL/schema-diagram.png "ERD diagram of the database schema")


## Data Engineeing

* All required columns are defined for each table
* Columns are set to the correct data type
* Primary Keys set for each table
* Correctly references related tables
* Tables are correctly related using Foreign Keys
* Correctly uses NOT NULL condition on necessary columns
* Accurately defines value length for columns

## Data Analysis

1. List the employee number, last name, first name, sex, and salary of each employee

![Database output from SQL 1](images/data-analysis-output-1.png "Database output from SQL 1")

2. List the first name, last name, and hire date for the employees who were hired in 1986

![Database output from SQL 2](images/data-analysis-output-2.png "Database output from SQL 2")

3. List the manager of each department along with their department number, department name, employee number, last name, and first name

![Database output from SQL 3](images/data-analysis-output-3.png "Database output from SQL 3")

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name

![Database output from SQL 4](images/data-analysis-output-4.png "Database output from SQL 4")

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B

![Database output from SQL 5](images/data-analysis-output-5.png "Database output from SQL 5")

6. List each employee in the Sales department, including their employee number, last name, and first name

![Database output from SQL 6](images/data-analysis-output-6.png "Database output from SQL 6")

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name

![Database output from SQL 7](images/data-analysis-output-7.png "Database output from SQL 7")

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

![Database output from SQL 8](images/data-analysis-output-8.png "Database output from SQL 8")

--
Student Tyson Horsewell