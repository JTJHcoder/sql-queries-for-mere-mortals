SELECT CustFirstName, CustLastName, Engagements.EngagementNumber
FROM Customers
LEFT OUTER JOIN Engagements
    ON Customers.CustomerID=Engagements.CustomerID
WHERE Engagements.CustomerID IS NULL;