Chapter 8 Page 348

UPDATE my_contacts
SET interests = SUBSTR(interests, LENGTH(interest1)+2 );

#------352

CREATE TABLE profession
(
id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
profession varchar(20)
);
INSERT INTO profession (profession)
SELECT profession FROM my_contacts
GROUP BY profession
ORDER BY profession;

#------353

CREATE TABLE profession AS
SELECT profession FROM my_contacts
GROUP BY profession
ORDER BY profession;
ALTER TABLE profession
ADD COLUMN id INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY (id);

CREATE TABLE profession
(
id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
profession varchar(20)
) AS
SELECT profession FROM my_contacts
GROUP BY profession
ORDER BY profession;

#-----355

CREATE TABLE profession
(
id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
mc_prof varchar(20)
) AS
SELECT profession AS mc_prof FROM my_contacts
GROUP BY mc_prof
ORDER BY mc_prof;

#------356

SELECT profession AS mc_prof
FROM my_contacts AS mc
GROUP BY mc_prof
ORDER BY mc_prof;

#------358

SELECT t.toy, b.boy
FROM toys AS t
CROSS JOIN
boys AS b;

#------363

SELECT somecolumns
FROM table1
INNER JOIN
table2
ON somecondition;

#------364

SELECT boys.boy, toys.toy
FROM boys
INNER JOIN
toys
ON boys.toy_id = toys.toy_id;

#-----367

SELECT boys.boy, toys.toy
FROM boys
INNER JOIN
toys
ON boys.toy_id <> toys.toy_id
ORDER BY boys.boy;

#------368

SELECT boys.boy, toys.toy
FROM boys
NATURAL JOIN
toys;

#------