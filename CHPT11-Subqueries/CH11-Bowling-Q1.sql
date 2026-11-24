SELECT Bowlers.BowlerFirstName, Bowlers.BowlerMiddleInit, BowlerLastName,
    (SELECT COUNT(Bowler_Scores.GameNumber)
    FROM Bowler_Scores
    WHERE Bowlers.BowlerID=Bowler_Scores.BowlerID)
FROM Bowlers

/*
Seems like none of the bowler missed a game so thats why all same number 42 games. 

Either that or my query is wrong hahah but i think it is right.
*/