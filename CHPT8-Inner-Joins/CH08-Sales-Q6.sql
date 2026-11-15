SELECT (Customers.CustFirstName||' '||Customers.CustLastName) AS Customer, Customers.CustCity,
    (Employees.EmpFirstName||' '||Employees.EmpLastName) AS Employee, Employees.EmpCity
FROM Customers
INNER JOIN Employees
    ON Customers.CustCity = Employees.EmpCity;