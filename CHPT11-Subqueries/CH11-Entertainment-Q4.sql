SELECT Agents.AgtFirstName, Agents.AgtLastName
FROM Agents
WHERE Agents.AgentID NOT IN 
    (SELECT Agents.AgentID
    FROM Agents
    INNER JOIN Engagements
        ON Agents.AgentID=Engagements.AgentID)

/*
All booked entertainers will have engagements so can just check engagements in the NOT IN.
No need to inner join with entertainers to find those not booked.
*/