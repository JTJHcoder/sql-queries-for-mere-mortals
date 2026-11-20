SELECT *
FROM Recipe_Classes
LEFT OUTER JOIN Recipes
    ON Recipe_Classes.RecipeClassID = Recipes.RecipeClassID
WHERE Recipes.RecipeClassID IS NULL;