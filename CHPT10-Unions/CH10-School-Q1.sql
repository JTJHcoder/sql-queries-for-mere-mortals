(SELECT Students.StudFirstName AS FirstName, Students.StudLastName As LastName, Students.StudZipCode AS Zip, 'Stud' AS Role
FROM Students
)
UNION
(SELECT Staff.StfFirstName, Staff.StfLastname, Staff.StfZipCode, 'Staff' AS Role
FROM Staff
)
ORDER BY Zip;

/*
Order by the third column. Alternatively can order by the column name
*/
