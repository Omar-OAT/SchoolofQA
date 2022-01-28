-- CREATE DATABASE IF NOT EXISTS School;

-- USE school;

-- CREATE TABLE IF NOT EXISTS class_subject (
-- 	class_subject_id INT NOT NULL AUTO_INCREMENT,
--     max_capacity INT NOT NULL, 
--     PRIMARY KEY(class_subject_id)
--     );

-- CREATE TABLE IF NOT EXISTS classroom (
-- 	room_id INT NOT NULL AUTO_INCREMENT,
--     capacity INT NOT NULL, 
--     PRIMARY KEY(room_id)
--     );

-- CREATE TABLE IF NOT EXISTS student (
-- 	student_id INT NOT NULL AUTO_INCREMENT,
--     first_name VARCHAR(300) NOT NULL,
--     last_name VARCHAR(300) NOT NULL,
--     DOB DATE NOT NULL,
--     year_group VARCHAR(300) NOT NULL,
--     PRIMARY KEY(student_id)
--     );

-- CREATE TABLE IF NOT EXISTS class_list (
-- 	class_list_id INT NOT NULL AUTO_INCREMENT,
--     fk_student_id INT NOT NULL, 
--     PRIMARY KEY(class_list_id),
--     FOREIGN KEY(fk_student_id) REFERENCES student(student_id)
--     );

-- CREATE TABLE IF NOT EXISTS staff (
-- 	staff_id INT NOT NULL AUTO_INCREMENT,
--     first_name VARCHAR(300) NOT NULL,
--     last_name VARCHAR(300) NOT NULL,
--     PRIMARY KEY(staff_id)
--     );

-- CREATE TABLE IF NOT EXISTS staff_list (
-- 	staff_list_id INT NOT NULL AUTO_INCREMENT,
--     fk_staff_id INT NOT NULL, 
--     PRIMARY KEY(staff_list_id),
--     FOREIGN KEY(fk_staff_id) REFERENCES staff(staff_id)
--     );

-- CREATE TABLE IF NOT EXISTS teacher (
-- 	teacher_id INT NOT NULL AUTO_INCREMENT,
--     fk_staff_list_id INT NOT NULL, 
--     subject_taught VARCHAR(300) NOT NULL,
--     PRIMARY KEY(teacher_id),
--     FOREIGN KEY(fk_staff_list_id) REFERENCES staff_list(staff_list_id)
--     );

-- CREATE TABLE IF NOT EXISTS class (
--  class_id INT NOT NULL AUTO_INCREMENT,
--     fk_room_id INT NOT NULL,
--     fk_subject_id INT NOT NULL,
--     fk_teacher_id INT NOT NULL,
--     fk_class_list_id INT NOT NULL,
--     day_time DATETIME NOT NULL,
--     duration TIME,
--     PRIMARY KEY(class_id),
--     FOREIGN KEY(fk_room_id) REFERENCES classroom(room_id),
--     FOREIGN KEY(fk_subject_id) REFERENCES class_subject(class_subject_id),
--     FOREIGN KEY(fk_teacher_id) REFERENCES teacher(teacher_id),
--     FOREIGN KEY(fk_class_list_id) REFERENCES staff_list(staff_list_id)
-- );

-- SELECT * FROM class_subject;

-- INSERT INTO class_subject(max_capacity) VALUES('30');
-- INSERT INTO class_subject(max_capacity) VALUES('25');
-- INSERT INTO class_subject(max_capacity) VALUES('40');
-- INSERT INTO class_subject(max_capacity) VALUES('45');
-- INSERT INTO class_subject(max_capacity) VALUES('35');
-- INSERT INTO class_subject(max_capacity) VALUES('20');
-- INSERT INTO class_subject(max_capacity) VALUES('15');
-- INSERT INTO class_subject(max_capacity) VALUES('28');
-- INSERT INTO class_subject(max_capacity) VALUES('36');
-- INSERT INTO class_subject(max_capacity) VALUES('32');

-- SELECT * FROM classroom;

