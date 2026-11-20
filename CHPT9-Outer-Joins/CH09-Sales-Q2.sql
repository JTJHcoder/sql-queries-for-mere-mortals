SELECT CustFirstName,CustLastName
FROM Customers
LEFT OUTER JOIN Employees
ON Customers.CustZipCode = Employees.EmpZipCode
WHERE Employees.EmpZipCode IS NULL;

/*
Since i use a left outer join those that dont match on the right table will be null. i.e those that dont share zipcode emp(right table) will be null


Notice i can skip the entire linking table and just compare here directly the zip. Pretty cool.

NOTE ON FULL OUTER JOIN
If i had use a FULL means if dont match every column will be null.
Essentially if i had use a FULL and set cust.custzipcode IS NOT NULL AND emp.empzipcode IS NOT NULL. 
I will get the same as an INNER JOIN. Only matching vals essentially.
*/