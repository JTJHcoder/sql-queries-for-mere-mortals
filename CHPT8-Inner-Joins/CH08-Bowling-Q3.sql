SELECT BowlerA.BowlerFirstName,BowlerA.BowlerMiddleInit,BowlerA.BowlerLastName,
    BowlerB.BowlerFirstName,BowlerB.BowlerMiddleInit,BowlerB.BowlerLastName,
    BowlerA.BowlerZip
FROM Bowlers AS BowlerA
INNER JOIN Bowlers AS BowlerB
    ON BowlerA.BowlerZip = BowlerB.BowlerZip
WHERE BowlerA.BowlerID<>BowlerB.BowlerID;

/* 
In this case we join with itself and compaire the zip code of person A with the person b.
Now technically there is only half unique pairs. 
since (a,b) = (b,a) in terms of the person sharing a zip code.
But oh well not sure how to account for this unique.
But the where condition is good in that it prevents comparing with ownself since that is always true.
    You will share the same zipcode with yourself.
*/ 