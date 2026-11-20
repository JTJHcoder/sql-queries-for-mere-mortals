SELECT DISTINCT Products.ProductName, Orders.OrderDate
FROM Products
LEFT OUTER JOIN Order_Details
    ON Products.ProductNumber = Order_Details.ProductNumber
LEFT OUTER JOIN Orders
    ON Order_Details.OrderNumber = Orders.OrderNumber;

/*
The Distinct acts on all the cols indicated in the select statement. Other cols I didnt indicate might have diff entry
That is why distinct is needed so as a filter out repeition from desired cols.

we are only concern with all products not all orders we dont care about orders that have no product. 
So no need right join. Technically right join would be wrong if we want all orders it would be FULL OUTER all the way.
Since we can't predict how the sql execute which join first. if desire is to preserve all entry then FULL OUTER everywhr.
*/