SELECT  (Customers.CustFirstName||' '||Customers.CustLastName) AS Customers, Orders.OrderDate
FROM Customers
INNER JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID
ORDER BY Orders.OrderDate;