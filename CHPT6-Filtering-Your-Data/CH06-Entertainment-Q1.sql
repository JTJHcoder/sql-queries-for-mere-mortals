SELECT *
FROM Engagements
WHERE StartDate <= '2012-10-31' 
    AND EndDate >= '2012-10-01'
ORDER BY StartDate ASC;

/*
As long as the duration crops into October we include it.
it could start earlier then end in october or start oct end nov or later.
but trick is if start cant start after 31 Oct. And if end cant end before 1 Oct. 
We assume start is always earlier than end.
*/