SELECT *
FROM Staff
LEFT OUTER JOIN Faculty
    ON Staff.StaffID=Faculty.StaffID
LEFT OUTER JOIN Faculty_Classes
    ON Faculty.StaffID=Faculty_Classes.StaffID
LEFT OUTER JOIN Classes
    ON Faculty_Classes.ClassID = Classes.ClassID;