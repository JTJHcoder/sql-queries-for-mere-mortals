(SELECT Customers.CustFirstName||' '||Customers.CustLastName AS Names, Musical_Styles.StyleName, 'Cust' AS ROLE
FROM (Customers
INNER JOIN Musical_Preferences
    ON Customers.CustomerID=Musical_Preferences.CustomerID)
INNER JOIN  Musical_Styles
    ON Musical_Preferences.StyleID=Musical_Styles.StyleID
WHERE Musical_Styles.StyleName = 'Contemporary'
)
UNION
( SELECT Entertainers.EntStageName, Musical_Styles.StyleName, 'Entertainer' AS ROLE
FROM (Entertainers
INNER JOIN Entertainer_Styles
    ON Entertainers.EntertainerID=Entertainer_Styles.EntertainerID)
INNER JOIN Musical_Styles
    ON Entertainer_Styles.StyleID=Musical_Styles.StyleID
WHERE Musical_Styles.StyleName = 'Contemporary'
)
