SELECT Entertainers.EntStageName
FROM Entertainers
WHERE Entertainers.EntertainerID = SOME
    (SELECT Entertainers.EntertainerID
    FROM (Entertainers
    INNER JOIN Engagements
        ON Entertainers.EntertainerID=Engagements.EntertainerID)
    INNER JOIN Customers
        ON Engagements.CustomerID=Customers.CustomerID 
    WHERE CustLastName IN ('Berg', 'Hallmark'))

/*
Not really sure the point of SOME but ah well. maybe just syntax same as IN

I guess it really shines if it is quantitative comparison with the individual values.
Whether it is greater than any one or some of the values.  SOME and ANY is same.
Since in cant really do those kind of T or F comparison.
*/