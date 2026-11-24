SELECT Products.ProductName, 
    (SELECT MAX(Orders.OrderDate)
    FROM Orders INNER JOIN Order_Details
        ON Orders.OrderNumber=Order_Details.OrderNumber
    WHERE Order_Details.ProductNumber=Products.ProductNumber)
AS LatestDate
FROM Products

/*
Yes, there is a null entry in victoria pro. I mean i guess MAX(Null)
still gives null.
*/