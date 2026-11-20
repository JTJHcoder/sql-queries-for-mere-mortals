SELECT AgtFirstName, AgtLastName, Entertainers.EntStageName
FROM Agents
LEFT OUTER JOIN Engagements
    ON Agents.AgentID = Engagements.AgentID
LEFT OUTER JOIN Entertainers
    ON Engagements.EntertainerID = Entertainers.EntertainerID
WHERE Entertainers.EntertainerID IS NULL;