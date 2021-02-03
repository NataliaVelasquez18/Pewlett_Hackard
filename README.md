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

In the next image we can  see the total number of employees that will retire in the near future at Pewlett Hackard. If we add them up, they are **90,398** employees.  From which 32% are Senior Engineers, 31% Senior Staff, 16% Engineers, 13.5% Staff, 4.9% Technique Leaders, 1.9% Assistant Engineers, and less than 1% Managers.



<img src="https://github.com/nativelasquez-austin/Pewlett_Hackard/blob/main/Resources/Retiring_titles.png" width="250" height="250" />



**2. Mentorship program:**

The following image shows that out of 90,398 employees that will retire, only **1,549** meet the criteria for the mentorship program.


<img src="https://github.com/nativelasquez-austin/Pewlett_Hackard/blob/main/Resources/mentorship_eligibility_per_title.png" width="250" height="250" />



We can see the in the following comparison a significant difference in between the mentors available and the mentors needed:

<table>
  <tr>
    <td>Mentors Needed</td>
     <td>Mentors Available</td>
  </tr>
  <tr>
    <td><img src="https://github.com/nativelasquez-austin/Pewlett_Hackard/blob/main/Resources/Retiring_titles.png" width=350 height=350></td>
    <td><img src="https://github.com/nativelasquez-austin/Pewlett_Hackard/blob/main/Resources/mentorship_eligibility_per_title.png" width=350 height=350></td>
  </tr>
 </table>
 
 
 Accoridng to this **per each mentor** there will be: 100 Senior Engineer mentees, 69 Senior Staff mentees, 36 Engineer mentees, 39 Staff mentees, 58 Technique Leader meentees, 32 Assistant Engineer mentees, and there will be two managers with no mentors available.
 
 From this we can conclude that there are not enough mentors available the help train the next generation of Pewlett Hackard employees and the company will have to look for ways to hire experienced employees to take over the empty positions or expand the mentor eligibility criteria to have more available mentors. 


# Employee Database with SQL

A database built in SQL to migrate large amounts of employee information from legacy systems to PostgreSQL and solve some business questions.

## Getting Started

These instructions will get your PostgreSQL database up and running on your local machine.

### Prerequisites

Before the installations there are some important concepts you need to know:  

**PostgreSQL**, typically referred to as just "Postgres," is a relational database system. This type of database consists of tables and their predefined relationships. 

**pgAdmin** is the window into our database: it's where queries are written and executed and where results are viewed. While Postgres holds the files, pgAdmin provides the access. All SQL actions take place within these two programs, so let's install them.


### Installing

Visit the PostgresSQL [download website](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads) - The web framework used to initiate your download. Be sure to choose the correct download option for your operating system. Both Postgres and pgAdmin are downloaded together as a package, so the following installation instructions will cover both.

Be sure to Not select the latest Postgres version to install. We're installing a previous version to the latest because it is a stable release, meaning that it has been tested and debugged as much as possible and will not generate many errors.

During installation, you'll need to create a password. Be sure to record it, as you'll use it to access your SQL database.

An InstallBuilder window will show the components selected for installation. Be sure to uncheck Stack Builder's box. Stack Builder is used to install Postgres add-ons, but we won't need it for our project.



## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc


