CREATE DATABASE bookshop;
USE bookshop;
CREATE TABLE Books (
	ISBN varchar(20) PRIMARY KEY,
	BookName varchar(100),
	BookPrice varchar(10));

INSERT INTO books VALUES ("808-97365-80", "Java EE Project Using EJB 3, JPA And Struts For Beginners", "650");
INSERT INTO books VALUES ("978-34-13394-1", "LAMP Programming For Beginners", "450");
INSERT INTO books VALUES ("21-783592-1", "Struts 2.0 For Beginners", "350");
INSERT INTO books VALUES ("1-34523-880", "Hibernate 3 for Beginners", "550");
INSERT INTO books VALUES ("783-983242-23", "Oracle For Professionals", "750");


