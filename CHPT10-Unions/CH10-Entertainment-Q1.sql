(
    SELECT (Customers.CustFirstName||' '||Customers.CustLastName) AS Name, 'Cust' AS Role
    FROM Customers

)
UNION
(
    SELECT Entertainers.EntStageName, 'Entertainer' 
    FROM Entertainers
)