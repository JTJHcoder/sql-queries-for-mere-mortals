(SELECT (Customers.CustFirstName||' '||Customers.CustLastName) AS Names, 'Cust' AS Role, Products.ProductName
FROM ((Customers
INNER JOIN Orders
    ON Customers.CustomerID=Orders.CustomerID)
INNER JOIN Order_Details
    ON Orders.OrderNumber = Order_Details.OrderNumber)
INNER JOIN Products
    ON Order_Details.ProductNumber = Products.ProductNumber
WHERE Products.ProductName LIKE '%Helmet%'
)

UNION

(SELECT Vendors.VendName, 'Vend' AS Role, Products.ProductName
FROM (Vendors
INNER JOIN Product_Vendors
    ON Vendors.VendorID = Product_Vendors.VendorID)
INNER JOIN Products
    ON Product_Vendors.ProductNumber = Products.ProductNumber
WHERE Products.ProductName LIKE '%Helmet%'
)

/*
We indicate the role and also the specific product that each one wants. 
If it was just names we wouldnt differentiate betw the product names.

Union combines and collapses information from different tables into rows. 
We see info from cust and info from vend.

*/