
--CLASS-1
--SQL - Structured Query language 
--PL/SQL - Programming Language SQL

--Q.What is data?
--Collection Of meanigful information
--or
--Collection of record information

--Q.What is Database?
--It is collection of data in file format.
--ex: Excel,Word,.txt File, notepad etc .

--Disadvantage
--1.It stores less amount of data
--2.Data Accesibility is slower.
--3.No relationship between files.

--Q.What is RDBMS(Relational Data Base Managment System)?
--It is collection of table related information.
--it stores huge amount of data and to extract or perform any operation on data which is stored in DB we have language which is called as SQL.
--Their is relation between two or more tables.

--Q.What is table?
--It is collection of rows of columns.

--Diffrent flavours of RDBMS
--1.SSMS(SQLServer management Studio)- Microsoft
--2.SQL developer - Oracle
--3.Teradata 
--4.DB2
--5.Mango DB
--6.Toad 
--7.PostGrey SQL
--8.MySql etc 


--There are two types of databases 
--1.Syatem Defined Databases 
--2.User Defined databases 

--There are four different system databases 
--1.Master - Bydefault DB of SQL
--2.Model
--3.Msdb
--4.Temp DB

--SQL is Not Case sensitive language
--Ex: menaing of SCODEEN ia as same as scodeen


--Colors
--Blue --System Defined Keywords
Table , select create etc
--Pink - System Defined Functions
sum,min, max etc

--Q.How to create the database?
create database JobHunt8

--Q.How to execute SQL Statements
--1.By using Execute tab from top of the task bar
--2.By preessing F5 key from keyboard.

--Q.How to navigate user created DB?
USE jobhunt8

--Two types of Comments in SQL
--1.Single line comments (--)
--2.Multiple line comments (/* multiple line statements */)

--ex:
--1.
--My name is SCODEEN.

--2
/*my name is Scodeen
i am 12 year old 
i have started my journey in 2008*/



--Class-2
--Data Types 
--Type of data or Value of an object can hold is known as data type.

--Different type of data or Data Types in SQL
--1.Numeric Data Type
--2.Approximate Numeric data type
--3.String or charecter Data Type
--4.Date and Time Data type 

--1.Numeric Data Type
--1.BIT
--It store value 0 or 1
bit

--ex:
declare @val bit
Set @val = 1778897798
print(@val)


--2.TINYINT
--It will store the value ranging from 0 to 255 

--ex:
declare @a tinyint
Set @a = 255
print(@a)

--3.SMALLINT
--It will store value ranging from -32768 to +32767

declare @b smallint
set @b = 31555
print (@b)

--4.Decimal
--An Exact fixed point number 

declare @c decimal 
set @c = 2345678902345678.23456789
print(@c)

--5.INT
--It stores an inter value ranging from -2147483648 to 2147483647

declare @d int 
set @d = 2147483647
print(@D)

--6.BigInt
--If we want to store more than int range then we can use bigint


--2.Approximate Numeric data type
--1.Float
--It will store floating point number which ranges between -1.8Eto 308 to -1.8Eto 308.
--ex : 234567.876543,1234567.98765456

declare @fl float
set @fl = 987654.123456789098765432
print(@fl)

--2.Real 
--It will store an floating point numbers -3.4Eto38 to +3.4Eto38.

--3.String or charecter Data Type.
--1.Char :- A-Z,a-z,0-9 and Special Charecter
--Static Memory Allocation and it size is 8000 charecters.

declare @value char(40)
set @value = 'PraveenKumar' 
print(@value)
Print datalength(@value)
print len(@value)

--2.Varchar : A-Z,a-z,0-9 and Special Charecter
--Dynamic memory allocation and its size is 8000 charecters 
declare @value1 varchar(40)
set @value1 = 'PraveenKumar' 
print(@value1)
Print datalength(@value1)
print len(@value1)

--CLASS-3
--3.nChar
--Static memory allocation and its size 4000 characters
--(Fixed, 4000(2bytes))

declare @value3 nchar(20)
set @value3 = 'Praveen'
print(@value3)
print datalength(@value3)
print len(@value3)

--4.nvarchar
--Dynamic memory allocation and its size is 4000 characters.
--(Variable length,4000(2bytes))
declare @value4 nvarchar(4000)
set @value4 = 'Praveen'
print(@value4)
print datalength(@value4)
print len(@value4)

--4.Data time data type
--1.Date
--You can define or insert the date in multiple formats like YYYY/MM/DD,DD/MM/YYYY,MM/DD/YYYY etc.

select GETDATE()-365

--2.Time 
--It will allow you to insert the time and format is HH:MM:SS
keyword : time 
--06:18:48

--3.Datetime 
--It will allow yoiu to insert date and time and format is YYYY-MM-DD HH:MM:SS:MS.

--ex:
--2022-02-13 06:18:48.880

--Q. How to create a table?
create table Emp(EID int,
Ename varchar(20),
ELOC varchar(20),
Esal int,
)

--Q.How to select the data from table?
SELECT * from Emp
--Star (*) - all the columns from table

select EID ,Ename from Emp

--Q.How to insert the data or values into a table?
--By using two methods we can insert the data into a table.
--METHOD-I
--It will allow you to insert values into a table as per the sequence during the creation of table.

select * from Emp
insert into Emp values (1,'Praveen','Pune',3000)
insert into Emp values (2,'Amit','Mumbai',5000)
insert into Emp values (3,'Shaun','Delhi','')

insert into Emp values (4,'Sonaliasdfghjklasdfgh','',6000)

insert into Emp values (5,'Mohini',NULL,5000)



--Exception:Conversion failed when converting the varchar value 'Amit' to data type int.

--METHOD-II
--It will allow you to insert the values as per your choice but condition is that
--you have to follow your own defined order or sequence of colums

insert into Emp (EID,Ename) values (3,'Rohit') 
insert into Emp (EID,Ename) values ('Rohit',3) 
insert into Emp (ELOC,Esal,EID) values ('indore',4500,3)

select * from emp

--CLASS-4
--SQL Clauses 
--Clauses are used to filter the data by providing condition.
--Claueses are used for filtering purpose/
--Whenever we want to use clauses then we can use along with SQL operators.

--There are various types of Clauses.
--1.WHERE
--2.ORDER BY
--3.GROUP BY
--4.HAVING


--SQL Operators 
 --There are various types of operator 
--1.Comparision
--2.Logical
--3.Arithmatic
--4.IN and NOT IN
--5.Between and Not Between
--6.LIKE --**VVIMP

--1.Comparison
 --It is used to compare the condition provided into where clause 
 -- = -- equal to
 -- > -- greater than
 -- < -- less than
 -- >= -- greater than equal to
 -- <= -- less than equal to 
-- <> or! = -- Not equal to

create table employee(EID int,ENAME varchar(20),LOC varchar(20),Dept varchar (20) ,sal int)
select * from employee
insert into employee values (1,'Praveen','Pune','Finance',20000)
insert into employee values (12,'Amit','Agra','HR',30000)
insert into employee values (3,'Rohit','Delhi','Finance',40000)
insert into employee values (4,'Mohan','Jaipur','Testing',20000)
insert into employee values (5,'Sohan','Udaipur','Dev',50000)
insert into employee values (6,'Rohan','Nagpur','Account',60000)
insert into employee values (7,'Meena','Yavatmal','HR',70000)
insert into employee values (8,'Sheena','Wardha','Finance',80000)
insert into employee values (9,'Tina','Nanded','Account',90000)
insert into employee values (11,'mona','Latur','Dev',75000)

 select * from employee

 select * from Employee where EID = 4
 select * from Employee where EID > 4
 select * from Employee where EID < 4
 select * from Employee where EID >= 4
 select * from Employee where EID <= 4
 select * from Employee where EID <> 4
 select * from Employee where EID != 4
 
 select * from Employee where ENAME ='Amit'


--2.Logical operator 
 --It used to compare the two inputs logically based upon the operation specified into where clause.
 --1.AND
 --2.OR
 --3.NOT

 --1.AND
 --It is just multiplication

 --AND operation
 --A		B		O/P
 --1		1		1
 --1		0		0
 --0		1		0
 --0		0		0

 --A		B			O/P
 --TRUE		TRUE		TRUE
 --TRUE		False		False
 --False	True		False
 --False	False 		False

 select * from employee where EID =1 and LOC ='PUNE'
 select * from employee where EID =1 and LOC ='Mumbai'
 select * from employee
 select * from Employee where eid =1 and SAL = 25000
 select * from Employee where eid =3 AND SAL = 40000
--2.OR
 --It is used to compare two inputs logically; it will act as addition operation.
 --OR operation
 --A		B		O/P
 --1		1		1
 --1		0		1
 --0		1		1
 --0		0		0

 --A		B		O/P
 --TRUE		TRUE	TRUE
 --TRUE		False	TRUE
 --False	True	TRUE
 --False	False 	False

 select * from Employee where eid =3 OR SAL = 2500
 select * from Employee where eid =7 OR SAL = 2500
 select * from Employee where eid =3 OR SAL = 3000

 
 select * from employee where EID =1 OR LOC ='PUNE'
 select * from employee where EID =1 OR LOC ='Mumbai'
 select * from employee
 select * from Employee where eid =1 OR SAL = 25000
 select * from Employee where eid =3 OR SAL = 40000
 
 --3.NOT
 --It will perform negation.
 --It will perform opposite operation.

 --NOT operation
 --INPUT		O/P
 --1			0
 --TRUE			False

 select * from Employee where eid <> 3
 select * from Employee where ENAME != 'Amit'

--Clause
 --1.WHERE 
 --Where clause is used with comparison, logical and arithmetic operator.
 --Its basic purpose is to filter the data as per condition.

 Create table emp (eid int ,ename varchar(20),eloc varchar(20),sal int)
 
 insert into emp values (1,'Meena','HYD',4000)
 insert into emp values (2,'tina','Pune',3000)
 insert into emp values (3,'Mona','Mumbai',5000)
 insert into emp values (4,'priya','Jaipur',7000)
 insert into emp values (5,'Meera','Patna',8000)
 insert into emp values (6,'radha','Delhi',9000)
 insert into emp values (7,'shina','Goa',2000)

 select * from employee where eid = 3 and sal > 3000

 --2. Order by 
 --It is used to display the content of a column either in Ascending or descending order.
 --If you have not defined anything after ORDER BY clause then by default it will be Ascending
 --It will use notation for Ascending as ASC and for Descending as DESC.

 --syntax: ORDER BY col1, col2 ...coln
 --NOTE: while using ORDER BY clause we need to use two keywords one for Ascending i.e ASC and second for Descending i.e. DESC
 --by default if you have not mentioned any keyword then it is by default ascending order.

 select * from employee order by sal ASC
 
 select * from employee order by sal DESC

 select * from employee order by ENAME

 --3.Arithmatic operator
 --it is used to perform arithmetic operation.
 --We have multiple operators in SQL i.e. +, -, *, / and %

 select *, salary= sal + 1000 from employee  where Dept ='HR'
 select *, salary= sal - 1000 from employee 

 select *, Package= sal * 12 from employee  --Total Package of an employee
 select *, Package= sal / 30 from employee  -- Per day Salary of an employee
 
 select (ename +'   '+ loc + ' '+ Dept) as FULL_NAME  from employee
 
 select (eid + ename +' '+ loc + ' '+ Dept) as FULLNAME from employee
 --The above statement through an exception becuase of column data type conversion
 --Exception : Conversion failed when converting the varchar value 'Praveen' to data type int.

--Alias in SQL
 --By using alias in SQL we can specify user defined names to a column.

 --Synatx : AS UserDefinedColName

