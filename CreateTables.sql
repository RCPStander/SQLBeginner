USE gregs_list3;
CREATE TABLE my_contacts(
	contact_id INT NOT NULL AUTO_INCREMENT,
	last_name VARCHAR(45) NOT NULL,
	first_name VARCHAR(45),
	phone VARCHAR(12),
	email VARCHAR(45),
	gender CHAR(1),
	birthday DATE,
	prof_id INT,
    zip_code VARCHAR(10),
    status_id INT,
	PRIMARY KEY (contact_id),
    FOREIGN KEY (prof_id) REFERENCES profession(prof_id),
    FOREIGN KEY (zip_code) REFERENCES zip_code(zip_code),
    FOREIGN KEY (status_id) REFERENCES status(status_id)
);

CREATE TABLE profession(
	prof_id INT NOT NULL AUTO_INCREMENT,
	profession VARCHAR(45),
	PRIMARY KEY(prof_id)
);

CREATE TABLE zip_code(
	zip_code VARCHAR(10) NOT NULL,
	city VARCHAR(45),
	state CHAR(2),
	PRIMARY KEY(zip_code)
);

CREATE TABLE status(
	status_id INT NOT NULL AUTO_INCREMENT,
	status VARCHAR(10),
	PRIMARY KEY(status_id)
);

CREATE TABLE interest(
	interest_id INT NOT NULL AUTO_INCREMENT,
	interest VARCHAR(45),
	PRIMARY KEY(interest_id)
);

CREATE TABLE seeking(
	seeking_id INT NOT NULL AUTO_INCREMENT,
    seeking VARCHAR(45),
    PRIMARY KEY(seeking_id)
);

CREATE TABLE contact_interest(
	contact_id INT NOT NULL,
    interest_id INT NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES my_contacts(contact_id),
    FOREIGN KEY (interest_id) REFERENCES interest(interest_id)
);

CREATE TABLE contact_seeking(
	contact_id INT NOT NULL,
    seeking_id INT NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES my_contacts(contact_id),
    FOREIGN KEY (seeking_id) REFERENCES seeking(seeking_id)
);