SELECT VendName, VendCity
FROM Vendors
WHERE VendCity IN ('Ballard', 'Bellevue', 'Redmond')
ORDER BY VendCity ASC;