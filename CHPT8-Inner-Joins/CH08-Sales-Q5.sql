SELECT (Customers.CustFirstName||' '||Customers.CustLastName) AS Customer, (Employees.EmpFirstName||' '||Employees.EmpLastName) AS Employee
FROM Customers
INNER JOIN Employees
    ON Customers.CustLastName = Employees.EmpLastName;