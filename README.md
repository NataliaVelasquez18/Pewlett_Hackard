
# Employee Retirement Analysis

## OVERVIEW OF THE PROJECT

### Description:
In this project we helping Pewlett Hackard, a large mature company, to transition from storing and manage their employee data in VBA and Excel into SQL.  We will be modeling and engineering data which contain employee personal information, information of salary, titles and departments.  Later, we will analyze the data to gain insights and inform management for strategic decision making.

### Purpose:
The purpose of this analysis is to help Pewlett Hackard to prepare for the near future in two ways.  First, knowing which employees qualify for retirement packages and be able to include them in the budget.  Second, to plan recruitment by getting to know which positions will need to be filled in the near future by department as the number of upcoming retirements will leave thousands of job openings.

### Current situation:
Pewlett Hackard is a mature company with several thousand employees.  It’s baby boomers begin to retire at a rapid rate and management is looking into the near future to provide retirement packages, asses recruitment needs, and create a mentorship program in which employees who are about to retire mentor new hires.

### Overview of spproach:
We had originally six large csv files; salaries, employees, managers by department, employees by department, titles, and departments.  We used a tool called Quick Database Diagrams to stablish the connections in between the different files by making conceptual, logical, and pysical entity relationship diagrams (ERD).  Later, we used PostgreSQL, a free and open-source relational database management system (RDMS), to create Hewlett Packard's employee database.  Finally, by writing SQL queries, we created, joined, & sorted, created four new tables; unique_titles, retiring_titles, retirement_titles, and mentorship_eligibility.  The main SQL functions used were: INNER JOINS, DISTINCT ON, CREATE TABLE, 

## ANALYSIS AND RESULTS





School District Analysis
Overview of the analysis: Explain the purpose of this analysis.
Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.
Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?



School District Analysis
OVERVIEW OF THE PROJECT
Description:
In this project we will be analyzing information from a variety of sources at the school district level on student funding and student standardized test scores. We will be given access to every student’s math and reading scores and will be reporting to provide insights about performance trends and patterns to help inform discussions and strategic decisions.

Purpose:
The purpose of the analysis will assist the school board and superintendent in making decisions regarding school budgets and priorities. In this task we will be aware of the family’s educational rights which protects the rights of student education records. We will treat the data with confidentiality to protect the students.

Current situation:
According to the school board, there is evidence of academic dishonesty; specifically, reading and math scores for Thomas High School ninth graders. After we performed the analysis in the initial data, we have been tasked to remove reading and math scores for ninth graders at Thomas High School from the analysis while keeping the rest of the data intact. We have made the adjustments and will describe how these changes affected the overall results.

Overview of approach:
Using Python and the Pandas library we were able to read, clean, merge, and analyze two csv files located on the Resources folder; students_complete.csv and schools_complete.csv to gain insights and produce this report.

ANALYSIS AND RESULTS
1. District summary:

