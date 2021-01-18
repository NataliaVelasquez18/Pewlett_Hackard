








--Retrieving data

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';

-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Number of employees retiring
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

--Create New Tables (ADD INTO)

SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT * FROM retirement_info;


----
--they want to know employees who are going to retire but per area
DROP TABLE retirement_info;

-- Create new table for retiring employees and add a new column
SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- Check the table
SELECT * FROM retirement_info;


--Use Inner Join for Departments and dept-manager Tables
--Let's create a query that will return each department name from the Departments table as well as the employee numbers and the from- and to- dates from the dept_manager table. We'll use an inner join because we want all of the matching rows from both tables.
--The code for our inner join would look like the following:
-- Joining departments and dept_manager tables
SELECT departments.dept_name,
     dept_manager.emp_no,
     dept_manager.from_date,
     dept_manager.to_date
FROM departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no;

--As Bobby is working through this first join, he realizes that he overlooked something important: start and end dates. 
--Some of the folks from our original list may not even work with the company anymore. Our original retirement_info table
--only included individuals with certain birth- and hire-dates—how many of these people have already left the company?
--Use Left Join to Capture retirement-info Table
--We'll need to help Bobby recreate this list. Think about what we need to have a fully accurate retirement_info table:
--Employee number
--Employee name (first and last)
--If the person is presently employed with PH

-- Joining retirement_info and dept_emp tables
SELECT retirement_info.emp_no,
    retirement_info.first_name,
retirement_info.last_name,
    dept_emp.to_date
FROM retirement_info
LEFT JOIN dept_emp
ON retirement_info.emp_no = dept_emp.emp_no;

--Use Aliases for Code Readability

SELECT ri.emp_no,
    ri.first_name,
	ri.last_name,
    de.to_date
FROM retirement_info as ri
LEFT JOIN dept_emp as de
ON ri.emp_no = de.emp_no;

SELECT d.dept_name,
     dm.emp_no,
     dm.from_date,
     dm.to_date
	 FROM departments as d
INNER JOIN dept_manager as dm
ON d.dept_no = dm.dept_no;


--Use Left Join for retirement_info and dept_emp tables
--Now that we have a list of all retirement-eligible employees, it's important to make sure that they are actually still employed with PH. To do so, we're going to perform another join, this time between the retirement_info and dept_emp tables. The basic information to include in the new list is:
--Employee number
--First name
--Last name
--To-date

SELECT ri.emp_no,
    ri.first_name,
    ri.last_name,
de.to_date
INTO current_emp
WHERE de.to_date = ('9999-01-01');

--When this block of code is executed, a new table containing only the current employees who are eligible for retirement will be returned.
--Use Count, Group By, and Order By
-- Employee count by department number
SELECT COUNT(ce.emp_no), de.dept_no
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no;

-- if you executed the code again, the same numbers would be returned in another order altogether. 
-- Thankfully, there is one additional clause we can add to the query to keep everything in order: ORDER BY
-- Employee count by department number
SELECT COUNT(ce.emp_no), de.dept_no
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;
--
--Bobby can present this table to his boss since it provides a breakdown for each department. Update the code block to create a new table, then export it as a CSV.

--Create Additional Lists
--Because of the number of people leaving each department, the boss has requested three lists that are more specific:

--Employee Information: A list of employees containing their unique employee number, their last name, first name, gender, and salary
--Management: A list of managers for each department, including the department number, name, and the manager's employee number, last name, first name, and the starting and ending employment dates
--Department Retirees: An updated current_emp list that includes everything it currently has, but also the employee's departments
--Get started with the first list.
--The Employees table has all of the information we need and uses the emp_no column as the primary key. The Salaries table has the additional information we need as well as the same primary key. The only problem is that the Employees table holds data for all employees, even the ones who are not retiring. If we use this table, we will have a far bigger list to present than expected.

--To include all of the information Bobby's manager wants, we'll need to create an entirely new table from the beginning. Here's everything we need:
--Employee number
--First name
--Last name
--Gender
--to_date
--Salary
--According to our ERD, the Salaries table has a to_date column in it. Let's make sure it aligns with the employment date or something else. Run a SELECT statement in the query editor to take a look.

--let's sort these data
SELECT * FROM salaries
ORDER BY to_date DESC;

--That looks a little better, but what's wrong with the date? It's certainly not the most recent date of employment, so it must have something to do with salaries. Looks like we'll need to pull employment dates from the dept_emp table again.

SELECT emp_no,
    first_name,
last_name,
    gender
	INTO emp_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

--Now that our employees table has been filtered again and is being saved into a new temporary table (emp_info), we need to join it to the salaries table to add the to_date and Salary columns to our query. This will require a join, so let's get started. First, update the SELECT statement by adding the two columns we need from the Salaries table. Remember to use aliases to make it easier to read.

SELECT e.emp_no,
    e.first_name,
	e.last_name,
    e.gender,
    s.salary,
    de.to_date
INTO emp_info
FROM employees as e
	INNER JOIN salaries as s
	ON (e.emp_no = s.emp_no)
	INNER JOIN dept_emp as de
	ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
     AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
	      AND (de.to_date = '9999-01-01');
		  
-- List of managers per department
SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        ce.last_name,
        ce.first_name,
        dm.from_date,
        dm.to_date
INTO manager_info
FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN current_emp AS ce
        ON (dm.emp_no = ce.emp_no);

--List 3: Department Retirees
--Notice we have only selected four columns from two tables, yet there are three tables in the ERD that we need. That's because we don't need to see a column from each table in a join, but we do need the foreign and primary keys to link them together.

SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
INTO dept_info
FROM current_emp as ce
INNER JOIN dept_emp AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no);

--After executing the code and checking the results, a few folks are are appearing twice. Maybe they moved departments? It's interesting how each list has given Bobby a question to ask his manager. So far, Bobby would like to know the following:

--What's going on with the salaries?
--Why are there only five active managers for nine departments?
--Why are some employees appearing twice?
--To help Bobby find these answers, we're going to create tailored lists.
--Create a query that will return only the information relevant to the Sales team. The requested list includes:

--Employee numbers
--Employee first name
--Employee last name
--Employee department name

--Create another query that will return the following information for the Sales and Development teams:

--Employee numbers
--Employee first name
--Employee last name
--Employee department name
--Hint: You'll need to use the IN condition with the WHERE clause. See the PostgreSQL documentation (Links to an external site.) for additional information.

--The IN condition is necessary because you're creating two items in the same column.
