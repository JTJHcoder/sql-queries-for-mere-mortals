SELECT DISTINCT Customers.CustFirstName, Customers.CustLastName
FROM Customers
WHERE Customers.CustomerID IN
    (SELECT Customers.CustomerID
    FROM (((Customers 
    INNER JOIN Orders
        ON Customers.CustomerID=Orders.CustomerID)
    INNER JOIN Order_Details
        ON Orders.OrderNumber=Order_Details.OrderNumber)
    INNER JOIN Products
        ON Order_Details.ProductNumber=Products.ProductNumber)
    INNER JOIN Categories
        ON Products.CategoryID=Categories.CategoryID
    WHERE Categories.CategoryDescription='Bikes')