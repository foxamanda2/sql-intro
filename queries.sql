createdb CompanyDatabase

pgcli CompanyDatabase

 CREATE TABLE "Employees"(
 "FullName" TEXT,
 "Salary" INT,
 "JobPosition" TEXT,
 "PhoneExtension" INT,
 "IsPartTime" TEXT);

INSERT INTO "Employees"
 ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
 VALUES('John Snow',30000,'Teacher',501,'Full-Time');


INSERT INTO "Employees"
   ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
   VALUES('Oliver Twist',23000,'Painter',401,'Part-Time');

INSERT INTO "Employees"
   ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
   VALUES('Tami Mami',50000,'Janitor',908,'Part-Time');

INSERT INTO "Employees"
   ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
   VALUES('Ester Tori',300000,'Doctor',708,'Full-Time');

INSERT INTO "Employees"
    ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
    VALUES('Lazy Larry',45000,'Barista',663,'Full-Time');

INSERT INTO "Employees"
     ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
     VALUES('Harriot Llama',400000,'Barista',809,'Part-Time');

INSERT INTO "Employees"
    ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
     VALUES('Tom Jerry',30000,'Dentist',201,'Full-Time');

INSERT INTO "Employees"
       ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime")
       VALUES('Lady Miss',35000,'Doctor',231,'Full-Time');


SELECT * FROM "Employees";
+---------------+----------+---------------+------------------+--------------+
| FullName      | Salary   | JobPosition   | PhoneExtension   | IsPartTime   |
|---------------+----------+---------------+------------------+--------------|
| John Snow     | 30000    | Teacher       | 501              | Full-Time    |
| Oliver Twist  | 23000    | Painter       | 401              | Part-Time    |
| Tami Mami     | 50000    | Janitor       | 908              | Part-Time    |
| Ester Tori    | 300000   | Doctor        | 708              | Full-Time    |
| Lazy Larry    | 45000    | Barista       | 663              | Full-Time    |
| Harriot Llama | 400000   | Barista       | 809              | Part-Time    |
| Tom Jerry     | 30000    | Dentist       | 201              | Full-Time    |
| Lady Miss     | 35000    | Doctor        | 231              | Full-Time    |
+---------------+----------+---------------+------------------+--------------+

SELECT "FullName", "PhoneExtension" FROM "Employees" WHERE "IsP
 artTime"='Full-Time';
+------------+------------------+
| FullName   | PhoneExtension   |
|------------+------------------|
| John Snow  | 501              |
| Ester Tori | 708              |
| Lazy Larry | 663              |
| Tom Jerry  | 201              |
| Lady Miss  | 231              |
+------------+------------------+


INSERT INTO "Employees"
 ("FullName", "Salary","JobPosition","PhoneExtension","IsPartTime")
 VALUES('Sandy Landy', 450, 'Software Developer',435,'Part-Time');


INSERT INTO "Employees"
  ("FullName", "Salary","JobPosition","PhoneExtension","IsPartTime")
  VALUES('Anna Banana', 680, 'Cook',465,'Full-Time');

INSERT INTO "Employees"
  ("FullName", "Salary","JobPosition","PhoneExtension","IsPartTime")
  VALUES('Andy Mandy', 743, 'Cook',903,'Part-Time');

UPDATE "Employees"
 SET "Salary"=500
 WHERE "JobPosition"='Cook';


SELECT * FROM "Employees";
+---------------+----------+--------------------+------------------+------------
| FullName      | Salary   | JobPosition        | PhoneExtension   | IsPartTime 
|---------------+----------+--------------------+------------------+------------
| John Snow     | 30000    | Teacher            | 501              | Full-Time  
| Oliver Twist  | 23000    | Painter            | 401              | Part-Time  
| Tami Mami     | 50000    | Janitor            | 908              | Part-Time  
| Ester Tori    | 300000   | Doctor             | 708              | Full-Time  
| Lazy Larry    | 45000    | Barista            | 663              | Full-Time  
| Harriot Llama | 400000   | Barista            | 809              | Part-Time  
| Tom Jerry     | 30000    | Dentist            | 201              | Full-Time  
| Lady Miss     | 35000    | Doctor             | 231              | Full-Time  
| Sandy Landy   | 450      | Software Developer | 435              | Part-Time  
| Anna Banana   | 500      | Cook               | 465              | Full-Time  
| Andy Mandy    | 500      | Cook               | 903              | Part-Time  
+---------------+----------+--------------------+------------------+------


SELECT * FROM "Employees" WHERE "FullName"='Lazy Larry';
+------------+----------+---------------+------------------+--------------+
| FullName   | Salary   | JobPosition   | PhoneExtension   | IsPartTime   |
|------------+----------+---------------+------------------+--------------|
| Lazy Larry | 45000    | Barista       | 663              | Full-Time    |
+------------+----------+---------------+------------------+--------------+

DELETE FROM "Employees" WHERE "FullName"='Lazy Larry';

