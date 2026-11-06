/*
MSSQL does not support addition of DATE with INT. Therefore have to use a function DATEADD.
*/
SELECT (AgtFirstName||' '||AgtLastName) AS Name, 
    DateHired, 
    DATEADD(MONTH, 6, DateHired) AS PerformanceReviewDate
FROM Agents;