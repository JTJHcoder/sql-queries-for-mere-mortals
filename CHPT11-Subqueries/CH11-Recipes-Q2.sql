SELECT Ingredients.IngredientName
FROM Ingredients
WHERE Ingredients.MeasureAmountID <> SOME 
    (SELECT Recipe_Ingredients.MeasureAmountID
    FROM Recipe_Ingredients
    INNER JOIN Measurements
        ON Recipe_Ingredients.MeasureAmountID=Measurements.MeasureAmountID
    -- Gives me a table of recipe ingredients with their measurementamount ID
    WHERE Ingredients.IngredientID=Recipe_Ingredients.IngredientID
    -- compare the measure amount ID based off of the same ingredient ID in the recipe
    )