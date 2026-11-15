SELECT DISTINCT (Customers.CustFirstName||' '||Customers.CustLastName) AS Customer, Entertainers.EntStageName
FROM (Customers
INNER JOIN Engagements
    ON Customers.CustomerID = Engagements.CustomerID)
INNER JOIN Entertainers
    ON Engagements.EntertainerID = Entertainers.EntertainerID;