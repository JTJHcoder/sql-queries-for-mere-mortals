SELECT *
FROM Tournaments
WHERE CAST(TourneyDate AS DATE) BETWEEN CAST('2012-09-01' AS DATE) AND CAST('2012-09-30' AS DATE)
ORDER BY TourneyDate ASC;

/* 
September only has 30 days
*/