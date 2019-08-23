Chapter 9 Page 386

SELECT mc.first_name, mc.last_name, mc.phone, jc.title
FROM job_current AS jc NATURAL JOIN my_contacts AS mc
WHERE
jc.title IN

#------387

SELECT mc.first_name, mc.last_name, mc.phone, jc.title
FROM job_current AS jc NATURAL JOIN my_contacts AS mc
WHERE jc.title IN (SELECT title FROM job_listings);

#------395

SELECT mc.first_name, mc.last_name, jc.salary
FROM my_contacts AS mc NATURAL JOIN job_current AS jc
WHERE jc.salary =
(SELECT MAX(jc.salary) FROM job_current jc);

#-------397

SELECT mc.first_name, mc.last_name,
(SELECT state
FROM zip_code
WHERE mc.zip_code = zip_code) AS state
FROM my_contacts mc;

#------399

SELECT mc.first_name, mc.last_name, jc.salary
FROM
my_contacts AS mc NATURAL JOIN job_current AS jc
WHERE
jc.salary > (SELECT jc.salary
FROM my_contacts mc NATURAL JOIN job_current jc
WHERE email = 'andy@weatherorama.com');

#------408

SELECT mc.first_name, mc.last_name
FROM my_contacts AS mc
WHERE
3 = (
SELECT COUNT(*) FROM contact_interest
WHERE contact_id = mc.contact_id
);

