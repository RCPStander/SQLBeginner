#Chapter 2 Page 57

SELECT * FROM my_contacts
WHERE first_name = 'Anne';

#-------Page 65

INSERT INTO my_contacts
VALUES
('Funyon','Steve','steve@onionflavoredrings.com',
'M','1970-04-01','Punk','Grover\'s Mill', 'NJ',
'Single','smashing the state','compatriots,
guitar players');

#-------Page 67

INSERT INTO my_contacts
(location)
VALUES
('Grover\'s Mill');

#--------Page 71

SELECT drink_name, main, second
FROM easy_drinks
WHERE main = 'soda';

#--------Page 73

SELECT drink_name, main, second
FROM easy_drinks;

#--------Page 74

SELECT drink_name FROM easy_drinks
WHERE
main = 'cherry juice';

#--------Page 78

SELECT location, rating FROM doughnut_ratings
WHERE
type = 'plain glazed';

#-------Page 79

SELECT location, type FROM doughnut_ratings
WHERE
rating = 10;

#--------Page 80

SELECT location
FROM doughnut_ratings
WHERE type = 'plain glazed'
AND
rating = 10;

#--------Page 83

SELECT drink_name FROM easy_drinks
WHERE
main = 'soda'
AND
amount1 = 1.5;

SELECT drink_name FROM easy_drinks
WHERE
main = 'soda'
AND
amount1 = 2;

#--------Page 88

SELECT drink_name FROM drink_info
WHERE
cost >= 3.5
AND
calories < 50;

#--------Page 91

SELECT drink_name
FROM drink_info
WHERE
drink_name >= 'L'
AND
drink_name < 'M';

#--------101

SELECT * FROM my_contacts
WHERE location LIKE '%CA';

#--------Page 102

SELECT first_name FROM my_contacts
WHERE first_name LIKE '%im';

SELECT first_name FROM my_contacts
WHERE first_name LIKE '_im';

#--------Page 106

SELECT drink_name FROM drink_info
WHERE
calories BETWEEN 30 AND 60;

#--------Page 110

SELECT date_name
FROM black_book
WHERE
rating NOT IN ('innovative',
'fabulous', 'delightful',
'pretty good');

#--------Page 111

SELECT drink_name FROM drink_info
WHERE NOT carbs BETWEEN 3 AND 5;

SELECT date_name from black_book
WHERE NOT date_name LIKE 'A%'
AND NOT date_name LIKE 'B%';