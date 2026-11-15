SELECT (Agents.AgtFirstName||' '||Agents.AgtLastName) AS Agent, Agents.AgtZipCode, 
    Entertainers.EntStageName, Entertainers.EntZipCode
FROM Agents
INNER JOIN Entertainers
    ON Agents.AgtZipCode = Entertainers.EntZipCode;

/* 
Assume zipcode is same as postal code
/*