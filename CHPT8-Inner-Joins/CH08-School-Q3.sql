SELECT (Staff.StfFirstName||' '||Staff.StfLastname) AS StaffName, Subjects.SubjectName
FROM ((Staff
INNER JOIN Faculty
    ON Staff.StaffID = Faculty.StaffID)
INNER JOIN Faculty_Subjects
    ON Faculty.StaffID = Faculty_Subjects.StaffID)
INNER JOIN Subjects
    ON Faculty_Subjects.SubjectID = Subjects.SubjectID
ORDER BY StaffName;