-- INSERT INTO classroom(capacity) VALUES('25');
-- INSERT INTO classroom(capacity) VALUES('28');
-- INSERT INTO classroom(capacity) VALUES('35');
-- INSERT INTO classroom(capacity) VALUES('21');
-- INSERT INTO classroom(capacity) VALUES('19');
-- INSERT INTO classroom(capacity) VALUES('27');
-- INSERT INTO classroom(capacity) VALUES('29');
-- INSERT INTO classroom(capacity) VALUES('32');
-- INSERT INTO classroom(capacity) VALUES('38');
-- INSERT INTO classroom(capacity) VALUES('41');

-- SELECT * FROM student;


-- INSERT INTO student(first_name, last_name, DOB, year_group) VALUES ('Bob', 'Arnold', '2001-04-24', 'year 11');
-- INSERT INTO student(first_name, last_name, DOB, year_group) VALUES ('Jim', 'Carry', '2002-04-26', 'year 10');
-- INSERT INTO student(first_name, last_name, DOB, year_group) VALUES ('Joe', 'Rogan', '2003-06-14', 'year 9');
-- INSERT INTO student(first_name, last_name, DOB, year_group) VALUES ('Jeff', 'White', '2004-09-19', 'year 8');
-- INSERT INTO student(first_name, last_name, DOB, year_group) VALUES ('Jake', 'Watts', '2005-08-02', 'year 7');
-- INSERT INTO student(first_name, last_name, DOB, year_group) VALUES ('Zack', 'Aspin', '2001-07-03', 'year 11');
-- INSERT INTO student(first_name, last_name, DOB, year_group) VALUES ('James', 'Corden', '2002-06-09', 'year 10');
-- INSERT INTO student(first_name, last_name, DOB, year_group) VALUES ('Connor', 'Rothery', '2003-05-15', 'year 9');
-- INSERT INTO student(first_name, last_name, DOB, year_group) VALUES ('Brad', 'Pittley', '2004-02-05', 'year 8');
-- INSERT INTO student(first_name, last_name, DOB, year_group) VALUES ('Josh', 'Dawson', '2005-01-06', 'year 7');

-- SELECT * FROM class_list;

-- INSERT INTO class_list(fk_student_id) VALUES ('1');
-- INSERT INTO class_list(fk_student_id) VALUES ('2');
-- INSERT INTO class_list(fk_student_id) VALUES ('3');
-- INSERT INTO class_list(fk_student_id) VALUES ('4');
-- INSERT INTO class_list(fk_student_id) VALUES ('5');
-- INSERT INTO class_list(fk_student_id) VALUES ('6');
-- INSERT INTO class_list(fk_student_id) VALUES ('7');
-- INSERT INTO class_list(fk_student_id) VALUES ('8');
-- INSERT INTO class_list(fk_student_id) VALUES ('9');
-- INSERT INTO class_list(fk_student_id) VALUES ('10');

-- SELECT * FROM staff;

-- INSERT INTO staff(first_name, last_name) VALUES ('Lance ', 'Berger');
-- INSERT INTO staff(first_name, last_name) VALUES ('Reese ', 'Willis');
-- INSERT INTO staff(first_name, last_name) VALUES ('Neal ', 'Larsen');
-- INSERT INTO staff(first_name, last_name) VALUES ('Gareth ', 'Gillespie');
-- INSERT INTO staff(first_name, last_name) VALUES ('Samantha ', 'Childs');
-- INSERT INTO staff(first_name, last_name) VALUES ('Coen', 'Morse');
-- INSERT INTO staff(first_name, last_name) VALUES ('Chanice ', 'Robins');
-- INSERT INTO staff(first_name, last_name) VALUES ('Faizan ', 'Mcclure');
-- INSERT INTO staff(first_name, last_name) VALUES ('Kierran ', 'Hibbert');
-- INSERT INTO staff(first_name, last_name) VALUES ('John ', 'Saunders ');

--  SELECT * FROM staff_list;

