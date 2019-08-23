#Page 199
ALTER TABLE my_contacts
ADD COLUMN phone VARCHAR(10);
ALTER TABLE my_contacts
ADD COLUMN phone VARCHAR(10)
AFTER first_name;

#----------------------------------------

#Page 202
ALTER TABLE my_contacts
ADD COLUMN phone VARCHAR(10)

#----------------------------------------

#Page 205
#ALTER TABLE projekts
#RENAME TO project_list;

#----------------------------------------

#Page 210
ALTER TABLE project_list
CHANGE COLUMN number proj_id INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (proj_id);

#----------------------------------------

#Page 211
ALTER TABLE project_list
CHANGE COLUMN descriptionofproj proj_desc VARCHAR(100),
CHANGE COLUMN contractoronjob con_name VARCHAR(30);

#----------------------------------------

#Page 212

ALTER TABLE project_list
MODIFY COLUMN proj_desc VARCHAR(120);

#----------------------------------------

#Page 214

ALTER TABLE project_list
ADD COLUMN con_phone VARCHAR(10),
ADD COLUMN start_date DATE,
ADD COLUMN est_cost DECIMAL(7,2);

#----------------------------------------

#Page 216

#ALTER TABLE project list
#DROP COLUMN start date;

#----------------------------------------

#Page 219 

ALTER TABLE car_table
RENAME TO car_table,
ADD COLUMN car_id INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY (car_id),
ADD COLUMN VIN VARCHAR(20) AFTER car_id,
CHANGE COLUMN mo model VARCHAR(20), 
MODIFY COLUMN color VARCHAR(20) AFTER model,
MODIFY COLUMN year VARCHAR(5) AFTER color,
CHANGE COLUMN howmuch price DECIMAL(7,2);
SELECT * FROM car_table;

#----------------------------------------

#Page 223 

ALTER TABLE my_contacts
ADD COLUMN city VARCHAR(30),
ADD COLUMN state VARCHAR(30);
SELECT * FROM my_contacts;

#----------------------------------------

#Page 224

SELECT RIGHT(location, 2) FROM my_contacts;
SELECT SUBSTRING_INDEX(location, ',', 1) FROM my_contacts;

#----------------------------------------

#Page 225

SELECT SUBSTRING('San Antonio, TX', 5, 3);
SELECT UPPER('uSa');
SELECT LOWER('spaGHEtti');
SELECT REVERSE('spaGHEtti');
SELECT LTRIM(' dogfood ');
SELECT RTRIM(' catfood ');
SELECT LENGTH('San Antonio, TX ');

#-----------------------------------------

#Page 229

UPDATE my_contacts
SET state = RIGHT(location, 2);