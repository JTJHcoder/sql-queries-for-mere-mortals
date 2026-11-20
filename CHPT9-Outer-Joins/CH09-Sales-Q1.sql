SELECT Customers.CustFirstName, Customers.CustLastName, helmetOrders.ProductName
FROM Customers
LEFT OUTER JOIN 

(SELECT Orders.CustomerID, Products.ProductName
FROM (Orders
INNER JOIN Order_Details 
    ON Orders.OrderNumber=Order_Details.OrderNumber) 
INNER JOIN Products
    ON Order_Details.ProductNumber=Products.ProductNumber 
WHERE Products.ProductName LIKE '%Helmet%'
)
AS helmetOrders

    ON Customers.CustomerID=helmetOrders.CustomerID
WHERE helmetOrders.ProductName IS NULL;


/*
First create a table where we get only helmet entry.
Then form and outer join such that customer without helmet entry will get a null. All customer will be accounted since left outer join
Then filter out only the IS NULL values.
*/