SELECT * FROM "Employees";
+---------------+----------+--------------------+------------------+------------
| FullName      | Salary   | JobPosition        | PhoneExtension   | IsPartTime 
|---------------+----------+--------------------+------------------+------------
| John Snow     | 30000    | Teacher            | 501              | Full-Time  
| Oliver Twist  | 23000    | Painter            | 401              | Part-Time  
| Tami Mami     | 50000    | Janitor            | 908              | Part-Time  
| Ester Tori    | 300000   | Doctor             | 708              | Full-Time  
| Harriot Llama | 400000   | Barista            | 809              | Part-Time  
| Tom Jerry     | 30000    | Dentist            | 201              | Full-Time  
| Lady Miss     | 35000    | Doctor             | 231              | Full-Time  
| Sandy Landy   | 450      | Software Developer | 435              | Part-Time  
| Anna Banana   | 500      | Cook               | 465              | Full-Time  
| Andy Mandy    | 500      | Cook               | 903              | Part-Time  
+---------------+----------+--------------------+------------------+------------


ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);


INSERT INTO "Employees"
     ("FullName", "Salary","JobPosition","PhoneExtension","IsPartTime","ParkingSpot")
     VALUES('Jane Doe', 4000, 'Front Desk',762,'Full-Time',5);

CompanyDatabase> SELECT * FROM "Employees";
+---------------+----------+--------------------+------------------+--------------+---------------+
| FullName      | Salary   | JobPosition        | PhoneExtension   | IsPartTime   | ParkingSpot   |
|---------------+----------+--------------------+------------------+--------------+---------------|
| John Snow     | 30000    | Teacher            | 501              | Full-Time    | <null>        |
| Oliver Twist  | 23000    | Painter            | 401              | Part-Time    | <null>        |
| Tami Mami     | 50000    | Janitor            | 908              | Part-Time    | <null>        |
| Ester Tori    | 300000   | Doctor             | 708              | Full-Time    | <null>        |
| Harriot Llama | 400000   | Barista            | 809              | Part-Time    | <null>        |
| Tom Jerry     | 30000    | Dentist            | 201              | Full-Time    | <null>        |
| Lady Miss     | 35000    | Doctor             | 231              | Full-Time    | <null>        |
| Sandy Landy   | 450      | Software Developer | 435              | Part-Time    | <null>        |
| Anna Banana   | 500      | Cook               | 465              | Full-Time    | <null>        |
| Andy Mandy    | 500      | Cook               | 903              | Part-Time    | <null>        |
| Jane Doe      | 4000     | Front Desk         | 762              | Full-Time    | 5             |
+---------------+----------+--------------------+------------------+--------------+---------------+



UPDATE "Employees"
    SET "IsPartTime"=True
    WHERE "IsPartTime"='Part-Time';

UPDATE "Employees"
    SET "IsPartTime"=False
    WHERE "IsPartTime"='Full-Time';

CompanyDatabase> SELECT * FROM "Employees";
+---------------+----------+--------------------+------------------+--------------+---------------+
| FullName      | Salary   | JobPosition        | PhoneExtension   | IsPartTime   | ParkingSpot   |
|---------------+----------+--------------------+------------------+--------------+---------------|
| Oliver Twist  | 23000    | Painter            | 401              | True         | <null>        |
| Tami Mami     | 50000    | Janitor            | 908              | True         | <null>        |
| Harriot Llama | 400000   | Barista            | 809              | True         | <null>        |
| Sandy Landy   | 450      | Software Developer | 435              | True         | <null>        |
| Andy Mandy    | 500      | Cook               | 903              | True         | <null>        |
| John Snow     | 30000    | Teacher            | 501              | false        | <null>        |
| Ester Tori    | 300000   | Doctor             | 708              | false        | <null>        |
| Tom Jerry     | 30000    | Dentist            | 201              | false        | <null>        |
| Lady Miss     | 35000    | Doctor             | 231              | false        | <null>        |
| Anna Banana   | 500      | Cook               | 465              | false        | <null>        |
| Jane Doe      | 4000     | Front Desk         | 762              | false        | 5             |
+---------------+----------+--------------------+------------------+--------------+---------------+



CREATE TABLE "Employees"(
 "FullName" TEXT NO NULL,
 "Salary" INT NO NULL,
 "JobPosition" TEXT,
 "PhoneExtension" INT,
 "IsPartTime" BOOL);

 ALTER TABLE "Employees" ADD COLUMN "Id" SERIAL PRIMARY KEY;

SELECT * FROM "Employees";
+---------------+----------+--------------------+------------------+--------------+---------------+----
| FullName      | Salary   | JobPosition        | PhoneExtension   | IsPartTime   | ParkingSpot   | Id 
|---------------+----------+--------------------+------------------+--------------+---------------+----
| Oliver Twist  | 23000    | Painter            | 401              | True         | <null>        | 1  
| Tami Mami     | 50000    | Janitor            | 908              | True         | <null>        | 2  
| Harriot Llama | 400000   | Barista            | 809              | True         | <null>        | 3  
| Sandy Landy   | 450      | Software Developer | 435              | True         | <null>        | 4  
| Andy Mandy    | 500      | Cook               | 903              | True         | <null>        | 5  
| John Snow     | 30000    | Teacher            | 501              | false        | <null>        | 6  
| Ester Tori    | 300000   | Doctor             | 708              | false        | <null>        | 7  
| Tom Jerry     | 30000    | Dentist            | 201              | false        | <null>        | 8  
| Lady Miss     | 35000    | Doctor             | 231              | false        | <null>        | 9  
| Anna Banana   | 500      | Cook               | 465              | false        | <null>        | 10 
| Jane Doe      | 4000     | Front Desk         | 762              | false        | 5             | 11 
+---------------+----------+--------------------+------------------+--------------+---------------+----

