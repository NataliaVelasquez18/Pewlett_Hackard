# Employee Database with SQL

A database built in SQL using PostgreSQL. 

---

## Getting Started

These instructions will get your PostgreSQL database up and running on your local machine.

### Prerequisites

Before the installations there are some important concepts you need to know:  

**PostgreSQL**, typically referred to as just "Postgres," is a relational database system. This type of database consists of tables and their predefined relationships. 

**pgAdmin** is the window into our database: it's where queries are written and executed and where results are viewed. While Postgres holds the files, pgAdmin provides the access. All SQL actions take place within these two programs, so let's install them.

**Visual Studio Code** is a free source-code editor made by Microsoft for Windows, Linux and macOS.  


### Installing

1. Visit the PostgresSQL [download website](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads) - The web framework used to initiate your download. Be sure to choose the correct download option for your operating system. Both Postgres and pgAdmin are downloaded together as a package. Be sure to Not select the latest Postgres version, we're installing a previous version to the latest because it is a more stable release.  During installation, you'll need to create a password. Be sure to record it, as you'll use it to access your SQL database.  To confirm your installation, start pgAdmin (a new browser window will launch) and double-click to connect to the default server and enter your password.

%%%%%picture of not installing the extra tools


2. Download [Visual Studio Code](https://code.visualstudio.com/) for your operating system.

---

## Data Modeling

### Identifying Data Relationships

In the database_creation_csv_files folder there are 6 csv files with employee data such as salaries, employees, managers by department, employees by department, titles, and departments.  You will use this files to create your database.

Despite there are numerous types of keys, for our purposes, we will focus on primary keys and foreign keys.


### Entity Relationship Diagrams (ERD)

In the ERD_and_queries folder you can find our Entity_Relationship_Diagram.sql file. 

You can use the free version of [Quick DBD](https://www.quickdatabasediagrams.com/) to make the process smooth and be able to see the table relationships graphically.

%%%%%%%%Image of our ERD

With the free version you canno save the file so just can copy the information and paste it on a new empty .sql file that you can create on 

---


## Data Engineering


---

## Data Analysis


---

## Author

Contact:
Email:
Twitter

---










## Identifying Data Relationships



## Business Problem

Storing and managing data in Excel and VBA has become time consuming and slow considering the large amounts of data that the company has.  A need for an escalable database system is needed urgently to be able to answer retirement business questions in a timely manner and to drive strategy.

The company management needs to know which employees qualify for retirement packages and which positions will need to be filled by department.

---

## Data

* The data that we will use to create the database is stored in 6 csv files located in the folder Database_creation_files

* Using SQL queries to answer employee retirement business questions new data has been retrieved

---

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

Visit the PostgresSQL [download website](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads) - The web framework used to initiate your download. Be sure to choose the correct download option for your operating system. Both Postgres and pgAdmin are downloaded together as a package. Be sure to Not select the latest Postgres version, we're installing a previous version to the latest because it is a more stable release.  During installation, you'll need to create a password. Be sure to record it, as you'll use it to access your SQL database.  To confirm your installation, start pgAdmin (a new browser window will launch) and double-click to connect to the default server and enter your password.

## Identifying Data Relationships

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


