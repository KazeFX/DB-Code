SELECT * FROM Course;


SELECT * FROM Teacher;


SELECT Name, Credits FROM Course;


SELECT c.Name, c.Credits, t.Name FROM Course c
JOIN Teacher t on c.TeacherId = t.Id;


SELECT s.Name, e.Grade FROM Student s
JOIN Enrollment e on s.Id = e.StudentId
JOIN Course c on e.CourseId = c.Id
WHERE c.Name = 'Databaser';


# Hämta
SELECT c.Name, t.Name, c.Credits FROM Course c
JOIN Teacher t on c.TeacherId = t.Id
WHERE t.Name = 'Gustav';


SELECT s.Name, c.Name, e.Grade FROM Student s
JOIN Enrollment e ON s.Id = e.StudentId
JOIN Course c ON c.Id = e.CourseId
WHERE s.Name = 'Anna Andersson';


SELECT COUNT(s.Name) AntalStudenterMedVG FROM Student s
JOIN Enrollment e ON s.Id = e.StudentId
JOIN Course c ON c.Id = e.CourseId
WHERE c.Name = 'Databaser' AND e.Grade = 2;


SELECT AVG(Enrollment.Grade) FROM Enrollment;


SELECT c.Name, AVG(e.Grade) FROM Enrollment e
JOIN Course c on e.CourseId = c.Id
WHERE c.Name = 'Databaser';


SELECT c.Name, ROUND(AVG(e.Grade),2) as Medelsnittsbetyg FROM Enrollment e
JOIN Course c on e.CourseId = c.Id
GROUP BY c.Name
ORDER BY c.Name;

SELECT s.Name, count(e.Grade) as AntalBetyg FROM Student s
JOIN Enrollment e on s.Id = e.StudentId
JOIN Course c on e.CourseId = c.Id
GROUP BY s.Name
HAVING AntalBetyg >= 4
ORDER BY s.Name;

SELECT s.Name, AVG(e.Grade) FROM Student s
JOIN Enrollment e on s.Id = e.StudentId
JOIN Course c on e.CourseId = c.Id
WHERE s.Id = 5;