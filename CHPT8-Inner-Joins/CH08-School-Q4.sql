SELECT Art.ScorerInArtAndCom
/*
Only one of the table need to store the name. We call it from the Art one but really it represents the intersection.
*/

FROM
    (SELECT Students.StudentID AS ArtScorerID, (Students.StudFirstName||' '||Students.StudLastName) AS ScorerInArtAndCom
    FROM (((Students
    INNER JOIN Student_Schedules
        ON Students.StudentID=Student_Schedules.StudentID)
    INNER JOIN Classes
        ON Student_Schedules.ClassID=Classes.ClassID)
    INNER JOIN Subjects
        ON Classes.SubjectID=Subjects.SubjectID)
    INNER JOIN Categories
        ON Subjects.CategoryID=Categories.CategoryID
    WHERE Categories.CategoryDescription LIKE '%ART%' AND Student_Schedules.Grade>=85)
    AS Art
/*
Art table consist of top scorers in art
*/

INNER JOIN
    (SELECT Students.StudentID AS ComputerScorerID
    FROM (((Students
    INNER JOIN Student_Schedules
        ON Students.StudentID=Student_Schedules.StudentID)
    INNER JOIN Classes
        ON Student_Schedules.ClassID=Classes.ClassID)
    INNER JOIN Subjects
        ON Classes.SubjectID=Subjects.SubjectID)
    INNER JOIN Categories
        ON Subjects.CategoryID=Categories.CategoryID
    WHERE Categories.CategoryDescription LIKE '%Computer%'  AND Student_Schedules.Grade>=85)    
    AS Computer
/*
Computer table consist of top scorers in computer
*/

ON Art.ArtScorerID = Computer.ComputerScorerID
/*
ON where the two id from both table match to pick up the scorer in both. Intersection.
*/