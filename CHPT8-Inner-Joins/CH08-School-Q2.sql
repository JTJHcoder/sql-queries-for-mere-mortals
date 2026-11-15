SELECT DISTINCT (Students.StudFirstName||' '||Students.StudLastName) AS Student, EnrolledClass.ClassID, EnrolledClass.ClassStatusDescription
FROM ((Students
INNER JOIN Student_Schedules
    ON Students.StudentID = Student_Schedules.StudentID)
INNER JOIN Classes
    ON Classes.ClassID = Student_Schedules.ClassID)
/*
This gives me the entire table of the classes that students take (Enrolled and completed).
Which i will then inner join with a table of enrolled only class ID.
*/

INNER JOIN 
    (SELECT Student_Schedules.ClassID, Student_Class_Status.ClassStatusDescription
    FROM Student_Schedules
    INNER JOIN Student_Class_Status
        ON Student_Schedules.ClassStatus = Student_Class_Status.ClassStatus
        WHERE Student_Class_Status.ClassStatusDescription = 'Enrolled') 
    AS EnrolledClass
    ON EnrolledClass.ClassID = Student_Schedules.ClassID;

/*
This gives me a table of the currently enrolled classes.
*/