#Chapter 4 page 183

CREATE TABLE my_contacts
(
last_name VARCHAR(30),
first_name VARCHAR(20),
email VARCHAR(50),
gender CHAR(1),
birthday DATE,
profession VARCHAR(50),
location VARCHAR(50),
status VARCHAR(20),
interests VARCHAR(100),
seeking VARCHAR(100)
);

#--------184

SHOW CREATE TABLE my_contacts;

#--------185

#ENGINE=MyISAM DEFAULT CHARSET=latin1

#---------188

CREATE TABLE my_contacts
(
contact_id INT NOT NULL AUTO_INCREMENT,
last_name varchar(30) default NULL,
first_name varchar(20) default NULL,
email varchar(50) default NULL,
gender char(1) default NULL,
birthday date default NULL,
profession varchar(50) default NULL,
location varchar(50) default NULL,
status varchar(20) default NULL,
interests varchar(100) default NULL,
seeking varchar(100) default NULL,
PRIMARY KEY (contact_id)
)

#-------192

#ALTER TABLE my_contacts
#ADD COLUMN contact_id INT NOT NULL AUTO_INCREMENT FIRST,
#ADD PRIMARY KEY (contact_id);

#--------