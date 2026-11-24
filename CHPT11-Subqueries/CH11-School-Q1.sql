SELECT Staff.StfFirstName,Staff.StfLastname,
    (SELECT COUNT(Classes.ClassID)
    FROM Classes 
    INNER JOIN Faculty_Classes
        ON Classes.ClassID = Faculty_Classes.ClassID
    WHERE Staff.StaffID = Faculty_Classes.StaffID)
    AS NumClassTeach
FROM Staff