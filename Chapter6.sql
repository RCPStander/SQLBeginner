Chapter 6 Page 235

UPDATE movie_table SET category = 'drama' where drama = 'T';
UPDATE movie_table SET category = 'comedy' where comedy = 'T';
UPDATE movie_table SET category = 'action' where action = 'T';
UPDATE movie_table SET category = 'horror' where gore = 'T';
UPDATE movie_table SET category = 'scifi' where scifi = 'T';
UPDATE movie_table SET category = 'family' where for_kids = 'T';
UPDATE movie_table SET category = 'family' where cartoon = 'T' AND rating = 'G';
UPDATE movie_table SET category = 'misc' where cartoon = 'T' AND rating <> 'G';

#------241

UPDATE my_table
SET new_column =
CASE
WHEN column1 = somevalue1
THEN newvalue1
WHEN column2 = somevalue2
THEN newvalue2
ELSE newvalue3
END;

#------242

UPDATE movie_table
SET category =
CASE
WHEN drama = 'T' THEN 'drama'
WHEN comedy = 'T' THEN 'comedy'
WHEN action = 'T' THEN 'action'
WHEN gore = 'T' THEN 'horror'
WHEN scifi = 'T' THEN 'scifi'
WHEN for_kids = 'T' THEN 'family'
WHEN cartoon = 'T' THEN 'family'
ELSE 'misc'
END;

#-------248

ALTER TABLE movie_table
DROP COLUMN drama,
DROP COLUMN comedy,
DROP COLUMN action,
DROP COLUMN gore,
DROP COLUMN scifi,
DROP COLUMN for_kids,
DROP COLUMN cartoon;

UPDATE movie_table
SET category =
CASE
WHEN category = ‘drama-r’ THEN ‘drama’
WHEN category = ‘comedy-r’ THEN ‘comedy’
WHEN category = ‘action-r’ THEN ‘action’
WHEN category = ‘horror-r’ THEN ‘horror’
WHEN category = ‘scifi-r’ THEN ‘scifi’
END;

UPDATE movie_table
SET category =
CASE
WHEN drama = ‘T’ AND rating = ‘R’ THEN ‘drama-r’
WHEN comedy = ‘T’ AND rating = ‘R’ THEN ‘comedy-r’
WHEN action = ‘T’ AND rating = ‘R’ THEN ‘action-r’
WHEN gore = ‘T’ AND rating = ‘R’ THEN ‘horror-r’
WHEN scifi = ‘T’ AND rating = ‘R’ THEN ‘scifi-r’
WHEN category = ‘misc’ AND rating = ‘G’ THEN ‘family’
END;

#-------253

SELECT title, category
FROM movie_table
WHERE
title LIKE 'A%'
AND
category = 'family'
ORDER BY title;

#------254

SELECT title, category
FROM movie_table
WHERE
category = 'family'
ORDER BY title;

#------257

SELECT title, category, purchased
FROM movie_table
ORDER BY category, purchased;

#------261

SELECT title, purchased
FROM movie_table
ORDER BY title ASC, purchased DESC;

#-------265

SELECT SUM(sales)
FROM cookie_sales
WHERE first_name = 'Nicole';

#-------266

SELECT first_name, SUM(sales)
FROM cookie_sales
GROUP BY first_name
ORDER BY SUM(sales)DESC;

#------267

SELECT first_name, AVG(sales)
FROM cookie_sales
GROUP BY first_name;

#------268

SELECT first_name, MAX(sales)
FROM cookie_sales
GROUP BY first_name;

SELECT first_name, MIN(sales)
FROM cookie_sales
GROUP BY first_name;

#-------269

SELECT COUNT(sale_date)
FROM cookie_sales;

#-------271

SELECT DISTINCT sale_date
FROM cookie_sales
ORDER BY sale_date;

SELECT COUNT(DISTINCT sale_date)
FROM cookie_sales;

#------274

SELECT first_name, SUM(sales)
FROM cookie_sales
GROUP BY first_name
ORDER BY SUM(sales)DESC;

SELECT first_name, SUM(sales)
FROM cookie_sales
GROUP BY first_name
ORDER BY SUM(sales)DESC
LIMIT 2;

#------