select *,ENAME as FULLNAME from employee
select * from employee


--Q. How to display even records from table?
select * from employee where eid % 2 =0

--Q. How to display odd records from table?
select * from employee where eid % 2 =1
select * from employee order by ENAME,LOC

--IN and NOT IN 
--This operator or clause allow you to navigate or point out values specified into the list.
--NOT IN operator will perform the reverse or opposite as IN operation.

select * from employee where eid in (1,2,3,5)
select * from employee where eid not in (1,2,3,5)
select * from employee where loc in ('HYD','PUNE','GOA')
select * from employee where loc not in ('HYD','PUNE','GOA')

--BETWEEN and NOT BETWEEN
--This operator or clause allow you to display the values or records between the range you have specified.
--this operator will work with Logical operator.

select * from employee where eid between 4 and 8
select * from employee where eid not between 4 and 8

select * from employee where LOC  not between 'Delhi' and 'M'
select * from employee where LOC  between 'Delhi' and 'M'
select * from employee order by loc
select * from emp where  eloc between 'd' and 'ha' --goa
select * from emp where sal <> 3000 and eid not in (1,4)

--CLASS-5
--LIKE 
--LIKE operator will allow you to search pattern from given string or number.
--Like mostly used with WHERE clause
--LIKE most often used with character and we can also use with integer.

--LIKE operator used with Following wildcards for searching pattern
--1.% - It represents one or multiple characters.
--2.'_' - represents one or single character/ Substitute for exactly one character.
--3.[Charlist]% - Any single character from that list from start
--	%[Charlist] - Any single character from that list from end
--	%[Charlist]% - Any single character from that list start from end.
--4.[^Charlist] or [!Charlist] -- any single character not in char list.

--'A%' - start with A character and it will display all the values or names which start with A.
--'%A' - End�s with A character and it will display all the values or names which Ends with A.
--'%A%' - Anywhere inside the record/Column if A character is present
select * from employee where ENAME like '[a-m]%'


select * from employee
select * from employee where ename like '_M%'
select * from employee where ename like '%H%'
select * from employee where ename like '%h%'
select * from emp where ename like '%e%'
select * from emp where ename like '_i%'
select * from emp where ename like '__n%'
select * from emp where ename like 't%a' 
select * from emp where ename like 'n%n'

--it will display Name which start with M, R and S 
select * from emp where ename like '[MRS]%'
--it will display Name which is not start with M,R and S 
select * from emp where ename like '[^MRS]%'
select * from emp where ename like '[!MRS]%'

--It will display the range of names who start with a,b,c,d,e,f,g.
select * from employee where ename like '[a-g]%'

insert into employee values (12,'Sohan@Patil','Chennai','Dev',75000)

--Want to display which have '_' in between
select * from employee where ename like '%#_%'escape '#'
--or
select * from employee where ename like '%[_]%'
--or 
select * from employee where ename like '%@_%'escape '@'

--SQL Aggregate functions
--SQL aggregate functions return a single value, calculated from values in a column.
--below are some of useful aggregate functions are 
--1.AVg()
--2.Count()
--3.MIN()
--4.MAX()
--5.SUM

--1. AVG()
--This function is used to find the average value of the column values from table.
select * from employee
select AVG(sal) as AVGSAL from employee



--2. Count()
--The count() function returns the number of rows that matches specified criteria.
--The count function requires 1 argument(s).
select count(*) as recordcount from emp

select COUNT(*) as RecordCount from employee

select count('SCODEEN') --O/P = 1
select count('1234') + count('5678') --O/P = 2
select count('1234') * count('5678') --O/P = 1
select count('1','2','4') --Exception: The count function requires 1 argument(s).
select count(123451234567896)   --O/P =1
select count('Scodeen')  --O/P =1
select * from employee
--Q. Count the no of employees whose salary is greater than 75000.
select count(*) as empsal from employee where sal = 75000

select COLUMN_NAME from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME= 'EMP'

--3.MIN()
--The MIN() function returns the smallest value of the selected column.
select MIN(sal) as Min_Sal from employee where Dept = 'HR'
select * from employee where Dept = 'HR'

select MIN(sal) as secondminsal from employee where sal > (select MIN (sal) from employee) 

--Q.How to find second minimum salary from HR department?
Select min(sal) as second_min_sal from employee where dept='hr' and sal>(select min(sal) from employee where dept='hr')
--OR
Select min(sal) from employee where dept='hr' and sal not in (select min(sal) from employee where dept='hr')
--OR
Select min(sal) from employee where dept='hr' and sal <> (select min(sal) from employee where dept='hr')

select * from employee where Dept ='HR'

select * from employee order by sal 


select * from employee order by sal
select min(sal) as minsal from employee --First minimum sal
--Second Min sal
select min(sal) as secondMinSAL from employee where sal >(select min(sal) from employee)
--OR
select min(sal) as secondMinSAL from employee where sal <>(select min(sal) from employee)
--OR
select min(sal) as secondMinSAL from employee where sal not in (select min(sal) from employee)

--Third Min sal
select min(sal) as secondMinSAL from employee 
where sal >(select min(sal) from employee where sal >(select min(sal) from emp))
select min(ename) as minsal from employee

--CLASS-6
--4.MAX()
--The MAX() function returns the largest value of the selected column.

select * from employee
select MAX(sal) as maxsal from employee

--Second Highest sal

--Q. Find out the second highest sal?
select MAX(sal) from employee where sal < (select MAX(sal) from employee where sal <(select Max(sal) from employee)) --third max
--Or
select MAX(sal) from employee where sal <> (select MAX(sal) from employee)
--or
select MAX(sal) from employee where sal not in  (select MAX(sal) from employee)
select * from employee order by sal desc

--5.SUM()
--The sum function returns the total sum of numeric value.
--Sum function always accept numeric values.
select SUM(sal) as SumOfSal from employee

--TOP
--It will allow to select Top records from table.
--It is useful when we are dealing with large amount of data 

select top 3 * from employee order by sal desc
--Third highest sal from emp table?
select MIN(sal) as thirdmaxsal from employee where sal in  --(90000,80000,75000)
(select top 3 (sal) from employee order by sal desc)

select * from employee order by sal desc

--Third min sal 
select Max(sal) as thirdminsal from employee where sal in  --(90000,80000,75000)
(select top 3 (sal) from employee order by sal ASC )

--Distinct
--It will allow you to find unique or distinct values from a cloumn.
--Syntax: distinct(colname)
select count(distinct(sal)) from employee
select MAX(distinct(sal)) from employee

select * from employee order by sal desc

--Q.How to find fourth highest salary when multiple employees having same salary?
select MIN(sal) as thirdmaxsal from employee where sal in  --(90000,80000,75000,75000)
(select distinct top 4 (sal) from employee order by sal desc)

select COUNT(sal) from employee


--Q. How will you avoid duplicate records from column?
--Q. How will you find unique values from column?

--NULL Values 
--If a column in table is optional and we are inserting or updating an existing record by skipping an optional column.
--This means that optional column will be saved as NULL value.
--NULL values are treated differently from other values.
--NULL values used as a Placeholder for unknown or inapplicable values.

--for ex:
create table Null_test(NID int,N_Name varchar(20),dept varchar(20))
select * from Null_test

insert into Null_test (NID,N_Name) values (1,'Sumit')
insert into Null_test (NID,N_Name) values (3,'Rohit')
insert into Null_test (NID,N_Name,dept) values (2,'Vickey','')

select * from Null_test where dept = Null --Blank results or result set is empty
select * from Null_test where dept = ''

--It is not possible to test NULL values by using comparison operator 
--To test NULL value inside a SQL we have to use below functions
--1.IS NULL
--2.IS NOT NULL

select * from Null_test where dept is NULL
select * from Null_test where dept is not NULL
select count(distinct(dept)) from Null_test

--Q.How will you count null values present inside a column?
select count(*) from Null_test where dept is null

select count(NULL) --Operand data type NULL is invalid for count operator.

--CLASS -7
--SQL Constraints
--Constraints are used to maintain the accuracy and integrity of the table.
--Constraints are used to limit the type of data that can go into the table.

--There are various types of constraints are available in SQL 
--1.Primary key
--2.Foreign key
--3.NULL Key
--4.Unique Key
--5.Default key
--6.Check Key

--1.Primary Key (PK)
--NOT NULL + UNIQUE
--PK constraint uniquely identifies each record in database table.
--PK is used most often with numeric values.

Create Table PRIME_TEST (PID int primary key,
FirstName Varchar(20),
City varchar(20))


insert into PRIME_TEST values (1,'Praveen','Bidar')
insert into PRIME_TEST values (2,'Praveen','Bidar')
insert into PRIME_TEST values (NULL,'amit','PUNE') --Cannot insert the value NULL into column 'PID', 
--table 'Testing21.dbo.PRIME_TEST'; column does not allow nulls. INSERT fails.
insert into PRIME_TEST values (3, NULL, NULL)

select * from PRIME_TEST

--2.Foreign Key (FK)
--A foreign key in one table points to PRIMARY KEY in another table.
--It ensures that all the values in columns are different.
--One NULL value can be applied at column level.
--A FK key is a collection of columns in one table that refers to the PK in another table.
--Parent (PK)---Child (FK)

Create table department (DID int primary key, DEPT_NAME varchar(20))

insert into department values (1,'ECE')
insert into department values (2,'ME')
insert into department values (3,'Civil')
insert into department values (4,'Electrical')
insert into department values (5,NULL)
insert into department values (6,NULL)

create table student(S_ID int primary key ,
Firstname varchar(20),
City varchar(20),
Dept_ID int foreign key references department(DID)
)

select * from department
insert into student values(1,'Sumit','Mumbai',4)
insert into student values(2,'Rohit','Jaipur',NULL)
insert into student values(3,'Amit','Jaipur',NULL) 
--exception: The INSERT statement conflicted with the FOREIGN KEY constraint "FK__student__DID__3B75D760". The conflict occurred in database "Testing21", table "db. department", column 'DID'.
insert into student values(4,'Mohit','Indore',NULL) 

select * from department
select * from student

--Q. Without defining PK on Parent table, define FK on Child table?

--3.NOT NULL
--The NOT NULL constraint enforces/restricts a column to NOT accept NULL values.
--The NOT NULL constraint enforces/restricts a column to always contain a value.

Create Table NOTNULL_TEST (NID int primary key,
FirstName Varchar(20) NOT NULL,
City varchar(20))

insert into NOTNULL_TEST values(1,'shita','Pune')
insert into NOTNULL_TEST values(2, NULL,'Mumbai') 
--Exception :Cannot insert the value NULL into column 'FirstName', table 'Testing21.dbo.NOTNULL_TEST'; column does not allow nulls. INSERT fails.
insert into NOTNULL_TEST values(2,'shita','Mumbai')
insert into NOTNULL_TEST values(3,'','jaipur')
insert into NOTNULL_TEST values(4,'','Indore')

select * from NOTNULL_TEST

--4.Unique
--The UNIQUE constraint uniquely identifies each record in a database table.
--One NULL value can be inserted at column level.

Create Table UNIQUE_TEST (U_ID int primary key,
FirstName Varchar(20) unique,
City varchar(20))

