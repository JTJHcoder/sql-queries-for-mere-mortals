SELECT Customers.CustFirstName, Customers.CustLastName
FROM Customers
WHERE Customers.CustomerID IN
    (SELECT Customers.CustomerID
    FROM ((Customers
    INNER JOIN Engagements
        ON Customers.CustomerID=Engagements.CustomerID)
    INNER JOIN Entertainer_Styles
        ON Engagements.EntertainerID=Entertainer_Styles.EntertainerID)
    INNER JOIN Musical_Styles
        ON Entertainer_Styles.StyleID=Musical_Styles.StyleID
    WHERE Musical_Styles.StyleName IN ('Country','Country Rock'))