SELECT Teams.TeamName, Bowlers.BowlerFirstName, Bowlers.BowlerMiddleInit, Bowlers.BowlerLastName
FROM Bowlers
INNER JOIN Teams
    ON Bowlers.TeamID = Teams.TeamID
ORDER BY Teams.TeamName ASC;