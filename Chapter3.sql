#Chapter 3 Page 122

INSERT INTO clown_info
VALUES
('Zippo', 'Millstone Mall', 'F, orange suit, baggy pants',
'dancing, singing');
INSERT INTO clown_info
VALUES
('Snuggles', 'Ball-Mart', 'F, yellow shirt, baggy blue pants',
'horn, umbrella');

#-------124

INSERT INTO clown_info
VALUES
('Bonzo', 'Dickson Park', 'M, in drag, polka dotted dress',
'singing, dancing');
INSERT INTO clown_info
VALUES
('Sniffles', 'Tracy\'s', 'M, green and purple suit, pointy nose',
'climbing into tiny car');
INSERT INTO clown_info
VALUES
('Mr. Hobo', 'Party for Eric Gray', 'M, cigar, black hair
tiny hat', 'violin');

#--------126

SELECT * FROM clown_info WHERE name = 'Zippo';

#--------131

DELETE FROM clown_info
WHERE
activities = 'dancing';

#--------133

DELETE FROM doughnut_ratings
WHERE location = 'Krispy King' AND rating <> 6;
#WHERE location = 'Krispy King' AND rating = 3;
#WHERE location = 'Snappy Bagel' AND rating >= 6;
#WHERE location = 'Krispy King' OR rating > 5;
#WHERE location = 'Krispy King' OR rating = 3;
#WHERE location = 'Snappy Bagel' OR rating = 3;

#--------135

INSERT INTO clown_info
VALUES
('Clarabelle', 'Belmont Senior Center', 'F, pink hair,
huge flower, blue dress', 'dancing');

DELETE FROM clown_info
WHERE
activities = 'yelling, dancing'
AND name = 'Clarabelle';

#--------140

INSERT INTO clown_info
VALUES
('Mr. Hobo', 'Tracy\'s', 'M, cigar,
black hair, tiny hat', 'violin');

#-------144

SELECT * FROM clown_info
WHERE
activities = 'dancing';

INSERT INTO clown_info
VALUES
('Zippo', 'Millstone Mall', 'F, orange suit,
baggy pants', 'dancing, singing');

#------145

DELETE FROM clown_info
WHERE
activities = 'dancing';

#------146

UPDATE doughnut_ratings
SET
type = 'glazed'
WHERE type = 'plain glazed';

#-------147

UPDATE your_table
SET first_column = 'newvalue',
second_column = 'another_value';

#-------148

UPDATE table_name
SET column_name = newvalue
WHERE column_name = somevalue;

UPDATE clown_info
SET last_seen = 'Tracy\'s'
WHERE name = 'Mr. Hobo'
AND last_seen = 'Dickson Park';

#------149

UPDATE clown_info
SET last_seen = 'Tracy\'s'
WHERE name = 'Mr. Hobo'
AND last_seen = 'Party for Eric Gray';

#---------154

UPDATE drink_info
SET cost = 3.5
WHERE drink_name = 'Blue Moon';

#----------156

UPDATE drink_info
SET cost = cost + 1
WHERE
drink_name='Blue Moon'
OR
drink_name='Oh My Gosh'
OR
drink_name= 'Lime Fizz';