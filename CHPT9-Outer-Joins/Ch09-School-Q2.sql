SELECT Subjects.SubjectCode, Subjects.SubjectName, Subjects.SubjectDescription, faculty.StaffID
FROM Subjects
LEFT OUTER JOIN

(SELECT Faculty_Subjects.SubjectID, Faculty.StaffID
FROM Faculty_Subjects
INNER JOIN Faculty
    ON Faculty_Subjects.StaffID = Faculty.StaffID
) 
AS faculty

    ON Subjects.SubjectID = faculty.SubjectID
WHERE faculty.StaffID IS NULL;