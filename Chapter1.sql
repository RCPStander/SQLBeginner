#Chapter 1 Page 17

CREATE DATABASE gregs_list;

#---------Page 18

USE gregs_list;

#---------Page 19

CREATE TABLE doughnut_list
(
doughnut_name VARCHAR(10),
doughnut_type VARCHAR(6)
);

#--------Page 21

CREATE TABLE my_contacts
(
last_name VARCHAR(30),
first_name VARCHAR(20),
email VARCHAR(50),
birthday DATE,
profession VARCHAR(50),
location VARCHAR(50),
status VARCHAR(20),
interests VARCHAR(100),
seeking VARCHAR(100)
);

#--------Page 27

DESC my_contacts;

#--------Page 32

DROP TABLE my_contacts;

#--------Page 34

INSERT INTO your_table (column_name1, column_name2,…)
VALUES ('value1', 'value2',… );

#--------Page 37

INSERT INTO my_contacts
(last_name, first_name, email, gender, birthday,
profession, location, status, interests,
seeking)
VALUES
('Anderson', 'Jillian', 'jill_anderson@
breakneckpizza.net', 'F', '1980-09-05',
'Technical Writer', 'Palo Alto, CA', 'Single',
'Kayaking, Reptiles', 'Relationship, Friends');

#--------Page 38

INSERT INTO doughnut_purchases
(donut_type, dozens, topping, price)
VALUES
('jelly', 3, 'sprinkles', 3.50);

#--------Page 42

INSERT INTO my_contacts
(first_name, email, profession, location)
VALUES
('Pat', 'patpost@breakneckpizza.net', 'Postal
Worker', 'Princeton, NJ');

#--------Page 43

SELECT * FROM my_contacts;

#--------Page 45

CREATE TABLE my_contacts
(
last_name VARCHAR (30) NOT NULL,
first_name VARCHAR (20) NOT NULL
);

#--------Page 48

CREATE TABLE doughnut_list
(
doughnut_name VARCHAR(10) NOT NULL,
doughnut_type VARCHAR(6) NOT NULL,
doughnut_cost DEC(3,2) NOT NULL DEFAULT 1.00
);