insert into UNIQUE_TEST values(1,'shita','Pune')
insert into UNIQUE_TEST values(2,'shita','udaipur') 
--Exception: Violation of UNIQUE KEY constraint 'UQ__UNIQUE_T__B31331C90814D506'. Cannot insert duplicate key in object 'dbo.UNIQUE_TEST'. The duplicate key value is (shita).
insert into UNIQUE_TEST values(2,'','Mumbai')
insert into UNIQUE_TEST values(3,NULL,'indore') 
insert into UNIQUE_TEST values(4,' ','jaipur') 
--Exception: Violation of UNIQUE KEY constraint 'UQ__UNIQUE_T__B31331C90814D506'. Cannot insert duplicate key in object 'dbo.UNIQUE_TEST'. The duplicate key value is ().
insert into UNIQUE_TEST values(4,NULL,'indore') 
--Exception: Violation of UNIQUE KEY constraint 'UQ__UNIQUE_T__B31331C90814D506'. Cannot insert duplicate key in object 'dbo.UNIQUE_TEST'. The duplicate key value is (<NULL>).

select * from UNIQUE_TEST

Create Table UNIQUE_TEST1 (U_ID int primary key,
FirstName Varchar(20) unique NOT NULL,
City varchar(20))

insert into UNIQUE_TEST1 values(1,'Meena','indore')
insert into UNIQUE_TEST1 values(1,NULL,'indore') 
--Exception: Cannot insert the value NULL into column 'FirstName', table 'Testing21.dbo.UNIQUE_TEST1'; column does not allow nulls. INSERT fails.
insert into UNIQUE_TEST1 values(2,'Meena','indore')

--5.Check Key
--Check constraint is used to restrict or limit the value range that can be placed in a column.
--If you define CHECK constraint on a single column it allows only certain values for this column.

Create table check_test(CID int primary key,
FirstName varchar(20) Unique,
Loc varchar(20) NOT NULL,
Age int check (age > 18))

insert into check_test values(1,'Praveen','Pune',20)
insert into check_test values(1,'Amit','Mumbai',18)
insert into check_test values(2,'Shiva','Jaipur',17) 
--exception : The INSERT statement conflicted with the CHECK constraint "CK__check_test__Age__45F365D3". The conflict occurred in database "Testing21", table "dbo.check_test", column 'Age'.

select * from check_test

Create table check_test2(CID int primary key,
FirstName varchar(20) Unique,
Loc varchar(20) NOT NULL,
Age int check (age > 18),
region varchar(20) check(region ='East'))

insert into check_test2 values(2,'meera','Jaipur',19,'') 
--exception: The INSERT statement conflicted with the CHECK constraint "CK__check_tes__regio__5AEE82B9". The conflict occurred in database "JobHunt8", table "dbo.check_test2", column 'region'.

--6.Default Constraint
--DEFAULT constraint is used to insert a default value into a column.
--The default value will be added to all new records, if no other value is specified.

create table default_test(D_ID int primary key,
DName varchar(20) unique,
Loc varchar(20) DEFAULT 'PUNE',
Pincode int Default '411061')

--I
insert into default_test values (1,'Amol','Mumbai','000001')
insert into default_test values (2,'Sheetal',DEFAULT,'411027')
insert into default_test values (3,'Meera',DEFAULT,DEFAULT)

select * from default_test

--II
insert into default_test (D_ID,DName) values (4,'Meena')
insert into default_test (D_ID,DName,Loc) values (5,'Rohit','Mumbai')


create table default_test1(D_ID int primary key,
DName varchar(20) unique,
Loc varchar(20) DEFAULT 'PUNE',
Pincode  varchar(20) default  '000000')

insert into default_test1 values (1,'shiva','Latur',default)

select * from default_test1

--Auto-increment
--It is used to create the unique values inside the table on defined column.
--While cretaing a unique value we can provide the diffrence of uniqueness.

--Syntax : column_name IDENTITY(start,Diff of next value)

--ex: accountno identity (1111288780,5) --1111288780,1111288785,1111288790
create table Auto_test(Aid int identity primary key ,
First_Name varchar(20))

insert into Auto_test values('mohit')
select * from Auto_test
insert into Auto_test values('sumeet')
insert into Auto_test values('Rohit')

create table Auto_test1(AID int primary key identity (1,4),
Name varchar(20),
Pin int )

insert into Auto_test1 values ('amay','123456')
insert into Auto_test1 values ('sumeeet','123456')
insert into Auto_test1 values ('mohit','145656')

select * from Auto_test1

select * from Auto_test

create table Account_open(Account_Number int identity(1111288780,1) primary key,
account_Name varchar(20),
Branch varchar(20))
select * from Account_open

insert into Account_open values('Praveen','Delhi')
insert into Account_open values('Amit','Pune')
insert into Account_open values('Sumit','Patna')
insert into Account_open values('Mohit','Jaipur')
insert into Account_open values('Rohit','Mumbai')

select * from Account_open

--Q.Create a employee table by using all the constraints?

--CLASS-8
--3.Gorup by 
--Group by Statement is used in conjunction with aggregate functions to group by the result set by one or more columns.

--Syntax
--select COL_NAME,aggregate_function(COL_NAME)
--From Table_Name
--Where Col_Name operator value
--GROUP BY COL_NAME


create table orders (O_ID int, Customer varchar(20),orderprice int,ordercategory varchar(20))

insert into orders values (1,'Kate',2000,'grocery')
insert into orders values (2,'Mark',3000,'Fruits')
insert into orders values (3,'Tim',4000,'grocery')
insert into orders values (4,'Paine',5000,'Cloths')
insert into orders values (5,'Steve',6000,'Sports')
insert into orders values (6,'Bill',7000,'grocery')
insert into orders values (7,'Andy',8000,'Electronics')
insert into orders values (8,'Grant',9000,'Sports')
insert into orders values (9,'Pat',2500,'Cloths')
insert into orders values (10,'Shon',3500,'Electronics')


select * from orders

select distinct(ordercategory) from orders

select ordercategory,SUM(orderprice) as TotalValue from orders  group by ordercategory 
select ordercategory,SUM(orderprice) as TotalValue from orders where ordercategory = 'Fruits' group by ordercategory 


--Q.How to display the minimum price of each order category ?
select ordercategory,MIN(orderprice) as MinPrice from orders group by ordercategory


select * from orders where COUNT(ordercategory) > 1
--Exception: 
--An aggregate may not appear in the WHERE clause unless it is in a subquery contained in a HAVING clause or a select list, and the column being aggregated is an outer reference.

--Q.How to display order category whose having more than two customer and its min price.
select ordercategory,MIN(orderprice) as minPrice,COUNT(*) as categoryCount from orders  
group by ordercategory having COUNT(*) > 2


--HAVING Clause
--The Having Clause was added to SQL because WHERE Clause is not used with aggregate functions.
--Synatx 
--select COL_NAME,aggregate_function(COL_NAME)
--From Table_Name
--Where Col_Name operator value
--GROUP BY COL_NAME
--HAVING aggregate_function(COLUMN_NAME) operator value

--Display the ordercategory whose customer base is more than 1?
select * from orders
select ordercategory from orders group by ordercategory having COUNT(*) > 1

--Display the ordercategory and its count whose customer base is more than 1?
select ordercategory, COUNT(*) as Customers  from orders group by ordercategory having COUNT(*) > 1

--Want to display the ordercategory whose sum is grater than 10000.
select ordercategory from orders group by ordercategory having SUM(orderprice) > 10000

--Want to display the ordercategory and its sum whose sum is grater than 10000.
select ordercategory,SUM(orderprice) as orderSum from orders group by ordercategory having SUM(orderprice) > 10000
--Difference between WHERE clause and HAVING Clause.



--SQL Statements
--1. DML (Data Manipulation Language) --S_UID
--These statements are used to play with table data which is stored inside the table.
--SELECT, UPDATE, INSERT and DELETE
 
--2. DDL (Data Definition Language) -- DR.CAT
--These statements are used to play with table related activities.
--CREATE, ALTER, TRUNCATE, DROP, RENAME
 
--3. DCL (Data Control Language)
--This statements are used to provide the access to a user, this role is assigned to DBMS admin.
--GRANT, REVOKE

--4.TCL (Transaction Control Language)
--This statements are used to perform control related activities during SQl statements execution.
--TRAN, COMMITTRAN, ROLLBACK.

--Q. How to display the duplicate records from table?

--UPDATE
--The UPDATE Statement is used to update existing records in a table.
--While Updating column if you have not specified condition then it will modify/update the complete column.


--Syntax
--UPDATE table_name SET Col1 = value1,col2 = value2,....
--WHERE Some_Column = Some_value.

--single column update
select * from Emp

update Emp SET Esal = 2222 where EID =2

--Multiple column update
update Emp set Ename = 'Rohan',Esal = 3333 where EID=3 
select * from Emp
update Emp set Ename = 'Mohini',Esal = 1111 where EID in (1,3)

--Q.How will you update the salary of employees whose id is ranging from 500 to 1000?

--CLASS -9
--DELETE
--DELETE Statement is used to delete the rows in a table.
--DELETE Statement delete the records from a table ROW-by-ROW.
--DELETE statement will not able to delete the structure of the table.

--Syntax
--DELETE FROM table_name
--WHERE some_col = Some_Vale

select * from employee
--Delete specific row
delete from Employee where EID =12

--Delete the table data 
select * from Emp
delete Emp
--OR
delete from Emp 
--Delete multiple rows from a specific range
select * from employee where EID in (8,9)
delete employee where EID in (8,9)

--Q.Delete the records from employee table whose employee count is more than two?


--2.DDL (Data Definition Language) --(DR.CAT) 
--These statements will help you to play with table columns/Attributes.
--Always with DDL statements We need to use Table keyword with statement.

--Truncate 
--It will you to delete the records from a table at once.
--Truncate statement will not delete the table structure.
--It will not allow you to delete the records from a table on ROW-by-ROW basis.

--Syntax:
--TRUNCATE TABLE table_name 
select * from Auto_test
insert into Auto_test values ('A')
insert into Auto_test values ('B')
insert into Auto_test values ('C')
insert into Auto_test values ('D')


truncate table Auto_test1 

--DROP
--DROP Statement will allow you to delete the table structure along with table data.
--DROP is also used to drop the DATABASE.

--Syntax
--DROP Table table_name
--DROP DATABASE database_name

select * from Auto_test

--Drop table 
drop table Auto_test  

--Drop database
create database sampletest

drop database sampletest

--Q. What is the difference between DELETE, DROP and Truncate?
--Q. What is the difference between DELETE and DROP?
--Q. What is the difference between Truncate and DROP?
--Q. What is the difference between Delete and DROP?


--Table Back up
--We can take table back up by using the below statement/syntax we can take the back up

--Syntax:
--SELECT * INTO Table_backup_Name FROM table_name

--Q. How to take the table backup 
select * from employee

select * into employee_HR_Bkp from employee where Dept ='HR'


--DATABASE Backup
--While taking the back of database we need to mention the path where we want to take backup.

--BACKUP DATABASE Testing21 TO DISK = 'E:\.bak'
 backup database jobhunt8 to disk = 'D:\.bak'

--INSERT INTO SELECT 
--This Statement is used to copy data from one table and inserts it into another table.
--But condition is that, it requires the data type in source and target tables should match.

select * from employee
insert into employee values (8,'puspha','Warangal','Admin',80000)
insert into employee values (13,'Lili','Bengal','','')

select * from employee_Bkp

insert into employee_HR_Bkp select * from employee where EID in (9)


create table orders1 (O_ID int, Customer varchar(20),orderprice int,ordercategory varchar(20))

select * from orders
select * from orders1

insert into orders1 select * from orders where ordercategory ='grocery'

select * from orders1

create table orders2 (O_ID int, Customer varchar(20))
select * from orders2

insert into orders2 select O_ID,Customer from orders where ordercategory ='Electronics'

select * from orders3

insert into orders3 select O_ID,Customer,orderprice,ordercategory from orders where ordercategory ='Cloths'

