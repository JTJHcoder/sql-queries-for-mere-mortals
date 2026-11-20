SELECT Entertainers.EntStageName, 
    Engagements.StartDate, Engagements.StartTime, 
    Engagements.EndDate, Engagements.StopTime
FROM Entertainers
LEFT OUTER JOIN Engagements
    ON Entertainers.EntertainerID = Engagements.EntertainerID