CREATE TABLE departments (
    dept_id INTEGER PRIMARY KEY,
    dept_name TEXT NOT NULL,
    building TEXT
);

CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY,
    course_name TEXT NOT NULL,
    credits INTEGER,
    dept_id INTEGER,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    department TEXT,
    cgpa REAL
);


INSERT INTO departments (dept_id, dept_name, building) VALUES
(1, 'Computer Science', 'Tech Block A'),
(2, 'Electrical', 'Engineering Wing'),
(3, 'Mechanical', 'Workshop B');

INSERT INTO courses (course_id, course_name, credits, dept_id) VALUES
(101, 'Data Structures', 4, 1),
(102, 'Circuit Analysis', 3, 2),
(103, 'Thermodynamics', 4, 3);

INSERT INTO students (id, name, age, department, cgpa) VALUES
(1, 'Manohar U', 20, 'infromation Science', 8.5),
(2, 'Ananya', 21, 'Electronics ad commuinaiton', 7.8),
(3, 'Rohan V', 22, 'Mechanical', 6.9),
(4, 'Priya Nair', 20, 'Computer Science', 9.2),
(5, 'Vikram Patel', 21, 'Electrical', 8.1),
(6, 'Sneha Rao', 20, 'Computer Science', 7.4),
(7, 'Karan Gupta', 23, 'Mechanical', 8.6),
(8, 'Diya Mehta', 21, 'Computer Science', 9.0),
(9, 'Arjun Singh', 22, 'Electrical', 6.5);


SELECT * FROM students;


SELECT name, cgpa FROM students;


SELECT * FROM students WHERE cgpa > 8.0;



SELECT COUNT(*) AS total_students FROM students;
SELECT AVG(cgpa) AS average_cgpa FROM students;
SELECT MAX(cgpa) AS highest_cgpa FROM students;
SELECT MIN(cgpa) AS lowest_cgpa FROM students;
SELECT SUM(cgpa) AS sum_cgpa FROM students;

SELECT department, COUNT(*) AS student_count
FROM students
GROUP BY department;

SELECT department, AVG(cgpa) AS avg_cgpa
FROM students
GROUP BY department;