--ALTER
--By using ALTER Statements, we can manipulate/Play with table columns/Attributes/Fields.
--By using ALTER function, we can perform multiple operations.
--1.WE can add one or more columns at a time into table.
--2.WE can delete one or more columns at a time into table.
--3.WE can Increase and decrease the size of column into table.
--4.WE can change the data type of a column.
--5.We can drop the constraints from column into a table.
--6.We can define the constraints to column.

--Syntax
--ALTER TABLE Table_Name ADD Column_Name dataType --To add Column
--ALTER TABLE Table_Name DROP COLUMN Column_Name  --To Delete Column
--ALTER TABLE Table_Name Add constraint pk_key_Name primary key (Column_name) -- Add Constraint


Create Table ALTER_TEST (AID int primary key, ANAME varchar(20),ALOC varchar(30) default '411061', avalue varchar(20) not null unique)
select * from ALTER_TEST
--Add single column into table
alter table ALTER_TEST add ALOC varchar(30) default '411061'

select * from ALTER_TEST

insert into ALTER_TEST values (1,'Mohit',Default)
insert into ALTER_TEST values (2,'Parveen','411027')
insert into ALTER_TEST values (3,'Amit',Default)

select * from ALTER_TEST
--Adding multiple columns into a table.
alter table ALTER_TEST add ASAL int, ADEPT varchar(20)

--Delete single column from table
alter table ALTER_TEST drop column ADEPT

--Delete Multiple columns from table
ALTER table alter_test drop column ASAL,ALOC

select * from ALTER_TEST

--IF you want to check the structure of table then we have to use below syntax --****VVIMP
SP_HELP ALTER_TEST

--Increase the size of column
alter table ALTER_TEST alter column ANAME varchar(7)

--Decrease the size of column
ALTER table alter_test alter column ANAME varchar(2)

--NOTE: if you are trying to decrease the size of column less than the lenghth of inserted data i to that column then it will through an exception
--Exception: String or binary data would be truncated in table 'Testing21.dbo.ALTER_TEST', column 'ANAME'. Truncated value: ''.


ALTER table alter_test alter column ANAME varchar(5)


--Change the datatype of column
ALTER table alter_test alter column AID bigint
ALTER table alter_test alter column AID varchar(20)

ALTER table alter_test alter column ANAME int
--Exception: Conversion failed when converting the varchar value 'Mohit' to data type int.
--the statement will work when we dont have records inside the table.
truncate table ALTER_TEST
ALTER table alter_test alter column ANAME int
SP_HELP ALTER_TEST
--CLASS-10
--Adding a constraint to the column
--Syntax:
--ALTER TABLE table_Name ADD CONSTRAINT CONSTAINT_KEY PRIMARY KEY (COLUMN_NAME)
select * from ALTER_TEST
--NOT NULL + UNIQUE 

ALTER TABLE ALTER_TEST Add constraint PK primary key(AID) 
--Exception
--Cannot define PRIMARY KEY constraint on nullable column in table 'ALTER_TEST'.
--Could not create constraint or index. See previous errors.

ALTER TABLE ALTER_TEST alter column AID int not null
SP_HELP ALTER_TEST
--Note
--1.While defining PK, if there is no data inserted into the table then we can define PK but column should define with NOT NULL constraint.
--2.If the data is inserted into the table, then if it is unique data and NOT NULL constraint is defined then only, we can define PK on column.


--Drop the constraint from column
ALTER table alter_test Drop constraint PK  

select * from alter_test

insert into ALTER_TEST values (1,'Swami',411027,1)
insert into ALTER_TEST values (2,'Meena',411028,2)
insert into ALTER_TEST values (3,'sheena',default,3)
insert into ALTER_TEST values (1,'Tina',411030)

delete ALTER_TEST where ANAME='Tina'
--Duplicate
Create table duplicate (DID int , DNAME varchar(20),Dloc varchar(20))

insert Into duplicate values(1,'Amit','Bidar')
insert Into duplicate values(2,'Sumit','Pune')
insert Into duplicate values(1,'Amit','Bidar')
insert Into duplicate values(2,'Sumit','Pune')
insert Into duplicate values(3,'Mohit','Mumbai')
insert Into duplicate values(4,'Rohit','Ranchi')
insert Into duplicate values(3,'Mohit','Mumbai')
insert Into duplicate values(4,'Rohit','Ranchi')

select * from duplicate
SP_help duplicate
--Q. How to find duplicate records from table?
--There are multiple ways we can find duplicate records from table.
--1. By using PK in select list we can find out the duplicate records
--Syntax:
Select <PK1>,<PK2>...<PKn> , count(*) as Duplicate from Table_Name group by <PK1>,<PK2>...<PKn> having count(*) > 1

select AID ,COUNT(*) as Duplicate from ALTER_TEST group by AID having COUNT(*) > 1

--Exception: Table 'ALTER_TEST' already has a primary key defined on it.
--NOTE: When PK is defined on table then by using alter statement we cant add second PK
--		while creating a table also we can add only one primary keys.

drop table ALTER_TEST
--2.If PK is not defined then we can use all the columns from table into the select list and we can find duplicate records from table.
--syntax:
select col1,col2,...coln , count(*) as duplicate from Table_name group by col1,col2,...coln having count(*) > 1

select DID,DNAME,Dloc, COUNT(*) as Duplicate_Record from duplicate group by DID,DNAME,Dloc having COUNT(*) > 1

--If PK is defined not defined the how to write query to identify duplicate records from table.


--Rename concepts 
--In SQL we have built-in Store procedure to Rename the column from table or we can rename the table name. 
--we don�t have any Keyword called RENAME in SQL server.
--If we work with SQL developer or Teradata then we have RENAME keyword.
--While changing the column name it will give us warning saying that changing any part of an object name could break scripts and stored procedures. 

--To Rename the columns in a table.
--Syntax:
 SP_RENAME 'TABLE_NAME.COLUMN_NAME(OLD)','COLUMN_NAME(New)'

 select * from employee
 SP_RENAME 'employee.dept','Department'

 --Caution: Changing any part of an object name could break scripts and stored procedures.

--To Rename the Tables in a database 
--Syntax:
 SP_RENAME 'DATABASE_NAME.DBO.TABLE_NAME(OLD)', 'TABLE_NAME(NEW)'

 SP_rename 'Jobhunt8.dbo.student','Student_New'
  
--Caution: Changing any part of an object name could break scripts and stored procedures.

--If we want to access the table from anyother database into a present working database then we can doi that by using below syntax
select * from p212223.dbo.COALESCE_TEST


--Information Schema
--By using information schema, we will identify how many tables are there in a database.
--By using information schema, we will identify how many Column are there in a table.

select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME like 'S%'

--By using information schema, we will identify Column names from table.
select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = 'employee'
select COLUMN_NAME from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = 'employee'

--CLASS-11
--JOIN
--Join is used to return a value from both the table which should have common column in both the tables.
--JOIN is the keyword is used in SQL statements to extract the data from two or more tables.

--JOIN = CROSS PRODUCT + CONDITION 

--Types Of joins
--1.JOIN/Inner Join
--2.Outer Join
--		a.Left Join /Left Outer join
--		b.Right Join /Right Outer join
--		c.FULL Join /Full Outer join
--3.SELF join 
--4.Equi-join
--5.Cross Join 

--1.JOIN/Inner Join
--This join return the only matching records from Table
--Join = CROSS PRODUCT + CONDITION

--Syntax:
--select */Column_name(s) from Table_Name1 T1
--INNER JOIN /JOIN Table_Name2 T2
--ON T1.Column_name =T2.Column_name

create table A (AID int, ANAME varchar(10),ACITY varchar(20)) 

insert into A values (1,'Mohit','Indore')
insert into A values (2,'Sumit','Jaipur')
insert into A values (3,'amit','Delhi')
insert into A values (4,'preeti','Hyderabad')
insert into A values (5,'Rohit','Warangal')

create table B (BID int, BNAME varchar(10),BCITY varchar(20),AID int)

insert into B values (11,'Sheela','Mumbai', 3)
insert into B values (12,'Maya','Pune',4)
insert into B values (13,'Riya','Nasik',5)
insert into B values (14,'Shina','Sangli',6)
insert into B values (15,'Meena','Satara',7)
insert into B values (16,'Rohit','Warangal',8)

select * from A
select * from B
--joinin Two Tables 
select * from A join B ON A.AID = B.AID

select a.AID,ANAME,ACITY,BNAME,BCITY from A inner join B ON A.AID = B.AID

select * from A join B ON A.AID = B.BID -- We can apply join condition on any column , it will work but it will provide empty result.

create table C (CID int, Age int,BID int)
insert into C values (21,17,11)
insert into C values (22,19,12)
insert into C values (23,21,13)
insert into C values (24,23,18)
insert into C values (25,25,19)

select * from A
select * from B
select * from C

--Joining three tables
select * from A join B on A.AID = B.AID Join C on B.BID = C.BID 
--Joining four tables 
select * from A join B on A.AID = B.AID Join C on B.BID = C.BID JOIN D ON C.CID =D.CID

--2.Outer Join
--		a.Left Join /Left Outer join 
--All the records from left table and matching records from right table it will show and for non matching records it will display as NULL values.

--Syntax:
--select */Column_name(s) from Table_Name1 T1
--LEFT OUTER JOIN /LEFT JOIN Table_Name2 T2
--ON T1.Column_name =T2.Column_name
select *from A
select *from B
--A left join B
select * from A left join B ON A.AID = B.AID 
--OR
select * from A left outer join B ON A.AID = B.AID 

select *from A
select *from B
select * from C
--A left join B
--select * from A left join B ON A.AID = B.AID 
--OR
select * from A left outer join B ON A.AID = B.AID  left join C on B.BID =C.BID

select * from B left join C on B.BID =C.BID

--		b.Right Join /Right Outer join
--All the records from right table and matching records from left table it will display and for non matching records it will display as NULL values

--Syntax:
--select */Column_name(s) from Table_Name1 T1
--Right OUTER JOIN /Right JOIN Table_Name2 T2
--ON T1.Column_name =T2.Column_name


select *from A
select *from B
--A right join B
select * from A right join B ON A.AID = B.AID 
--OR
select * from A right outer join B ON A.AID = B.AID 

select *from A
select *from B
--select * from C

--A right join B
select * from A right join B ON A.AID = B.AID 
select * from B left join A ON A.AID = B.AID 
--A right join B == B left join A --Outputs are same but not in exact order

--Joining three tables by using right join
select * from A right outer join B ON A.AID = B.AID  right join C on B.BID =C.BID

select * from B right join C on B.BID =C.BID


--		c.FULL Join /Full Outer join
--It will display the complete records from both the tables.
--If the records are not matching then for the respective table records it will display the NULL values.

--Syntax:
--select */Column_name(s) from Table_Name1 T1
--FULL OUTER JOIN /FULL JOIN Table_Name2 T2
--ON T1.Column_name =T2.Column_name

select * from A
select * from B

select * from A full outer join B on A.AID = B.AID
--3.Self Join
--It combine a table on  itself or Join a table itself with equal and non-equal condition.

create table SELFJOIN_TEST (EID int ,ENAME varchar(10),MANAGERID int)

insert into SELFJOIN_TEST values (1,'Praveen',3)
insert into SELFJOIN_TEST values (2,'Amit',5)
insert into SELFJOIN_TEST values (3,'Kumar',4)
insert into SELFJOIN_TEST values (4,'Meena',2)
insert into SELFJOIN_TEST values (5,'Pushpa',1)
insert into SELFJOIN_TEST values (6,'Sumit',7)

