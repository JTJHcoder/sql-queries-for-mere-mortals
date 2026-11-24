SELECT *
FROM Products
WHERE Products.ProductNumber NOT IN
    (SELECT Products.ProductNumber
    FROM (Orders
    INNER JOIN Order_Details
        ON Orders.OrderNumber=Order_Details.OrderNumber)
    INNER JOIN Products
        ON Order_Details.ProductNumber=Products.ProductNumber)