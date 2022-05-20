  CREATE DATABASE school;
use school;

Create Table grade
(
  id int NOT NULL UNIQUE AUTO_INCREMENT,
  grade_num tinyint
);

Create Table class
(
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    class_name varchar(10),
    class_subject varchar(10)
);

Create Table student_address
(
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    address varchar(40),
    town varchar(15),
    zip smallint,
    PRIMARY KEY (id)
);

Create Table student
(
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(15) NOT NULL,
    lastname varchar(15) NOT NULL,
    grade_id int,
    address_id int,
    FOREIGN KEY (address_id) references student_address(id),
    FOREIGN KEY (grade_id) references grade(id),
    PRIMARY KEY (id)
);

Create Table class_roster
(
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    class_id int NOT NULL,
    student_id int NOT NULL
);

SET FOREIGN_KEY_CHECKS=0;
INSERT INTO student (firstname, lastname, grade_id) VALUES ('Thomas', 'MacGregor', 3);
INSERT INTO student (firstname, lastname, grade_id) VALUES ('Gavin', 'Johnston', 5);
INSERT INTO student (firstname, lastname, grade_id) VALUES ('Sebastian', 'Roy', 1);
INSERT INTO student (firstname, lastname, grade_id) VALUES ('Patrick', 'Ogden', 2);
INSERT INTO student (firstname, lastname, grade_id) VALUES ('Veronica', 'Ouellette', 2);
INSERT INTO student (firstname, lastname, grade_id) VALUES ('Samantha', 'Lawrence', 2);

INSERT INTO grade (grade_num) VALUE (8);
INSERT INTO grade (grade_num) VALUE (9);
INSERT INTO grade (grade_num) VALUE (10);
INSERT INTO grade (grade_num) VALUE (11);

DELETE FROM grade where id = 6;
DELETE FROM grade where id = 7;
DELETE FROM grade where id = 8;
DELETE FROM grade where id = 9;
DELETE FROM grade where id in (6, 7, 8, 9, 10);

select * from student;
select * from class;
select * from class_roster;
select * from grade;
select * from student_address;

SELECT student.firstname, student.lastname, grade.grade_num
FROM student
INNER JOIN grade ON student.grade_id = grade.id
where lastname = 'MacGregor';
