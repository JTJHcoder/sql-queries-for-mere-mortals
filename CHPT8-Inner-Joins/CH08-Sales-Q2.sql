SELECT DISTINCT (Employees.EmpFirstName||' '||Employees.EmpLastName) AS Employee, (Customers.CustFirstName||' '||Customers.CustLastName) AS Customer
FROM (Employees
INNER JOIN Orders 
    ON Employees.EmployeeID = Orders.EmployeeID)
INNER JOIN Customers
    ON Customers.CustomerID = Orders.CustomerID
ORDER BY Employee ASC, Customer ASC;

/*
ORDER BY clause need to use the new alias name that i assigned to it.

I joined twice so i created a table through linkages
*/