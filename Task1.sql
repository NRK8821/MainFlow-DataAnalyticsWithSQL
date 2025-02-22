
-- Create the Students table
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,   
    Name VARCHAR(50),                           
    Gender VARCHAR(1),                          
    Age INT,                                    
    Grade VARCHAR(10),                          
    MathScore INT,                              
    ScienceScore INT,                           
    EnglishScore INT                            
);


-- Insert sample data into the Students table
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES 
('Arjun Kumar', 'M', 20, 'A', 85, 90, 78),
('Priya Sharma', 'F', 19, 'B', 72, 80, 88),
('Ravi Patel', 'M', 22, 'C', 65, 70, 72),
('Ananya Desai', 'F', 21, 'A', 95, 92, 94),
('Manish Verma', 'M', 23, 'B', 88, 85, 91),
('Neha Gupta', 'F', 20, 'C', 76, 80, 79),
('Vikram Rao', 'M', 22, 'A', 90, 89, 84),
('Kavya Nair', 'F', 18, 'B', 77, 83, 80),
('Ishaan Mehta', 'M', 21, 'A', 92, 93, 89),
('Sanya Patel', 'F', 19, 'C', 65, 70, 73);

-- Display all students and their details
SELECT * FROM Students;

-- Calculate the average scores for each subject
SELECT AVG(MathScore) AS AvgMathScore,AVG(ScienceScore) AS AvgScienceScore,AVG(EnglishScore) AS AvgEnglishScore 
FROM Students;

-- Find the student(s) with the highest total score across all subjects
SELECT StudentID, Name, (MathScore + ScienceScore + EnglishScore) AS TotalScore 
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;

-- Count the number of students in each grade
SELECT Grade, COUNT(*) AS StudentCount
FROM Students
GROUP BY Grade;

-- Find the average score for male and female students
SELECT Gender,AVG(MathScore) AS AvgMathScore,AVG(ScienceScore) AS AvgScienceScore,AVG(EnglishScore) AS AvgEnglishScore 
FROM Students
GROUP BY Gender;

-- Identify students whose Math score is above 80
SELECT * FROM Students
WHERE MathScore > 80; 


-- Update the grade of a student with a specific Student ID (example: StudentID = 5)
UPDATE Students SET Grade = 'A'   
WHERE StudentID = 5;

