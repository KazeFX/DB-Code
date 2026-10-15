SELECT * FROM Course;

SELECT * FROM Teacher;

SELECT Name, Credits FROM Course;

SELECT c.Name, c.Credits, t.Name FROM Course c
JOIN Teacher t on c.TeacherId = t.Id;

SELECT s.Name, e.Grade FROM Student s
JOIN Enrollment e on s.Id = e.StudentId
JOIN Course c on e.CourseId = c.Id
WHERE c.Name = 'Databaser';
