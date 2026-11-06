SELECT BowlerID, MatchID,GameNumber,
    RawScore,HandiCapScore,WonGame
FROM Bowler_Scores
ORDER BY BowlerID ASC, MatchID ASC, GameNumber ASC;