(SELECT Ingredients.IngredientName, Measurements.MeasurementDescription, 'Ingredient' AS Role
FROM Ingredients
INNER JOIN Measurements
    ON Ingredients.MeasureAmountID=Measurements.MeasureAmountID
)
UNION
(
SELECT Ingredients.IngredientName, Measurements.MeasurementDescription, 'Recipe_Ingr' AS Role
FROM (Recipe_Ingredients
INNER JOIN Ingredients
    ON Recipe_Ingredients.IngredientID = Ingredients.IngredientID)
INNER JOIN Measurements
    ON Recipe_Ingredients.MeasureAmountID = Measurements.MeasureAmountID
)
/*
We have ingredient that are pure ingredient. And also ingredient that are used in recipes.
since second table is pure recipe ingredients we inner join with Recipe_ingredeint.MeasureAmountID 
Rather than Ingredient.MeasureAmountID.
*/