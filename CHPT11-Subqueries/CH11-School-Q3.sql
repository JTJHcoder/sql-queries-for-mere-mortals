SELECT Subjects.SubjectName
FROM Subjects
WHERE Subjects.SubjectID IN
    (SELECT Subjects.SubjectID
    FROM Subjects
    INNER JOIN Classes
        ON Subjects.SubjectID=Classes.SubjectID
    WHERE Classes.WednesdaySchedule=1)