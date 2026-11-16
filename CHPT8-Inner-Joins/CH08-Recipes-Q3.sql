SELECT IngrA.IngredientName,IngrB.IngredientName, Measurements.MeasurementDescription
FROM (Ingredients AS IngrA
INNER JOIN Ingredients AS IngrB
    ON IngrA.MeasureAmountID = IngrB.MeasureAmountID)
INNER JOIN Measurements
    ON IngrB.MeasureAmountID = Measurements.MeasureAmountID
WHERE IngrA.IngredientID<>IngrB.IngredientID;

/*
The ounces are grouped together etc. the unit of measurements same are grouped together.

we inner join with itself comparing one ingredient with the other and see if the unit is the same.

But once again it is not unique pairs. (A,B) is treated diff as (B,A) even though technically they represent same info.

We could instead use A.ID < B.ID keeps only 1,3 if match on measurement
then it will keep only one unique half since A.ID<>B.ID keeps the case where 1,3 and 3,1 if match on measurement

Book seems to follow non-unique pairs though.
*/