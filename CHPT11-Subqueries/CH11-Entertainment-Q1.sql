SELECT Entertainers.EntStageName,
    (SELECT COUNT(Engagements.EngagementNumber)
    FROM Engagements
    WHERE Entertainers.EntertainerID=Engagements.EntertainerID)
    AS EngageCount
FROM Entertainers;

/*
Note that FROM has to be a valid table name in the database. We want to use the outside query one
rather than a new version of the entertainers. so thats why use where instead of inner join

We have to do like this so that the inner queries using the entertainers table from the outside query.
*/

