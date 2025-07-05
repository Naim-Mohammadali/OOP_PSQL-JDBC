DROP TABLE IF EXISTS Enrollement;
DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS Students;
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    age INT
);
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255)
);
CREATE TABLE Enrollement (
    enrollemnt_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
INSERT INTO Students (student_id, first_name, last_name, age)
VALUES
(1, 'Mahdi', 'Haeri', 20),
(2, 'Sina', 'Sahabi', 21),
(3, 'Bagher', 'Houseini', 21);

INSERT INTO Courses (course_id, course_name)
VALUES
(101, 'Database Basics'),
(102, 'Advanced Programming');

INSERT INTO Enrollement (enrollemnt_id, student_id, course_id)
VALUES
(1, 1, 101),
(2, 2, 101),
(3, 2, 102),
(4, 3, 102);

SELECT * FROM students;

SELECT first_name, last_name FROM students;

SELECT * FROM Students WHERE age = 21;

SELECT Courses.course_name FROM courses
JOIN enrollement ON courses.course_id = enrollement.course_id
WHERE enrollement.student_id = 1;

UPDATE students SET age = 21 WHERE student_id = 1;
UPDATE courses SET course_name = 'AP' WHERE course_id = 102;
UPDATE students SET age = age + 1;

SELECT * FROM students;
DELETE FROM Enrollement WHERE student_id = 1;
DELETE FROM Students WHERE student_id = 1;
DELETE FROM Students WHERE age = 21;
SELECT * FROM enrollement;