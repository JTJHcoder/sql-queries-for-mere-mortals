(SELECT BowlerFirstName, Bowlers.BowlerMiddleInit ,BowlerLastName, Tournaments.TourneyLocation, Bowler_Scores.RawScore
FROM ((Tournaments
INNER JOIN Tourney_Matches
    ON Tournaments.TourneyID=Tourney_Matches.TourneyID)
INNER JOIN Bowler_Scores
    ON Tourney_Matches.MatchID = Bowler_Scores.MatchID)
INNER JOIN Bowlers
    ON Bowler_Scores.BowlerID = Bowlers.BowlerID
WHERE Tournaments.TourneyLocation = 'Thunderbird Lanes' AND Bowler_Scores.RawScore>165
)
UNION
(SELECT BowlerFirstName,Bowlers.BowlerMiddleInit, BowlerLastName, Tournaments.TourneyLocation, Bowler_Scores.RawScore
FROM ((Tournaments
INNER JOIN Tourney_Matches
    ON Tournaments.TourneyID=Tourney_Matches.TourneyID)
INNER JOIN Bowler_Scores
    ON Tourney_Matches.MatchID = Bowler_Scores.MatchID)
INNER JOIN Bowlers
    ON Bowler_Scores.BowlerID = Bowlers.BowlerID
WHERE Tournaments.TourneyLocation = 'Bolero Lanes' AND Bowler_Scores.RawScore>150
)

/*
Alternatively.

SELECT BowlerFirstName, BowlerLastName, Tournaments.TourneyLocation, Bowler_Scores.RawScore
FROM ((Tournaments
INNER JOIN Tourney_Matches
    ON Tournaments.TourneyID=Tourney_Matches.TourneyID)
INNER JOIN Bowler_Scores
    ON Tourney_Matches.MatchID = Bowler_Scores.MatchID)
INNER JOIN Bowlers
    ON Bowler_Scores.BowlerID = Bowlers.BowlerID
WHERE Tournaments.TourneyLocation = 'Thunderbird Lanes' AND Bowler_Scores.RawScore>165
    OR Tournaments.TourneyLocation = 'Bolero Lanes' AND Bowler_Scores.RawScore>150

A single select statement also suffice.

Book solution seems to use more than rather than more than and equals.
*/