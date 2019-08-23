SET SQL_SAFE_UPDATES = 0;
UPDATE my_contacts
SET status_id = 1
WHERE last_name = 'Stander';

UPDATE my_contacts
SET status_id = 3
WHERE last_name = 'Oberholzer';

UPDATE my_contacts
SET status_id = 4
WHERE last_name = 'Delport';

UPDATE my_contacts
SET status_id = 2
WHERE last_name = 'Prinsloo';

UPDATE my_contacts
SET status_id = 1
WHERE last_name = 'Taljaard'