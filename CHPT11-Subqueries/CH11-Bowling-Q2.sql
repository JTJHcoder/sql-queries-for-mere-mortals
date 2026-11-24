SELECT DISTINCT Bowlers.BowlerFirstName, Bowlers.BowlerMiddleInit, Bowlers.BowlerLastName
FROM (Teams
INNER JOIN Bowlers
    ON Teams.TeamID=Bowlers.TeamID)
INNER JOIN Bowler_Scores
    ON Bowlers.BowlerID=Bowler_Scores.BowlerID
/*
Here we get a table containing all teams, bowlers in the team and their raw scores

Where then focusses on an individual in this table
*/

WHERE Bowler_Scores.RawScore <ALL
    (SELECT BS2.RawScore
    FROM Bowlers AS B2
    INNER JOIN Bowler_Scores AS BS2
        ON B2.BowlerID=BS2.BowlerID
    WHERE Teams.TeamID=B2.TeamID 
        AND Bowlers.BowlerID<>B2.BowlerID
    /*
    Here we get the raw score of other bowlers that are in the same team but not said individual
    */    
    )

/*
We need the alias for the second one so that they dont use the above tables. 
Also it is to allow comparison betw Bowlers and B2.

Notice teams is only appears ones from the from so we are using the same teams table throughout
*/