select * from SELFJOIN_TEST s1 ,SELFJOIN_TEST s2 where s1.EID = s2.EID

select * from SELFJOIN_TEST s1 ,SELFJOIN_TEST s2 where s1.MANAGERID = s2.EID

select s1.EID,s1.ENAME,s2.ENAME from SELFJOIN_TEST s1 ,SELFJOIN_TEST s2 where s1.MANAGERID = s2.EID


select A1.EID,A1.ENAME from SELFJOIN_TEST A1

--SELF JOIN
select * from SELFJOIN_TEST S1,SELFJOIN_TEST S2 where S1.MANAGERID = S2.EID

select S1.EID,S1.ENAME,S2.ENAME from SELFJOIN_TEST S1,SELFJOIN_TEST S2 where S1.MANAGERID = S2.EID

--SELF JOIN can be used as 
--1.Inner Join
select S1.EID,S1.ENAME,S2.ENAME from SELFJOIN_TEST S1,SELFJOIN_TEST S2 where S1.MANAGERID = S2.EID;
select S1.EID,S1.ENAME,S2.ENAME from SELFJOIN_TEST S1 inner join SELFJOIN_TEST S2 ON S1.MANAGERID = S2.EID;

--2.Left Join
select * from SELFJOIN_TEST S1 left join SELFJOIN_TEST S2 ON S1.MANAGERID = S2.EID
--S1.EID,S1.ENAME,S2.ENAME
--Q. Write SQL query for left join by using self join?

--3.Right Join
select * from SELFJOIN_TEST S1 right join SELFJOIN_TEST S2 ON S1.MANAGERID = S2.EID

--Q. Write SQL query for right join by using self join?

--4.Equi-join
--If you are not using JOIN keyword while joining the two tables then that will be considered as equi-join.
select * from A
Select * from B

select * from A, B where A.AID= B.AID -- by default it will be act as inner join.

--5.Cross Join 
--It is cartesian product.
--For ex: If table A is having 5 records and table B is having 4 records then it will multiply and display the result.
--i.e 20 records it will display (5*4 = 20).

select * from A
select * from B

select * from A , B
--OR
select * from A cross join B

select * from A cross join B where a.aid =b.aid

--SET operator
--1.UNION
--2.UNION ALL
--3.INTERSECT
--4.EXCEPT/MINUS

--1.UNION
--The Union operator is used to combine the result-set of two or more SELECT statements or Table.
--The UNION operator selects distinct values by default.

--Note: 
--1.Each select statement or table within UNION must have the same number of columns.
--2.The columns must have similar data types.
--3.The columns in SELECT statement or table must be in the same order.

--Example :
--A =[1,2,3,4,5]
--B =[3,4,5,6,7]

--A union B =O/P =[1,2,3,4,5,6,7]

create table set1 (S_ID int ,SNAME varchar(20))

create table set3 (S_ID int ,SNAME varchar(20))

insert into set1 values(1,'A')
insert into set1 values(2,'B')
insert into set2 values(3,'C')
insert into set2 values(4,'D')
insert into set2 values(5,'E')
insert into set3 values(6,'F')
insert into set3 values(7,'G')
insert into set3 values(8,'H')
insert into set3 values(9,'S')
insert into set3 values(10,'T')

alter table set1 add Scity varchar(20) default 'PUNE'
SELECT * FROM SET1
SELECT * FROM set2

SELECT S_ID,SNAME FROM SET1
Union
SELECT S_ID,SNAME FROM SET2 


 --2.Union All
--This operator is used to combine two or more tables using select statement when both the tables have same no. of columns.
--Combine the two or more tables with all the values. it means that it will allow duplicate values in it.
SELECT * FROM SET1
SELECT * FROM set2

SELECT S_ID,SNAME FROM SET1
Union all
SELECT S_ID,SNAME FROM SET2 

SELECT * FROM SET1
Union all
SELECT * FROM SET2 

select 
 --3.Intersection
--It will return only Matched/Common values from two or more tables.
--For ex: A = [1,2,3,4,5] and B= [3,4,5,6,7]
--A Intersect B = o/p  =[3,4,5]
SELECT * FROM SET1
SELECT * FROM set2
--SELECT * FROM set3

SELECT S_ID,SNAME FROM SET1
intersect
SELECT S_ID,SNAME FROM SET2 

SELECT * FROM SET2
intersect
SELECT * FROM SET3


--4.Except/minus
--It will display the difference in records.
--For ex: A = [1,2,3] and B= [3,4,5]
--then A except B - O/P =[1,2]
--then B except A - O/P =[4,5]
select * from set2
select * from set3
select * from set2
except
select * from set3

select * from set3
except
select * from set2

--Class-12
--Date and Time Function
--getdate 
select getdate() as Todays_date-- Todays date

select getdate() -1 as Yesterday_date --Yesterday date 

select getdate() +1 as Tomorrow_date --Tomorrow date 

select getdate() +2

--There are three diffrent functions in SQL to modify or perform any date related task
--1.DATEDIFF()
--2.DATEPART()
--3.DATEADD()

--1.Datediff() function
--The datediff function requires 3 argument(s).
--If we provide more than 3 arguments then it will through an exception 

--syntax : DATEDIFF(interval,date1,date2)

--(YY,MM,DD,HH,Minutes and seconds)

--interval
--Year,YYYY, YY = Year
--Quarter,QQ, Q = Quarter
--Month, MM, M = Month
--DAYOFYEAR - day of the year
--DAY,dy,y = day
--WEEK,WW,WK = weekday
--HOUR,HH = hour
--MINUTE,MI,N = Minute
--SECOND,SS,S = Second 
--MILISECOND , MS = Millisecond

--Q.HOW  to calculate your age ?
select DATEDIFF(YY,'1990/01/01',GETDATE()) as presentage
select DATEDIFF(Mm,'1990/01/01',GETDATE()) as presentage

select DATEDIFF(QUARTER,'2021/01/01','2021/10/01')


Create table Account_details (
ACCT_NUMBER int primary key identity(11112881,1),
ACCT_NAME varchar(20),
ACCT_OPEN_DATE varchar(20),
BRANCH Varchar(20))

insert into Account_details values ('Shubham','2015/12/09','MUMBAI')
insert into Account_details values ('Rihan','2016/01/12','Jaipur')
insert into Account_details values ('Sheetal','2017/08/11','GOA')
insert into Account_details values ('Priyanka','2017/01/01','Chennai')
insert into Account_details values ('Manik','2015/01/08','Agra')
insert into Account_details values ('Veena','2021/01/01','Patna')
insert into Account_details values ('Rohan','2019/07/01','Pune')
insert into Account_details values ('Laxmi',GETDATE(),'rohatak')
insert into Account_details values ('Jinal',GETDATE(),'Indore')
insert into Account_details values ('Rohan','2022/01/01','Delhi')

select CAST(getdate() as varchar) 
--Acoounts opened during the current year
select * from Account_details

select *, DATEDIFF(YY,ACCT_OPEN_DATE,GETDATE()) as Accountage  from Account_details 
where DATEDIFF(YY,ACCT_OPEN_DATE,GETDATE())=0

--Acoounts opened during the current year and current month
select *, DATEDIFF(MONTH,ACCT_OPEN_DATE,GETDATE()) as Accountage  from Account_details 
where DATEDIFF(MONTH,ACCT_OPEN_DATE,GETDATE())=0

--Number of acoounts opened during the current year
select COUNT(*) as Currentyearaccount  from Account_details 
where DATEDIFF(YY,ACCT_OPEN_DATE,GETDATE())=0


--Q.What is the age of your bank account
select *, DATEDIFF(YY,ACCT_OPEN_DATE,GETDATE()) as Accountage  from Account_details 

--2.DATEPART
--This will allow you to display the date part 

--Syntax : DATEPART(interval,date/column_name)


select DATEPART(MONTH,'2021/01/01')
select DATEPART(YEAR,GETDATE())

select * from Account_details where ACCT_OPEN_DATE in ('2021','2015')  

-- wrong assumption while comparing date related columns from source to target.

--if we want to validate date related column which is in terms of timestamp 
--and it is very difficult to mention each and every time stamp related column with every date
--in order to avoid that we can use date part so it will consider with mentioned interval.

select *,DATEPART(YY,ACCT_OPEN_DATE) as years from Account_details 
where DATEPART(YY,ACCT_OPEN_DATE) in ('2021','2015','2022')  

--3.DATEADD()
--it will allow you to add the dates.
--it will accept three arguments.

--syntax : DATEADD(interval,value,date/datecolumn)
select DATEADD(MM,48,getdate()) As After2years ---2024-02-23 07:02:27.837

select GETDATE() + 3650
select * from Account_details
select *,DATEADD(YY,1,ACCT_OPEN_DATE) as PlusOneYear from Account_details

--Null Value replacement
--We can replace NUll values from column by using three fuctions
--1.ISNULL()
--2.Coalesce()
--3.Case()

create table NULL_TEST1(NID int, EMP_NAME varchar(20),Manager varchar(20))

insert into NULL_TEST1 values (1,'Piya','Sohan')
insert into NULL_TEST1 values (2,'kate',NULL)
insert into NULL_TEST1 values (3,'meera','aman')
insert into NULL_TEST1 values (4,'amit',NULL)
insert into NULL_TEST1 values (5,'sumit','Kiran')

select * from NULL_TEST1

--1.ISNULL() --SQL server 
 --This function will help us to replace NULL value with any other user defined value.
 --synatx: ISNULL(Col_name,'String')
 --It will accept Two arguments 

 --NVL - SQL DEVELOPER - Oracle
 --IFNULL - MySql 

 --is null -- used to validate null values from column
 --isnull --used to replace null values from column

 select NID,EMP_NAME,ISNULL(Manager,'No Manager') as Manager from NULL_TEST1

 --Class-13

--2.COALESCE 
--It will find or try to locate first appearance of NON-NULL value from a row of table.
--If it is not possible to find or locate NON-NULL value then it always returns a NULL value.
--If there are any blank or empty spaces then it will display space in result because space is not considered as NULL value.

--syntax:COALESCE (col1,col2,....coln)

create table COALESCE_TEST (CID int,FN varchar(20),MN varchar(20),LN varchar(20), sal int)


insert into COALESCE_TEST values (1,'A',NULL,NULL,200)
insert into COALESCE_TEST values (2,NULL,'B',NULL,450)
insert into COALESCE_TEST values (3,NULL,NULL,'C',200)
insert into COALESCE_TEST values (5,'',NULL,'D',200)
insert into COALESCE_TEST values (6,'E','F','G',200)
insert into COALESCE_TEST values (Null,NULL,NULL,NULL,500)
insert into COALESCE_TEST values (7,'','T','H',500)

select * from COALESCE_TEST
--FN+MN+LN = FULL NAME

select Cid,COALESCE(FN,MN,LN) as FullName,sal from COALESCE_TEST
--COALESCE(varchar,varchar,varchar,int) -it will through an exception
select Cid,COALESCE(FN,MN,LN) as FullName,sal from COALESCE_TEST

select Cid,COALESCE(cid,FN,MN,LN) as FullName,sal from COALESCE_TEST

select COALESCE(NULL,NULL,'SCODEEN')


--3.Case statement
--Case statement identify the condition and returns a values.
--It will work like IF-ELSE statement
--If there is no ELSE statement then it will return NULL Value .

--Synatx
--CASE
--	WHEN condtion THEN result1
--	WHEN condtion THEN result2
--	ELSE result 
--END
select * from NULL_TEST1

select NID,EMP_NAME,manager,CASE
					when Manager IS Null then 'NO Manager'
					when Manager ='Sohan' then 'Priyanka'
					ELSE Manager
					END	as Manager 				
