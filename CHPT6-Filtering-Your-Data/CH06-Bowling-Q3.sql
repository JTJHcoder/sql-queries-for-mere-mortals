SELECT *
FROM Bowlers
WHERE BowlerCity IN ('Bellevue', 'Bothell', 'Duvall', 'Redmond', 'Woodinville')
    AND TeamID BETWEEN 5 AND 8;

/*
Interesting that 5 and 8 can be '5' '8' also i think. SQL handles implicitly the conversion to compare.
*/ 