/*
Classes with no students enrolled.
*/
SELECT Classes.ClassID, Classes.SemesterNumber, enrolled.ClassStatusDescription
FROM Classes
LEFT OUTER JOIN

(SELECT Student_Schedules.ClassID, Student_Class_Status.ClassStatusDescription
FROM Student_Schedules
INNER JOIN Student_Class_Status
    ON Student_Schedules.ClassStatus = Student_Class_Status.ClassStatus
WHERE Student_Class_Status.ClassStatusDescription = 'enrolled')
AS enrolled

    ON Classes.ClassID = enrolled.ClassID
WHERE enrolled.ClassID IS NULL;

/*
Note that when we use <>'enrolled'. A null value evaluates to unknown. Neither true or false.
So thats why we cant just left outer all the way and say <> 'enrolled' cause then we will get completed and withdraw but 
wont get the null entries.
*/