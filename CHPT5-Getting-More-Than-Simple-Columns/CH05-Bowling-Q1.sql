SELECT TourneyLocation, TourneyDate, DATEADD(Year,1,TourneyDate) AS NextYearTourneyDate
FROM Tournaments
ORDER BY TourneyLocation ASC;