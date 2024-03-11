DROP DATABASE IF EXISTS UTS; 
CREATE DATABASE UTS; 
USE UTS; 

DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee ( 
 SSN char(9), 
 FName varchar(20) NOT NULL,
 LName varchar(20) NOT NULL,
 Bdate date, 
 Salary int, 
 Dno int,
 Phone int, 
 Sex char, 
 emp_type varchar(20) NOT NULL
); 

DROP TABLE IF EXISTS Department;
CREATE TABLE Department (
 Dnum int,      
 Dname varchar(20) NOT NULL, 
 Dlocation varchar(20), 
 Mgr_ssn char(9)  NOT NULL 
);   

DROP TABLE IF EXISTS Project_teams;
CREATE TABLE Project_teams (
 Team_ID int,
 SSN char(9),
 Hours int
); 

DROP TABLE IF EXISTS Project;
CREATE TABLE Project  ( 
 Pnumber int,
 Team_ID int NOT NULL,    
 Title varchar(25) NOT NULL,
 Deadline varchar(20) NOT NULL,
 Value int NOT NULL,   
 Status varchar(20) NOT NULL,
 Proj_mgr char(9) NOT NULL  
 ); 

DROP TABLE IF EXISTS Dept_participates;
CREATE TABLE Dept_participates (
 Pno int,
 Dnumber int
); 

DROP TABLE IF EXISTS Dependent;
CREATE TABLE Dependent ( 
 Essn char(9), 
 depend_name varchar(20) NOT NULL,  
 Sex char,
 Bdate date,
 Relationship varchar(20) NOT NULL 
); 

DROP TABLE IF EXISTS Customer;
CREATE TABLE Customer (   
 Essn char(9),
 customer_name varchar(20) NOT NULL , 
 Payment int NOT NULL , 
 Year int NOT NULL, 
 Phone varchar(12) NOT NULL 
);

INSERT INTO Department VALUES ('1','Accounts','floor2','4');
INSERT INTO Department VALUES ('2','Sales','floor5','8');
INSERT INTO Department VALUES ('3','HR','floor3','10');
INSERT INTO Department VALUES ('4','Administration','floor1','7');
INSERT INTO Department VALUES ('5','Research','floor4','11');

INSERT INTO Employee VALUES ('1','Brad','Brewer','1980-02-01','40000','1', '0507827737','M', 'Expert');
INSERT INTO Employee VALUES ('2','Sharon','Middleton','1985-03-02','35000','1', '0526871267','F', 'Consultant');
INSERT INTO Employee VALUES ('3','Conner','Hunter','1987-03-07','25000','3', '0525871443','M', 'Expert');
INSERT INTO Employee VALUES ('4','Chris','grant','1982-05-01','45000','1', '0567179979','M', 'Generalist');
INSERT INTO Employee VALUES ('5','Isbella','grant','1990-04-04','20000','2', '0525971542','F', 'Consultant');
INSERT INTO Employee VALUES ('6','Matthew','McCarty','1992-03-01','40000','2', '0505357272','F', 'Generalist');
INSERT INTO Employee VALUES ('7','Dennis','Lloyd','1990-07-03','20000','3', '0527899881','M', 'Consultant');
INSERT INTO Employee VALUES ('8','Steven','Cruz','1963-04-02','32000','2', '0505887462','M', 'Expert');
INSERT INTO Employee VALUES ('9','Jayden','Watts','1994-09-02','30000','3', '0549982121','M', 'Generalist');
INSERT INTO Employee VALUES ('10','Ethan','Jakson','1988-08-06','45000','4', '0502132442','M', 'Generalist');
INSERT INTO Employee VALUES ('11','Emma','Carter','1978-10-03','38000','5', '0505465998','F', 'Expert');
INSERT INTO Employee VALUES ('12','Ava','Smith','1993-12-14','30000','4', '0523238791','F', 'Expert');
INSERT INTO Employee VALUES ('13','Olivia','Woods','1980-07-15','23000','4', '0542147342','F', 'Consultant');
INSERT INTO Employee VALUES ('14','Theo','George','1975-08-28','20000','5', '0505954141','M', 'Generalist');
INSERT INTO Employee VALUES ('15','Archie','Riley','1980-09-17','18000','5', '0546764322','M', 'Consultant');

