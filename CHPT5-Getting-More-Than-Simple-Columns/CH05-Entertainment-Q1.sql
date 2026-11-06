SELECT (CustFirstName||' '||CustLastName) AS Name, CustCity AS City
FROM Customers
ORDER BY CustCity ASC;
