/* --------------------------------------------------------------
--   Please fill in your information in this comment block --  
--   Student ID: 6288102
--   Fullname: Krissanapong Palakham
--   Section: 1
------------------------------------------------------------- */
DROP DATABASE IF EXISTS tinycompany; 
CREATE DATABASE IF NOT EXISTS tinycompany;
USE tinycompany;
-- Department Table 
CREATE TABLE department(
	dnumber		INT 		 PRIMARY KEY,  -- dnumber is a primary key
	dname		VARCHAR(20)  NOT NULL,
	location	VARCHAR(100), -- location is nullable 
	CONSTRAINT chk_dnumber CHECK (dnumber >= 1 AND dnumber <=20 ) -- dnumber range from 1 to 20
);

-- Project Table 
CREATE TABLE project(
	pnumber		INT 		 PRIMARY KEY,  -- dnumber is a primary key
	pnane		VARCHAR(50)  NOT NULL,
	dept_no	 	INT 		 NOT NULL,
	CONSTRAINT FK_DeptProj FOREIGN KEY (dept_no) REFERENCES department(dnumber)
);

-- Write your DDL for employee and assignment here 
show tables;

-- Employee Table
CREATE TABLE employee(
	fname		VARCHAR(20)		NOT NULL,
    lname		VARCHAR(20) 	NOT NULL,
    ssn			CHAR(9)			PRIMARY KEY,
    bdate		DATE		 	NOT NULL,
    sex			CHAR(1)		 	NOT NULL,
    salary		DECIMAL(12,2),
	dept_no		INT,
    CONSTRAINT FK_DEPTEMP	FOREIGN KEY(dept_no)	REFERENCES department(dnumber),
    CONSTRAINT CHK_gender 	CHECK (sex in ('M','F'))
);

CREATE TABLE assignment(
	essn		VARCHAR(9)		PRIMARY KEY,
    projno		INT				,
    hours		DECIMAL(9,2),
    hourlyrate	DECIMAL(9,2)
);
-- Hint: Review the CREATE sequence, i.e., which tables should be created first

show tables;


