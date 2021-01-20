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

#############FOREIGN KEYS-THE SQL###################

CREATE TABLE "Departments"(
 "Id" SERIAL PRIMARY KEY,
 "DepartmentName" TEXT,
 "Building" TEXT);

 INSERT INTO "Departments" ("DepartmentName","Building")
  Values ('Development','Main');
  INSERT INTO "Departments"("DepartmentName","Building")
  VALUES('Marketing','North');

CREATE TABLE "Employees"(
 "FullName" TEXT,
 "Salary" INT,
 "JobPosition" TEXT,
 "PhoneExtension" INT,
 "IsPartTime" BOOL);

 ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departments" ("Id");

  INSERT INTO "Employees" ("FullName",  "Salary", "JobPosition", "PhoneExtension","IsPartTime","DepartmentId")
   VALUES ('Tim Smith', 40000, 'Programmer', 123, False,1);
 
 INSERT INTO "Employees" ("FullName",  "Salary", "JobPosition", "PhoneExtension","IsPartTime","DepartmentId")
    VALUES ('Barbra Ramsey', 80000, 'Manager', 234, False,1);
 
 INSERT INTO "Employees" ("FullName",  "Salary", "JobPosition", "PhoneExtension","IsPartTime","DepartmentId")
    VALUES ('Tom Jones', 32000, 'Admin', 456, True,2);


SELECT * FROM "Employees";
+---------------+----------+---------------+------------------+--------------+----------------+
| FullName      | Salary   | JobPosition   | PhoneExtension   | IsPartTime   | DepartmentId   |
|---------------+----------+---------------+------------------+--------------+----------------|
| Tim Smith     | 40000    | Programmer    | 123              | False        | 1              |
| Barbra Ramsey | 80000    | Manager       | 234              | False        | 1              |
| Tom Jones     | 32000    | Admin         | 456              | True         | 2              |
+---------------+----------+---------------+------------------+--------------+----------------+




 CREATE TABLE "Products"(
  "Id" SERIAL PRIMARY KEY,
  "Price" NUMERIC,
  "Name" TEXT,
  "Description" TEXT,
  "QuantityInStock" INT);

INSERT INTO "Products" ("Price","Name","Description","QuantityInStock")
  VALUES(12.45,'Widget','The Original Widget',100);
  INSERT INTO "Products" ("Price","Name", "Description","QuantityInStock")
  VALUES(99.99,'FlowBee','Perfect for haircuts',3);

CREATE TABLE "Orders"(
  "Id" SERIAL PRIMARY KEY,
  "OrderNumber" TEXT,
  "DatePlaced" TIMESTAMP,
  "Email" TEXT);

INSERT INTO "Orders" ("OrderNumber","DatePlaced","Email")
  VALUES('X529','2020-01-01 16:55','person@example.com');


CREATE TABLE "ProductOrders" (
    "Id"       SERIAL PRIMARY KEY,
    "ProductId"  INTEGER REFERENCES "Products" ("Id"),
    "OrderID"  INTEGER REFERENCES "Orders" ("Id"),
    "OrderQuantity" INT
  );

 INSERT INTO "ProductOrders" ("OrderID", "ProductId","OrderQuantity") VALUES (1,1,3);

 INSERT INTO "ProductOrders" ("OrderID", "ProductId","OrderQuantity") VALUES (1,2,2);


SELECT * FROM "Employees"
    JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id"
    WHERE "Departments"."Building"='North Side';

    +------------+----------+---------------+------------------+--------------+----------------+------+------------------+------------+
| FullName   | Salary   | JobPosition   | PhoneExtension   | IsPartTime   | DepartmentId   | Id   | DepartmentName   | Building   |
|------------+----------+---------------+------------------+--------------+----------------+------+------------------+------------|
+------------+----------+---------------+------------------+--------------+----------------+------+------------------+------------+


SELECT * FROM "Employees"
     JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id"
     WHERE "Departments"."Building"='East-Side';
+------------+----------+---------------+------------------+--------------+----------------+------+------------------+------------+
| FullName   | Salary   | JobPosition   | PhoneExtension   | IsPartTime   | DepartmentId   | Id   | DepartmentName   | Building   |
|------------+----------+---------------+------------------+--------------+----------------+------+------------------+------------|
+------------+----------+---------------+------------------+--------------+----------------+------+------------------+------------+

SELECT * FROM "Employees"
      JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id"
      WHERE "Departments"."Building"='Main';
+---------------+----------+---------------+------------------+--------------+----------------+------+------------------+------------+
| FullName      | Salary   | JobPosition   | PhoneExtension   | IsPartTime   | DepartmentId   | Id   | DepartmentName   | Building   |
|---------------+----------+---------------+------------------+--------------+----------------+------+------------------+------------|
| Tim Smith     | 40000    | Programmer    | 123              | False        | 1              | 1    | Development      | Main       |
| Barbra Ramsey | 80000    | Manager       | 234              | False        | 1              | 1    | Development      | Main       |
+---------------+----------+---------------+------------------+--------------+----------------+------+------------------+------------+

 SELECT*FROM "Orders"
  JOIN "ProductOrders" ON "ProductOrders"."OrderID" = "Orders"."Id"
  WHERE "ProductOrders"."ProductId"=2;
+------+---------------+---------------------+--------------------+------+-------------+-----------+-----------------+
| Id   | OrderNumber   | DatePlaced          | Email              | Id   | ProductId   | OrderID   | OrderQuantity   |
|------+---------------+---------------------+--------------------+------+-------------+-----------+-----------------|
| 1    | X529          | 2020-01-01 16:55:00 | person@example.com | 3    | 2           | 1         | 2               |
+------+---------------+---------------------+--------------------+------+-------------+-----------+-----------------+


SELECT "ProductOrders"."OrderQuantity"
  FROM "ProductOrders"
  JOIN "Orders" ON "ProductOrders"."OrderID"="Orders"."Id"
  JOIN "Products"ON "ProductOrders"."ProductId"="Products"."Id"
  WHERE "Products"."Name"='FlowBee' AND "Orders"."OrderNumber"='X529';
+-----------------+
| OrderQuantity   |
|-----------------|
| 2               |
+-----------------+