INSERT INTO Dependent VALUES ('8','Andrea','F','1988-08-01','Daughter');
INSERT INTO Dependent VALUES ('8','Theo','M','1991-04-21','Son');
INSERT INTO Dependent VALUES ('8','Abby','F','1961-04-16','Spouse');
INSERT INTO Dependent VALUES ('13','James','M','1982-02-19','Spouse');

INSERT INTO Customer VALUES ('15','Sky','490','2022','0521509241');
INSERT INTO Customer VALUES ('11','Justine','550','2022','0524613752');
INSERT INTO Customer VALUES ('1','Sam','780','2023','0506785061');
INSERT INTO Customer VALUES ('10','Anna','428','2021','0525655241');
INSERT INTO Customer VALUES ('8','Taylor','690','2020','0553221412');
INSERT INTO Customer VALUES ('12','Smith','600','2023','0581234141');
INSERT INTO Customer VALUES ('1','Lizzy','450','2022','0553837643');
INSERT INTO Customer VALUES ('15','John','590','2023','0586295291');
INSERT INTO Customer VALUES ('3','Selena','550','2023','0508984321');
INSERT INTO Customer VALUES ('3','Ollie','350','2023','0525754242');
INSERT INTO Customer VALUES ('9','Billy','850','2022','0508184829');
INSERT INTO Customer VALUES ('6','Miranda','750','2013','0559986556');
INSERT INTO Customer VALUES ('7','Wills','420','2022','0508870983');
INSERT INTO Customer VALUES ('1','Joe','800','2023','0506785061');
INSERT INTO Customer VALUES ('12','Jane','880','2022','0583237676');

INSERT INTO Project VALUES ('15','12','ProductA','2022','3000','Completed','1');
INSERT INTO Project VALUES ('2','62','ProductB','2020','7000','Ongoing','5');
INSERT INTO Project VALUES ('10','81','ProductC','2022','6000','Closed','9');
INSERT INTO Project VALUES ('20','71','ProductD','2023','5500','Completed','1');
INSERT INTO Project VALUES ('25','42','ProductE','2022','4200','Closed','11');
INSERT INTO Project VALUES ('30','94','ProductF','2022','8000','Closed','13');
INSERT INTO Project VALUES ('3','56','ProductG','2023','2500','Completed','15');
INSERT INTO Project VALUES ('17','67','ProductH','2022','7200','Completed','4');
INSERT INTO Project VALUES ('28','90','ProductI','2022','4000','Completed','8');

INSERT INTO Dept_participates VALUES ('15','1');
INSERT INTO Dept_participates VALUES ('2','2');
INSERT INTO Dept_participates VALUES ('10','3');
INSERT INTO Dept_participates VALUES ('20','1');
INSERT INTO Dept_participates VALUES ('25','5');
INSERT INTO Dept_participates VALUES ('30','4');
INSERT INTO Dept_participates VALUES ('3','5');
INSERT INTO Dept_participates VALUES ('17','2');
INSERT INTO Dept_participates VALUES ('28','1');

INSERT INTO Project_teams VALUES ('12','1','20');
INSERT INTO Project_teams VALUES ('12','3','30');
INSERT INTO Project_teams VALUES ('12','6','40');
INSERT INTO Project_teams VALUES ('12','4','50');
INSERT INTO Project_teams VALUES ('62','5','10');
INSERT INTO Project_teams VALUES ('62','4','45');
INSERT INTO Project_teams VALUES ('81','7','55');
INSERT INTO Project_teams VALUES ('81','9','60');
INSERT INTO Project_teams VALUES ('81','8','20');
INSERT INTO Project_teams VALUES ('71','1','32');
INSERT INTO Project_teams VALUES ('71','4','35');
INSERT INTO Project_teams VALUES ('71','2','45');
INSERT INTO Project_teams VALUES ('71','5','50');
INSERT INTO Project_teams VALUES ('42','11','62');
INSERT INTO Project_teams VALUES ('42','12','40');
INSERT INTO Project_teams VALUES ('42','13','35');
INSERT INTO Project_teams VALUES ('94','13','50');
INSERT INTO Project_teams VALUES ('94','2','60');
INSERT INTO Project_teams VALUES ('94','1','65');
INSERT INTO Project_teams VALUES ('56','15','55');
INSERT INTO Project_teams VALUES ('56','13','46');
INSERT INTO Project_teams VALUES ('56','14','68');
INSERT INTO Project_teams VALUES ('67','5','27');
INSERT INTO Project_teams VALUES ('67','6','40');
INSERT INTO Project_teams VALUES ('90','1','50');
INSERT INTO Project_teams VALUES ('90','2','60');