from NULL_TEST1


--By using Update statement will write case statement
Update NULL_TEST1 SET Manager =
								case 
								when Manager IS NULL then 'Ajay'
								when Manager ='Piya' then 'Mohan'
								when Manager= 'Kiran' then 'Rohit'
								else Manager
								END 

Update NULL_TEST1 SET Manager =
								case 
								when NID In (2,4) then 'Sheena'
								when NID in (1,3,5) then 'Meena'
								else Manager
								END ,
								EMP_NAME=
								case 
								when EMP_NAME ='Kate' then 'Ajay'
								when EMP_NAME ='Sumit' then 'Mohan'
								else EMP_NAME
								END 


update NULL_TEST1 set EMP_NAME ='Priyanka',Manager= 'Shital' where NID =1 

select * from NULL_TEST1

--Exist and Not Exist
--EXIST is used to check whether the result of co-related nested query is empty or not.
--Exist(S) 
--TRUE: S has atleast one row/record
--FALSE : S has no row/record.

--NOT EXIST(S)
--TRUE:S has no row/record.
--FALSE :S has at least one row/record

Create Table customer(C_ID varchar(5) primary key ,CNAME varchar(20),Loc varchar(20))

insert into customer values('C1','AMIT','PUNE')
insert into customer values('C2','Sumit','Delhi')
insert into customer values('C3','varun','Mumbai')
insert into customer values('C4','snehal','Latur')
insert into customer values('C5','Raj','Sangli')
insert into customer values('C6','Mohit','Satara')

select * from customer

create table order1(OID int primary key, CID varchar(5),groceries varchar(20))

insert into order1 values(1,'C2','almonds')
insert into order1 values(2,'C3','deo soap')
insert into order1 values(3,'C1','milk')
insert into order1 values(4,'C2','soap') 
insert into order1 values(5,'C4','dishes')
insert into order1 values(6,'C2','rice')
select * from customer
select * from order1
--OQ									--IQ
select * from customer p25 where exists (select * from order1 p24 where p25.C_ID=p24.CID)

select * from customer C where not exists (select * from order1 O where C.C_ID=O.CID)


--Sub query and Co-Relational Query
--Sub query (Nested subquery)
--Query within query i.e. outer query (OQ) and inside inner query (IQ).
--OQ and IQ is independent.
--It follows bottom-up approach
--Inside Subquery, IQ always execute only once.

select * from customer where C_ID in (select CID from order1 ) --(C2,C3,C1,C2,C4,C2)
--Co-relational query
--Query within query i.e. outer query (OQ) and inside inner query (IQ).
--Inner Query (IQ) is dependent on outer query(OQ).
--It follows top down up approach.

select * from customer where exists (select * from order1 where customer.C_ID= order1.CID)

--Q. What is the difference between Sub-query and Co-relational query.

--Over Clause
--Over by Clause is used to determine which row has been applied to the function.
--Over clause combined with a partition by clause and is used to divide data into partitions.

--Syntax:
--Function () over (partition by col1, col2 ...etc)
--Along with functions like Count(), AVG(),Max(),Min(),sum(),rank(),dense_rank() and rownumber() etc.

create table over_Test(EMPID int, FirstName varchar(20),Gender varchar(2),salary int)

 insert into over_Test values(1,'Mohini','F',1000)
 insert into over_Test values(2,'Rohit','M',2000)
 insert into over_Test values(3,'Amit','M',4000)
 insert into over_Test values(4,'Sonal','F',5000)
 insert into over_Test values(5,'Minal','F',6000)
 insert into over_Test values(6,'Amar','M',3600)
 insert into over_Test values(7,'Shital','F',4500)
 insert into over_Test values(8,'Sohil','M',6000)
 insert into over_Test values(9,'praveen','M',9000)
 insert into over_Test values(10,'Mithali','F',2000)
 insert into over_Test values(11,'seema','F',2000)
 insert into over_Test values(12,'meena','F',6000)

 select * from over_Test
--Aggregate data 
select gender ,count(*) as TotalCount ,avg(salary) as AvgSal,MAX(salary) as MaxSal ,min(salary) as MinSal,SUM(salary) As SumSal
from over_Test
group by Gender
--If we want non-aggregateed values(like firstname and salary) in result set along with aggregated values 

--FirstName	Gender	salary  Avsal   MaxSal  Minsal  SumSal TotalCount RunningSal
--	Mohini	F		1000	4125	6000	1000	16500	4			1000
--	Sonal	F		5000	4125	6000	1000	16500	4			6000
--	Minal	F		6000	4125	6000	1000	16500	4			12000
--	Shital	F		4500	4125	6000	1000	16500	4			16500
--	Rohit	M		2000	4920	9000	2000	24600	5			2000
--	Amit	M		4000	4920	9000	2000	24600	5			6000
--	Amar	M		3600	4920	9000	2000	24600	5			9600
--	Sohil	M		6000	4920	9000	2000	24600	5			15600
--	praveen	M		9000	4920	9000	2000	24600	5			24600

select FirstName, gender,salary ,count(*) as TotalCount ,avg(salary) as AvgSal,MAX(salary) as MaxSal ,min(salary) as MinSal,SUM(salary) As SumSal
from over_Test
group by Gender,FirstName,salary

--Inorder to avoid this situvation we can include aggregation in subquery and then joining it with the main query

select FirstName, o1.Gender,salary ,o2.genderTotalCount,o2.AvgSal,o2.MaxSal,o2.MinSal,o2.SumSal
from over_Test o1
inner join 
(select gender,count(*) as genderTotalCount ,avg(salary) as AvgSal,MAX(salary) as MaxSal ,min(salary) as MinSal,SUM(salary) As SumSal
from over_Test 
group by Gender) as O2
On o1.Gender = O2.Gender

--We can avoid bunch of code by using simply OVER Clause
select EMPID,FirstName,salary,Gender
,COUNT(gender) over (Partition by gender) as genderTotalCount
,avg(salary) over (Partition by gender) as AvgSal
,max(salary) over (Partition by gender) as MaxSal
,min(salary) over (Partition by gender) as MinSal
,sum(salary) over (Partition by gender) as SumSal
from over_Test
 

--Q. Need to calculate the Running salary from over_test table over partition by Gender.

--RANK, DENSE_RANK AND ROW_NUMBER
--Rank () and Dense_Rank()
--It will return a rank starting at 1 based on ordering of rows and imposed by order by clause.
--Order by clause is required mandatory.
--PARTITION BY Clause is optional.

--500/ 496,488,488,488 ,485,481
---		1,	2,	2,	2,	3,	4  --- Dense_Rank
---		1,	2,	2,	2,	5,	6  --- Rank

--Rank Syntax: 
--RANK () OVER (ORDER BY col1, col2 ,... .coln ASC/DESC [PARTITION BY Col1,col2...coln]) 

--Dense_Rank Syntax:
--DENSE_RANK () OVER (ORDER BY col1,col2,....coln ASC/DESC [PARTITION BY Col1,col2...coln])

Example:
--Marks =496,496,495,494,494,490
--rank = 1,1,3,4,4,6
--Dense_rank = 1,1,2,3,3,4

Example:
--[sal] = [1000,1000,2000,3000,4000]
--Rank() -- [1,1,3,4,5]   
--Dense_rank() --[1,1,2,3,4] -- school level mark inside the class

--Q. What is the difference between Rank() and Dense_Rank()
--Rank() -- Rank function skips ranking if there is same value or number.
--Dense_Rank() --It will not skips ranking if their is same value or number.
select * from over_Test order by salary desc

select *, Rank() over(order by salary ) as Rank1 from over_Test

select *, Rank() over(order by salary ) as Rank1,DENSE_RANK() over (order by salary) as DenseRank from over_Test

--2nd highest salary by using rank ()
select MIN(salary) as SecondMax from over_Test where salary in
(select top 2 salary from over_Test order by salary desc)

select *, rank() over (order by salary desc) as secondmax  from over_Test where rank() over (order by salary desc)=2

select *, dense_rank() over (order by salary desc) as secondmax  from over_Test where dense_rank() over (order by salary desc)=2

--The above rank and dense_rank function through below exception 
--Exception: Windowed functions can only appear in the SELECT or ORDER BY clauses.

--In order to avoid this kind of exception or Error in SQL we have to use CTE i.e. COMMON TBALE EXPRESSION 

--CTE (Common Table Expression)
--It is temporary result set.
--It will store the temporary results to make use of that in your main query.
--It can be referred within a SELECT,INSERT,UPDATE and DELETE statements that immediately follows the CTE.
--Only DML(S_UID) type of operation we can perform on CTE

--Syntax:
--With CTE_NAME [(COL1, COL2,.....etc)]
--AS
--CTE_Query

with RankResult as
(select *, rank() over (order by salary desc) as secondmax  from over_Test )
select * from RankResult where secondmax=3;

with DenseResult as
(select *, dense_rank() over (order by salary desc) as secondmax  from over_Test )
select * from DenseResult where secondmax =3;



--1.Second highest salary by using min and top function
select MIN(salary) as SecondMax from over_Test where salary in
(select top 2 salary from over_Test order by salary desc)


create table students (S_ID int,S_NAME varchar(20),LOC varchar (20),Dept varchar(20))


insert into students values(1,'praveen','mumbai','ETL')
insert into students values(2,'Rohit','Mumbai','Testing')
insert into students values(3,'Akash','Jaipur','HR')
insert into students values(4,'Sada','Warangal','HR')
insert into students values(5,'Rajesh','Hyderabad','Account')
insert into students values(6,'Umesh','Kolar','CCD')

select * from students
--Q. How to find Duplicate from table?
--1. We can identify duplicate records by using PK (Primary Key)
--Select <PK1>,<PK2>,... ,count(*) as duplicate from Table_Name group by <PK1>,<PK2>,... having count(*) > 1

--2.All the column from table need to include in select and group  by list
select S_ID,S_NAME,LOC,Dept,count(*) as duplicate from students group by S_ID,S_NAME,LOC,Dept having count(*) > 1

with DeleteDuplicate as 
(select S_ID,S_NAME,LOC,Dept,count(*) as duplicate from students group by S_ID,S_NAME,LOC,Dept having count(*) > 1)
delete from DeleteDuplicate where duplicate > 1
--If we will try with CTE function then it will through a below exception
--Exception: Cannot update the view or function 'CTE' because it contains aggregates, or a DISTINCT or GROUP BY clause, or PIVOT or UNPIVOT operator.

select * from students

--ROW NUMBER
--It will return the sequential number of rows starting at 1
--Order by clause is required.
--PARTITION BY clause is optional
--When the data is partitioned, row number reset to 1 when the partition changes.

--Syntax:
--ROW_NUMBER () OVER (ORDER BY Col1,col2)
select *, row_number () over (order by S_ID) as ROWNumber from students 
select * from students
select *, row_number () over (Partition by S_ID,S_name,LOC,Dept order by S_ID ) as ROWNumber from students 
--Q. How to delete duplicate records from table?

with DeleteDuplicate as
(select *, row_number () over (Partition by S_ID,S_name,LOC,dept order by S_ID ) as ROWNumber from students )
delete DeleteDuplicate where ROWNumber>1


--Q.By using INSERT and UPDATE in CTE function insert and update the records in CTE result set.

--SQL SERVER FUNCTIONS
--1.UPPER()
--UPPER() Function converts the value of field/Column to upper case.
--The upper case function requires 1 argument
--syntax :upper (text/column name)

select upper('scodeen')
select upper('SCOdeen')

select * , upper(S_NAME) as UpperCase from students

