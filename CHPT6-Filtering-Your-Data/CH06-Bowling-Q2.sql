SELECT TourneyLocation, TourneyDate 
FROM Tournaments
WHERE TourneyLocation IN ('Bolero Lanes', 'Red Rooster Lanes', 'Thunderbird Lanes')
ORDER BY TourneyLocation ASC, TourneyDate ASC;