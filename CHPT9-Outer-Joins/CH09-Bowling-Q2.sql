SELECT *
FROM Tournaments
LEFT OUTER JOIN 
(Tourney_Matches
INNER JOIN Match_Games
    ON Tourney_Matches.MatchID = Match_Games.MatchID)
ON Tournaments.TourneyID = Tourney_Matches.TourneyID;

/*
Turns out i dont need an alias I can just inner join within the paranthesis. I assume this will select all by default.

It inner joins first so tht i only get tourney matches that have actual games being played. I then left outer join with all tournaments.
*/