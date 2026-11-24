SELECT Students.StudFirstName, Students.StudLastName
FROM Students
WHERE Students.StudentID IN
    (SELECT Students.StudentID
    FROM (Students
    INNER JOIN Student_Schedules
        ON Students.StudentID=Student_Schedules.StudentID)
    INNER JOIN Classes
        ON Student_Schedules.ClassID=Classes.ClassID
    WHERE Classes.TuesdaySchedule=1)

/*
Assume that 1 means that true
*/