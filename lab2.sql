CREATE TABLE Students ( 
StudentID INT PRIMARY KEY, 
Name VARCHAR (50), 
Age INT, 
Department VARCHAR (50) 
); 

CREATE TABLE Courses ( 
CourseID INT PRIMARY KEY, 
CourseName VARCHAR (50), 
Credits INT 
); 

INSERT INTO Students VALUES (1, 'Ali', 20, 'Computer Science'); 
INSERT INTO Students VALUES (2, 'Sara', 21, 'Business Administration'); 
INSERT INTO Courses VALUES (101, 'Database Systems', 3); 
INSERT INTO Courses VALUES (102, 'Marketing', 2); 

--UPDATE (Modify Data)

UPDATE Students 
SET Age = 22 
WHERE StudentID = 1;

--DELETE (Remove Data) 

DELETE FROM Students 
WHERE StudentID = 2; 

--SELECT (Read Data)  View All Students 

SELECT * FROM Students; 

--Retrieve Specific Data 

SELECT Name, Department FROM Students WHERE Age > 20;

-- Create a user
CREATE USER Asif WITH PASSWORD '123456';

--Grant Permission

GRANT SELECT ON Students TO Asif;
GRANT ALL PRIVILEGES ON Students TO Asif; 
GRANT SELECT, INSERT ON Students TO Asif;

--Revoke Permission 
REVOKE SELECT ON Students FROM Asif;

--ALTER and DROP Commands 

ALTER TABLE Students 
ADD Email VARCHAR (100); 

--Delete Table 
DROP TABLE Courses;