Alter Table Employee
ADD CONSTRAINT pk_employee PRIMARY KEY (SSN);

Alter Table Department
ADD CONSTRAINT pk_department PRIMARY KEY(Dnum);

Alter Table Department
ADD CONSTRAINT fk_department_employee FOREIGN KEY(Mgr_ssn) references Employee(SSN);

Alter Table Department
ADD CONSTRAINT uk_dname UNIQUE (Dname);

Alter Table Project_teams
ADD CONSTRAINT pk_project_teams PRIMARY KEY(Team_ID,SSN);

Alter Table Project_teams
ADD CONSTRAINT fk_project_teams_employee FOREIGN KEY(SSN) references Employee(SSN);

Alter Table Project
ADD CONSTRAINT pk_project PRIMARY KEY(Pnumber);

Alter Table Project
ADD CONSTRAINT fk_project_project_teams FOREIGN KEY(Team_ID) references Project_teams(Team_ID);

Alter Table Project
ADD CONSTRAINT fk_project_employee FOREIGN KEY(Proj_mgr) references Employee(SSN);

Alter Table Project
ADD CONSTRAINT uk_title UNIQUE (Title);

Alter Table Dept_participates
ADD CONSTRAINT pk_dept_participates PRIMARY KEY(Pno,Dnumber);

Alter Table Dept_participates
ADD CONSTRAINT fk_dept_participates_project FOREIGN KEY(Pno) references Project(Pnumber);

Alter Table Dept_participates
ADD CONSTRAINT fk_dept_participates_department FOREIGN KEY(Dnumber) references Department(Dnum);

Alter Table Dependent
ADD CONSTRAINT pk_dependent PRIMARY KEY (Essn,depend_name);

Alter Table Dependent
ADD CONSTRAINT fk_dependent_employee FOREIGN KEY(Essn) references Employee(Ssn);

Alter Table Customer
ADD CONSTRAINT pk_customer PRIMARY KEY (Essn,customer_name);

Alter Table Customer
ADD CONSTRAINT fk_customer_employee FOREIGN KEY(Essn) references Employee(SSN);

Alter Table Employee
ADD CONSTRAINT fk_employee_department FOREIGN KEY(Dno) references Department(Dnum); 

SELECT * FROM Employee;
SELECT * FROM Department;
SELECT * FROM Project;
SELECT * FROM Dept_participates;
SELECT * FROM Project_teams;
SELECT * FROM Dependent;
SELECT * FROM Customer;

SELECT FName, LName, SSN,count(*) FROM Employee, Customer 
WHERE SSN=Essn AND Year=2023 AND emp_type='Expert'
group by Essn
ORDER BY count(*) desc;

SELECT customer_name, Phone
FROM Customer
WHERE year=2022
ORDER BY Payment desc
LIMIT 10;

SELECT count(*) As'The Number Of Consultants'
From Employee
Where emp_type='Consultant';

SELECT FName,LName,Salary+0.05*Salary
FROM Employee, Project
WHERE Status='Completed' AND Deadline=2022 AND Proj_mgr=SSN;

SELECT COUNT(*) AS 'Closed Projects' 
FROM Project 
WHERE Status = 'Closed' 
AND Deadline = 2022;

SELECT FName, LName, Employee.SSN, Value
FROM Employee , Project , Project_teams
WHERE Project.Team_ID = Project_teams.Team_ID
AND Project_teams.SSN = Employee.SSN
AND Status = 'Closed'
AND Deadline = 2022
ORDER BY Value DESC;

