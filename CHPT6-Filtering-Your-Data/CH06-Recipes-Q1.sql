SELECT *
FROM Recipes
WHERE RecipeClassID = 1
    AND Notes IS NOT NULL;