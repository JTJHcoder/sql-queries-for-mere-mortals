SELECT *
FROM Engagements
WHERE (StartDate<='2012-10-31' AND EndDate>='2012-10-01')
    AND (CAST(StartTime AS TIME) BETWEEN CAST('12:00:00' AS TIME) AND CAST('17:00:00' AS TIME));

/*
Could be explicit and CAST or you can just leave it and sql will implicitly cast.
All the same. Note that between is inclusive of the corner cases.
*/