--2.LOWER()
--Lower() Function converts the value of field/Column to lower case.
--The lower case function requires 1 argument
--syntax :lower (text/column name)

select LOWER('SCODEEN')
select LOWER('ScoDEEN')

--3.Substring
--The substring function used to extract charecter from text field 
--Synatx : substring(Column_Name,Start,end[lenth]) from table_Name
--Ex: substring ( 'varchar',int,int)

select substring('scodeen',1,1)
select * from students
--Q.How will you display first three charecters from S_Name column in Studets Table?
select * , SUBSTRING(S_NAME,3,LEN(s_name)) as three_Char from students

--4.DATALENGTH() and LEN()
--This function returns the number of bytes used to reprsent the expression.
--Syntax : DATALENGTH(string),LEN(String/Column_name)

create table length_check (Lid int, Lname varchar(20)) --20

insert into length_check values(1,'Praveen') --7
insert into length_check values(2,'Amit')
insert into length_check values(3,'Meena')
insert into length_check values(4,'Sohan')
insert into length_check values(5,'Rajni')
insert into length_check values(6,'Mohini',DEFAULT)

select * from length_check

alter table length_check add loc char(40) default 'Pune'

select * , DATALENGTH(loc),LEN(loc) from length_check

--5.CONCAT() , CONCAT with + and CONCAT_WS()
--The CONCAT() function adds two or more strings together.
--Syntax: CONCAT(string1,string2....)

select concat('Scodeen',' ','Global',300)
select * from over_Test

select *, CONCAT(FirstName,' ',Gender) from over_Test

select *, CONCAT(Empid,FirstName,Gender, salary) from over_Test
--The + operator allows you to add two or more strings together.
--syntax:string1 + string2 + string_n

select *, EMPID + salary from over_Test

select *, FirstName + ' ' + Gender from over_Test
--The CONCAT_WS() function adds two or more strings together with a separator.
--syntax : CONCAT_WS(separator, string1/Col_name, string2/Col_Name, ...., string_n/NCol_name)

select CONCAT_WS('@','Scodeen','Global')

select CONCAT_WS('_','Scodeen','Global')

select CONCAT_WS('7877','Scodeen','Global')

select CONCAT_WS('@',FirstName,salary) from over_Test

--6.LTRIM(), RTRIM() and TRIM()
--The LTRIM() function removes leading spaces from a string.
--The RTRIM() function removes trailing spaces from a string.
--TRIM() function removes leading as well as trailing spaces from string.

select datalength(Ltrim('               Scodeen'))
select datalength(Rtrim('Scodeen                '))

select datalength(trim('               Scodeen                '))

--7.Reverse()
--The REVERSE() function reverses a string and returns the result.
--synatx : REVERSE(string)

select REVERSE('Pune')

select REVERSE('12345678')
--8.Round
--The ROUND() function rounds a number to a specified number of decimal places.
--Syntax : ROUND(NUMERIC_EXPRESSION, length, [(function)])

--NUMERIC_EXPRESSION : it takes the number to be roundoff. 
--Length : the number of digits that we want to round off.
--		   if length is +ve then rounding is applied after decimal and if  length is -ve the before decimal
--function : is used to indicate rounding or truncation operation. 
--			 0 -indicates rounding and non-zero indicates truncation, by default it is 0.

select round(346.546,2)

select round(366.546,-2)

select round(346.3462345678,2,1)
select round(346.3462345678,2,0)
select round(346.566,1,1)

select round('scodeen',2) --Exception : Error converting data type varchar to float

--9.REPLACE() 
--The REPLACE() function replaces all occurrences of a substring within a string, with a new string.
--Note: The search is not case-insensitive.
--Syntax - REPLACE(string/Col_NAME, old_string/Old_VALUE, new_string/New_VALUE)

-- A-a , B-b meaning is same in replace function.

select REPLACE('ScodeEn','e','M')


--10.REPLICATE()
--The REPLICATE() function repeats a string a specified number of times.
--Syntax :REPLICATE(string, integer)
select REPLICATE('Scodeen',3)

select REPLICATE('Scodeen',100)

--11.CONVERT()
--The CONVERT() function converts a value (of any type) into a specified datatype.
--Syntax :CONVERT(data_type[(length)], expression/Col_NAME, [(style)])


create table DOJ (id int, NAME varchar(20),DOJ datetime)

insert into DOJ values (1,'Mansa','2020-01-01 10:10:10')
insert into DOJ values (2,'Vasavi','2015-06-01 10:20:10')
insert into DOJ values (3,'Pravlika','2014-04-01 11:10:10')
insert into DOJ values (4,'Jyoti','2017-08-01 12:10:10')
insert into DOJ values (5,'Pushpa','2016-05-01 01:23:10')
insert into DOJ values (6,'Seema',GETDATE())

select * from DOJ
select GETDATE()

select *, CONVERT(varchar,DOJ,101) from DOJ
select *, CONVERT(varchar,DOJ,1) from DOJ


select *, CONVERT(varchar,DOJ,112) from DOJ --ISP format

--Style
--Converting datetime to character:
--Without		With 	  Input/Output					Standard
--century		century
--0				100		  mon dd yyyy hh:mi AM/PM		Default
--1				101		  mm/dd/yyyy					US
--2				102		  yyyy.mm.dd					ANSI
--3	            103		  dd/mm/yyyy	                British/French
--4	            104		  dd.mm.yyyy	                German
--5				105	      dd-mm-yyyy					Italian
--6				106		  dd mon yyyy	                -
--7	            107	      Mon dd, yyyy	                -
--8	            108	      hh:mm:ss	                    -
--9	            109	      mon dd yyyy hh:mi:ss:mmmAM (or PM)	Default + millisec
--10	        110	      mm-dd-yyyy	                USA
--11			111		  yyyy/mm/dd					Japan
--12			112	      yyyymmdd						ISO
--13			113	      dd mon yyyy hh:mi:ss:mmm		Europe (24 hour clock)>
--14			114	      hh:mi:ss:mmm					24 hour clock
--20			120	      yyyy-mm-dd hh:mi:ss			ODBC canonical (24 hour clock)
--21			121	      yyyy-mm-dd hh:mi:ss.mmm		ODBC canonical (24 hour clock)
-- 				126	      yyyy-mm-ddThh:mi:ss.mmm		ISO8601
-- 				127	      yyyy-mm-ddThh:mi:ss.mmmZ		ISO8601 (with time zone Z)
-- 				130	      dd mon yyyy hh:mi:ss:mmmAM	Hijiri
-- 				131	      dd/mm/yy hh:mi:ss:mmmAM		Hijiri


--12.CAST()
--The CAST() function converts a value (of any type) into a specified datatype.
--Syntax :CAST(expression AS datatype [(length)])
select convert (varchar ,GETDATE())
select CAST (GETDATE() as varchar)

select convert (varchar ,GETDATE(),112)
select CAST (GETDATE() as varchar)

select CONVERT(int,'12345678')
select cast('1234.3456789' as float)
select * from DOJ

select *,CAST(doj as varchar) from DOJ
--13.CHARINDEX()
--The charindex() function searches for a substring in a string and returns position.
--if the substring is not found, this function returns 0.
--syntax : CHARINDEX(Substring,string,[start])
select charindex('e','Scodeen')

select charindex('@','Scodeen@Global.com')
--Q.How will you findout the place of charecter 'E' in 'SCODEEN'?
  
--Q.How to find domain or server from email column ?VVVIMP****
select *,SUBSTRING(email,CHARINDEX('@',email)+1,len(email)) as Domain from students

--output - Domain
--gamil.com
--yahoo.com
--outlook.com
--Infosys.com

--Q.How to find the number of occurance of 'e' chareter in string? 
--ppeeppeeppeeppeeppee -10
select DATALENGTH('ppeeppeeppeeppeeppee')  --20
select LEN( REPLACE('ppeeppeeppeeppeeppee','e',''))

select DATALENGTH('ppeeppeeppeeppeeppee') -LEN( REPLACE('ppeeppeeppeeppeeppee','p',''))

--VIEW 
--It is a virtual table.
--It is copy of original table.
--We can perform DDL and DML operation on view 

--Syntax : 
--CREATE VIEW vVIEW_NAME
--AS
--SQL Statements 

--How to Create View ?
create view vStudentDetails
AS
select S_ID,S_NAME,email from students

--How to select View?
select * from vStudentDetails
--How to Drop view?
drop view vStudentDetails
--Q.How to extract view script?
SP_HELPTEXT vStudentDetails


--Inside view we can have only one select statement, if we take two select statement then it will through an exception.
--Single select statement
create view vStudentDetails
AS
select S_ID,S_NAME,email from students

--Multiple select statments
create view vStudentDetails
AS
select * from students
select * from over_Test

--NOTE: With use of multiple select statement it will through the below exception
--		Exception : Incorrect syntax near the keyword 'select'.
create view vTotalTables
as
select * from INFORMATION_SCHEMA.TABLES 

select * from vTotalTables

create view vJoinTables
as
select A.AID,B.BCITY,B.BNAME,C.Age from A join B on A.AID=B.AID join C on B.BID=C.BID
select * from vJoinTables
--If we add records in table those added records or changes on table will automatically replicate inside the view.
select * from [dbo].[vStudentDetails]

insert into students values (7,'Seema','Hyderabad','Admin','Seema@HCL.com')
--Insert record in view 
select * from [dbo].[vStudentDetails]

insert into [vStudentDetails] values (8,'Mohan','Mohan@Google.com')
select * from students

--Update record in view 
update [vStudentDetails] set S_NAME = 'Shiva' where S_ID= 4

--Alter view 
alter view vStudentDetails
AS
select S_ID,S_NAME,email,Dept from students

select * from vStudentDetails



--Store Procedure(SP)
--It is a block of code to perform certain action whenever it is nedeed.
--It is working like function.

--We can crete two types of Views
--1.Without Parameter 
--2.With parameter

--Syntax
--Create procedure / proc spSTORE_PROCEDURENAME
--[(@parametrs) <data type> <SIZE>]
--AS 
--BEGIN

--SQL Statements

--END

--1.Without Parameter
create proc spMultipleTables
As 
begin
select * from students
select * from over_Test
END


--How to execute or select the data from store procedure.
--1
spMultipleTables
--2
exec spMultipleTables
--3
execute spMultipleTables

--Q.How to extract SP code ?
sp_helptext spMultipleTables

--How to alter the SP?
alter procedure spMultipleTables
As 
begin
select * from students

END

spMultipleTables

delete students where S_ID>=7

--2.With Parameter 
alter  proc multiplication (@x int ,@y int)
as
begin
	declare @mul int 
	set @mul = @x * @y
	print 'Multiplication of two numbers=' + cast (@mul as varchar)
END 


--=============================
--To execute the SP with parameter we need to supply the values 

multiplication 10,20

--Diffrence between Views and Store procedure
--		View											store Procedure
--1.Views does not accept parameters				1.SP accepts Parameters
--2.Views can contain only single SELECT query		2.SP contains several SELECT statements with condition like if-else etc.
--3.By using views we cant perform modification		3.SP perform modification to one or more tables.
--	to multiple tables.
--4.Views act as virtual table						4.SP acts as function.

--Q.Write SP to create a calculator function?

--Triggers 
--Triggers fired automatically , Once you perform any DML(Insert,delete and update) operation on table.
--Triggers are also known as special king of store procedure.

--Syntax:
--create trigger tr_trigger_Name
--on TABLE_NAME
--for insert/update/delete
--as
--begin

----trigger/SQL statements---

--END

create table emp1(EID int,EName varchar(20),salary int, gender varchar(2))

