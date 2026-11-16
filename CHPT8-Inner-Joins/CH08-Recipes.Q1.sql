SELECT Recipe_Classes.RecipeClassDescription, Recipes.RecipeTitle, Recipes.Preparation, Recipes.Notes
FROM Recipe_Classes
INNER JOIN Recipes
    ON Recipe_Classes.RecipeClassID=Recipes.RecipeClassID
WHERE Recipe_Classes.RecipeClassDescription = 'Salad';