-- INSERT INTO staff_list(fk_staff_id) VALUES ('1');
-- INSERT INTO staff_list(fk_staff_id) VALUES ('2');
-- INSERT INTO staff_list(fk_staff_id) VALUES ('3');
-- INSERT INTO staff_list(fk_staff_id) VALUES ('4');
-- INSERT INTO staff_list(fk_staff_id) VALUES ('5');
-- INSERT INTO staff_list(fk_staff_id) VALUES ('6');
-- INSERT INTO staff_list(fk_staff_id) VALUES ('7');
-- INSERT INTO staff_list(fk_staff_id) VALUES ('8');
-- INSERT INTO staff_list(fk_staff_id) VALUES ('9');
-- INSERT INTO staff_list(fk_staff_id) VALUES ('10');

-- SELECT * FROM teacher;

-- INSERT INTO teacher(fk_staff_list_id, subject_taught) VALUES ('1', 'Maths');
-- INSERT INTO teacher(fk_staff_list_id, subject_taught) VALUES ('2', 'English');
-- INSERT INTO teacher(fk_staff_list_id, subject_taught) VALUES ('3', 'Geography');
-- INSERT INTO teacher(fk_staff_list_id, subject_taught) VALUES ('4', 'History'); 
-- INSERT INTO teacher(fk_staff_list_id, subject_taught) VALUES ('5', 'PE');
-- INSERT INTO teacher(fk_staff_list_id, subject_taught) VALUES ('6', 'Film Studies');
-- INSERT INTO teacher(fk_staff_list_id, subject_taught) VALUES ('7', 'Food Tech');
-- INSERT INTO teacher(fk_staff_list_id, subject_taught) VALUES ('8', 'Chemistry');
-- INSERT INTO teacher(fk_staff_list_id, subject_taught) VALUES ('9', 'Physics');
-- INSERT INTO teacher(fk_staff_list_id, subject_taught) VALUES ('10', 'Biology');

-- SELECT * FROM class;

-- INSERT INTO class(fk_room_id, fk_subject_id, fk_teacher_id, fk_class_list_id, day_time, duration) VALUES('1','1','1','1', '2022-01-27 09:00:00', '02:00:00');
-- INSERT INTO class(fk_room_id, fk_subject_id, fk_teacher_id, fk_class_list_id, day_time, duration) VALUES('2','2','2','2', '2022-01-28 09:00:00', '02:00:00');
-- INSERT INTO class(fk_room_id, fk_subject_id, fk_teacher_id, fk_class_list_id, day_time, duration) VALUES('3','3','3','3', '2022-01-29 09:00:00', '02:00:00');
-- INSERT INTO class(fk_room_id, fk_subject_id, fk_teacher_id, fk_class_list_id, day_time, duration) VALUES('4','4','4','4', '2022-01-30 09:00:00', '02:00:00');
-- INSERT INTO class(fk_room_id, fk_subject_id, fk_teacher_id, fk_class_list_id, day_time, duration) VALUES('5','5','5','5', '2022-01-31 09:00:00', '02:00:00');
-- INSERT INTO class(fk_room_id, fk_subject_id, fk_teacher_id, fk_class_list_id, day_time, duration) VALUES('6','6','6','6', '2022-02-01 09:00:00', '02:00:00');
-- INSERT INTO class(fk_room_id, fk_subject_id, fk_teacher_id, fk_class_list_id, day_time, duration) VALUES('7','7','7','7', '2022-02-03 09:00:00', '02:00:00');
-- INSERT INTO class(fk_room_id, fk_subject_id, fk_teacher_id, fk_class_list_id, day_time, duration) VALUES('8','8','8','8', '2022-02-04 09:00:00', '02:00:00');
-- INSERT INTO class(fk_room_id, fk_subject_id, fk_teacher_id, fk_class_list_id, day_time, duration) VALUES('9','9','9','9', '2022-02-05 09:00:00', '02:00:00');
-- INSERT INTO class(fk_room_id, fk_subject_id, fk_teacher_id, fk_class_list_id, day_time, duration) VALUES('10','10','10','10', '2022-02-06 09:00:00', '02:00:00');

