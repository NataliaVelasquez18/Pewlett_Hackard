![retirement.png](Resources/retirement.png)


# Employee Retirement Analysis

## OVERVIEW OF THE PROJECT

### Description:
In this project we helping Pewlett Hackard, a large mature company, to transition from storing and manage their employee data in VBA and Excel into SQL.  We will be modeling and engineering data which contain employee personal information, information of salary, titles and departments.  Later, we will analyze the data to gain insights and inform management for strategic decision making.

### Purpose:
The purpose of this analysis is to help Pewlett Hackard to prepare for the near future in two ways.  First, knowing which employees qualify for retirement packages and be able to include them in the budget.  Second, to plan recruitment by getting to know which positions will need to be filled in the near future by department as the number of upcoming retirements will leave thousands of job openings.

### Current situation:
Pewlett Hackard is a mature company with several thousand employees.  It’s baby boomers begin to retire at a rapid rate and management is looking into the near future to provide retirement packages, asses recruitment needs, and create a mentorship program.  The purpose of the mentorship program is to transfer the knowledge of experienced employees to the new hires. Employees who are about to retire and meet the criteria of being born in the year 1,965 will be mentoring the new hires before they leave the company.

### Overview of approach:
We had originally six large csv files; salaries, employees, managers by department, employees by department, titles, and departments.  We used Quick Database Diagrams to diagram the relationship in between the different files by making a conceptual, logical, and pysical entity relationship diagram (ERD), this file is stored in the resources folder.  Later, we used PostgreSQL to create Hewlett Packard's employee database.  Finally, by writing SQL queries, we created, joined, & sorted tables, used functions such as ORDER BY, COUNT, GROUP BY to create tailored lists for the analysis.  The initially given files plus the five new files created are stored in the Data folder.  The code used is stored in the file Employee_Database_challenge.sql.


## ANALYSIS AND RESULTS


**1. Roles to be filled:**

In the next image we can  see the total number of employees that will retire in the near future at Pewlett Hackard. If we add them up, they are 90,398 employees.  From which 32% are Senior Engineers, 31% Senior Staff, 16% Engineers, 13.5% Staff, 4.9% Technique Leaders, 1.9% Assistant Engineers, and less than 1% Managers.



![Retiring_titles.png](Resources/Retiring_titles.png)


<img src="https://github.com/nativelasquez-austin/Election_Analysis/blob/main/Resources/Election_results.png" width="250" height="250" />

**2. Mentorship program:**

The following image shows that out of 90,398 employees that will retire, only 1,549 meet the criteria for the mentorship program.



![mentorship_eligibility_per_title.png](Resources/mentorship_eligibility_per_title.png)



We can see the side by side comparison in the following image:

(see comparison)
<table>
  <tr>
    <td>Mentors Needed</td>
     <td>Mentors Available</td>
  </tr>
  <tr>
    <td><img src="https://github.com/nativelasquez-austin/School_District_Analysis./blob/main/Resources/retiring_titles.png" width=350 height=650></td>
    <td><img src="https://github.com/nativelasquez-austin/School_District_Analysis./blob/main/Resources/metorship_eligibility_per_title.png" width=350 height=650></td>
  </tr>
 </table>
 
 
 Accoridng to this **per each mentor** there will be: 100 Senior Engineer mentees, 69 Senior Staff mentees, 36 Engineer mentees, 39 Staff mentees, 58 Technique Leader meentees, 32 Assistant Engineer mentees, and there will be two managers with no mentors available.
 
 From this we can conclude that there are not enough mentors available the help train the next generation of Pewlett Hackard employees and the company will have to look for ways to hire experienced enough employees to take over the empty positions.


Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.
Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?




