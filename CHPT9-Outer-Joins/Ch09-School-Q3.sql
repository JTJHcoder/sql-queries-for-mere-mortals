SELECT Students.StudFirstName, Students.StudLastName
FROM Students
LEFT OUTER JOIN 
(
SELECT Student_Schedules.StudentID, Student_Class_Status.ClassStatusDescription
FROM Student_Schedules
INNER JOIN Student_Class_Status
    ON Student_Schedules.ClassStatus=Student_Class_Status.ClassStatus
WHERE Student_Class_Status.ClassStatusDescription = 'enrolled'
)
AS enrolled
    ON Students.StudentID = enrolled.StudentID
WHERE enrolled.ClassStatusDescription IS NULL;