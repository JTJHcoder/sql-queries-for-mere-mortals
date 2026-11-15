SELECT Orders.OrderNumber, Products.ProductName, Order_Details.QuantityOrdered
FROM (Orders
INNER JOIN Order_Details
    ON Order_Details.OrderNumber = Orders.OrderNumber)
INNER JOIN Products
    ON Products.ProductNumber = Order_Details.ProductNumber
ORDER BY OrderNumber ASC;