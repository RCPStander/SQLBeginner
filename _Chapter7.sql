Chapter 7 Page 288

SELECT * FROM my_contacts
WHERE gender = 'F'
AND status = 'single'
AND state='MA'
AND seeking LIKE '%single M%'
AND birthday > '1950-08-28'
AND birthday < '1960-08-28'
AND SUBSTRING_INDEX(interests,’,’,1) = 'animals';

#-----307

CREATE TABLE interests (
int_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
interest VARCHAR(50) NOT NULL,
contact_id INT NOT NULL,
CONSTRAINT my_contacts_contact_id_fk
FOREIGN KEY (contact_id)
REFERENCES my_contacts (contact_id));

#------