insert into emp1 values (1,'A',300,'M')
insert into emp1 values (2,'V',300,'F')
insert into emp1 values (3,'C',300,'F')
insert into emp1 values (4,'D',300,'M')
insert into emp1 values (5,'P',700,'F')
insert into emp1 values (6,'S',100,'T')

select * from emp1
--Note:
--Inserted Table is special kind of table used by trigger and it is available only into the the context of trigger.
--Select * from Inserted/Deleted
--1.it returns the copy of rows inserted into the table.
--2.Struture of the inserted/deleted table is identical or same , whatever the table on which we have created trigger.

--Insert Trigger
Create trigger tr_INSERTED
ON EMP1
for INSERT
AS
BEGIN
	select * from inserted

END

insert into emp1 values (7,'X',300,'Y')

--Delete trigger
create trigger tr_DELETED
on emp1
for DELETE 
AS
BEGIN

	select * from deleted

END

delete emp1 where eid >=6

--Update trigger
--(Delete+ INSERT)=Update
create trigger tr_UPDATE
on emp1
for update
as
begin
	select * from deleted
	select * from inserted
end 
select * from emp1

update emp1 set ename ='Deepak',gender='M' where eid =4
insert into emp1 values (6,'S',100,'T')
delete emp1 where eid =6

Create table RecordInfo(ID int identity ,recordinfo varchar(300))

select * from emp1
--Q How to drop trigger ?
--1.
drop trigger tr_inserted 
--2
--From Object explore navigate to Database from which you want to delete the trigger and go to paricular table expand click on triger after that right click on created trigger and navigate delete and delete it

select * from RecordInfo
--Create a trigger for inserted records 
create trigger tr_INSERTED_INFO
on emp1
for insert
as
begin 
		declare @x int
		select @x=eid  from inserted

		insert into RecordInfo values (CAST(@x as varchar(5))+ ' '+'is inserted at '+' '+ CAST (GETDATE() as varchar(20)))
		
end

select * from emp1
select * from RecordInfo

insert into emp1 values (6,'S',100,'T')

insert into emp1 values (7,'X',100,'Y')

--Deleted Trigger
create trigger tr_Deleted_INFO
on emp1
for delete
as
begin 
		declare @x int
		select @x=eid  from deleted
		select * from deleted
		insert into RecordInfo values (CAST(@x as varchar(5))+ ' '+'is deleted at '+' '+ CAST (GETDATE() as varchar(20)))
		
end

select * from emp1
select * from RecordInfo --no define trigger 

delete emp1 where eid=6

--Update trigger info into a table
create trigger tr_UPDATED_INFO
on emp1
for Update
as
begin 
		declare @x int
		select @x=eid  from deleted
		--select @x=eid  from inserted 
		
		insert into RecordInfo values (CAST(@x as varchar(5))+ ' '+'is updated at '+' '+ CAST (GETDATE() as varchar(20)))
		--insert into RecordInfo values (CAST(@x as varchar(5))+ ' '+'is inserted update at '+' '+ CAST (GETDATE() as varchar(20)))

end

select * from emp1
select * from RecordInfo

update emp1 set EName ='Mohit',gender='M' where EID =2

--INDEX
--Indexes are used to retrive the data from the database more quikely or fast than anything.
--The user can not see the indexes but they are used to speed up the searches.

--synatx
--Create Index IX_Index_Name
--ON Table Name (Col1,col2....etc)

--How to find out the indexes on table?
sp_helpindex INDEX_TEST

create table INDEX_TEST1(ID int, Info varchar(20))
insert into INDEX_TEST1 values (1,'unique')
insert into INDEX_TEST1 values (2,'unique')
insert into INDEX_TEST1 values (3,'non-unique')
insert into INDEX_TEST1 values (4,'non-unique')

select * from INDEX_TEST

create index IX_INDEX_ID
on INDEX_TEST (ID)

create index IX_INDEX_ID_info
on INDEX_TEST (ID,info)

sp_helpindex INDEX_TEST

--How to Drop Index?
--Syntax : DROP INDEX TABLE_NAME.IX_INDEXNAME
drop index INDEX_TEST.IX_INDEX_ID

select * from INDEX_TEST1

-- two types of indexes
--1.Clustered Index
--2.Non_Clusterd Index

--1.Clustered Index
--Whenever you apply clustered indexing in a table, it will perform sorting in that table only. 
--You can create only one clustered index in a table like primary key. 
--Clustered index is as same as dictionary where the data is arranged by alphabetical order. 
--In clustered index, index contains pointer to block but not direct data. 

--synatx
--Create Clustered Index IX_Index_Name
--ON Table Name (Col1,col2....etc)
Sp_helpIndex INDEX_TEST --PK__INDEX_TE__3214EC2750ADDA5A
Sp_helpIndex INDEX_TEST1

create clustered  index IX_Clust_Index
on INDEX_TEST1 (ID)

select * from INDEX_TEST1

--2.Non_Clusterd Index
--Non-Clustered Index is similar to the index of a book. 
--The index of a book consists of a chapter name and page number, 
--if you want to read any topic or chapter then you can directly go to that page by using index of that book. 
--No need to go through each and every page of a book. 
--The data is stored in one place, and index is stored in another place. 
--Since, the data and non-clustered index is stored separately, then you can have multiple non-clustered index in a table. 

--synatx
--Create NonClustered Index IX_Index_Name
--ON Table Name (Col1,col2....etc)

create nonclustered index IX_NONCLUST_INDEX
on index_test1 (ID,info)

sp_helpindex index_test1

--Diifrence between clustered and Non-Clusterd index
--CLUSTERED INDEX	                                      NON-CLUSTERED INDEX
--Clustered index is faster.							  Non-clustered index is slower.
--Clustered index requires less memory for operations.	  Non-Clustered index requires more memory for operations.
--In clustered index, index is the main data.	          In Non-Clustered index, index is the copy of data.
--A table can have only one clustered index.	          A table can have multiple non-clustered index.
--Clustered index store pointers to block not data.	      Non-Clustered index store both value and a pointer to actual row that holds data.

create table ScodeenStudent (Id int primary key identity, Sname varchar(20),Email varchar(50),Dept varchar(20))

select * from ScodeenStudent
---Inserting 1 lac of record into the table
SET NOCOUNT ON

Declare @counter int = 1

while (@counter <=100000)

begin
		declare @Sname varchar(20) = 'Student' + RTRIM(@counter)
		declare @Email varchar(20) = 'Batch' + RTRIM(@counter) + '@Scodeen.com'
		declare @Dept varchar(20) = 'Test/Dev/AWS' + RTRIM(@counter)
		
		insert into ScodeenStudent values (@Sname,@Email,@Dept)

		set @counter = @counter +1

		if (@counter%10000 =0)
				print RTRIM(@counter) + 'Rows are inserted'
END

select * from ScodeenStudent 

--Q.Verifying the clustered and non-clusterd indexes
select * from ScodeenStudent where Id =99888

select * from ScodeenStudent where Sname = 'student99888'

create nonclustered index IX_Ename
on ScodeenStudent (Sname)

--Pivot & UNPIVOT--VVIMP 
--Pivot is SQL operator that can be used to extract unique values from one column into multiple columns into the output.
--class column - a,b c  

--Syntax:
--SELECT <NON_PIVOTED COLUMNS> ,First Pivoted col1,second Pivoyed col2,....Last Pivoted coln
--FROM
--		Select <Query that produces the data> as alias for the source query
--		OR
--		TABLE_NAME
--PIVOT
--(
--		<aggregate function>(column being aggreagated)
--FOR 
--		[<Columns that contains the value that will become column headers/Names>]
--IN(	[First Col],[Second col].....[Last Col])	
-- )
 --AS <alisas for the Pivot table >
 select * from ProductSales
create table ProductSales (Salesagent varchar(100),salescountry varchar(100) , salesamount int)

insert into ProductSales values ('john','UK',200)
insert into ProductSales values ('tom','Us',190)
insert into ProductSales values ('john','Canada',450)
insert into ProductSales values ('David','India',120)
insert into ProductSales values ('Tom','India',240)
insert into ProductSales values ('David','Us',660)
insert into ProductSales values ('tom','Us',320)
insert into ProductSales values ('john','India',280)
insert into ProductSales values ('john','UK',540)
insert into ProductSales values ('David','Us',130)
insert into ProductSales values ('tom','Us',220)
insert into ProductSales values ('tom','UK',290)
insert into ProductSales values ('john','India',400)
insert into ProductSales values ('David','India',300)
insert into ProductSales values ('tom','UK',280)
insert into ProductSales values ('david','UK',400)
insert into ProductSales values ('john','US',700)

select * from  ProductSales


select Salesagent,SalesCountry, sum(salesamount) as TotalSales from ProductSales
group by Salesagent,salescountry
order by Salesagent,salescountry

select * from ProductSales

--SalesAhent India	 UK		US
--David		 420	 400	790
--tom		 680	 1190	700
--John		 240	 570	730
select * from ProductSales;

select Salesagent,INDIA,US,UK,CANADA from ProductSales
PIVOT
(
	SUM(SalesAmount)
	For SalesCountry
	IN(INDIA,US,UK,CANADA)
) AS Pivot_T

create Table Sales (Salesagent varchar(20),India int,uk int,us int,Canada int)
select * from Sales
insert into Sales(salesagent,India,UK,US) values ('David',420,400,790)
insert into Sales (salesagent,India,UK,US,Canada)values ('jhon',680,1190,1800,450)
insert into Sales (salesagent,India,UK,US) values ('tom',240,570,730)

select * from ProductSales;  --PIVOT

select * from Sales; --UNPIVOT

select Salesagent,Country,SalesAmount from Sales
UNPIVOT
(
	SalesAmount
	For Country
	IN(India,UK,US,Canada)

) AS UNPIVOT_T


--Cursors
--However , if there is ever a need to process the rows, on ROW-by-ROW basis, then cursors are good choice 
--Cursors are nothing but more than pointer to row.

--Syntax 
--to declare a cursor object:
DECLARE <Cursor_name> CURSOR FOR <Source_SQL_Query>
--cursor is to read the table schemas and names created in a database:
DECLARE csrTables CURSOR FOR SELECT TABLE_SCHEMA, TABLE_NAME from INFORMATION_SCHEMA.TABLES
--OPEN keyword plus the name of the cursor as follows:
OPEN <Cursor_name>
--The FETCH command syntax is as follows:
FETCH NEXT FROM <cursor_name> [ INTO @variable_name [ ,...n ] ]
--CLOSE keyword plus the name of the cursor as follows:
CLOSE <Cursor_name>
--DEALLOCATE command
DEALLOCATE <Cursor_name>

select * from ScodeenStudent
--Q.Display ID and Name of each row from ScodeenStudent table?
--Cursor body
Declare @id int
Declare @StudentName varchar(40)

Declare StudentCursor Cursor for 
select Id,Sname from ScodeenStudent where Id<=100000

Open StudentCursor

fetch next from StudentCursor into @id,@StudentName

while (@@FETCH_STATUS=0)
begin
	Print 'id='+' '+ cast(@id as varchar(10)) + 'SName='+' '+@StudentName 
	fetch next from StudentCursor into @id,@StudentName
END

Close StudentCursor
Deallocate StudentCursor


--================================
--@@FETCH_STATUS Is a system function that returns the status of last fetch against any open cusror.
--Fetch Status Value	Description
--  0 - The FETCH statement is succesful.
-- -1 - The FETCH Statement is Failed or the new row was beyond the result set.
-- -2 - The row fetched is missing
-- -9 The cusror is not performing a fecth operation

