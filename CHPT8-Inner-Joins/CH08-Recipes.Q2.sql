SELECT  DISTINCT Recipes.RecipeTitle
FROM ((Ingredient_Classes
INNER JOIN Ingredients
    ON Ingredient_Classes.IngredientClassID = Ingredients.IngredientClassID)
INNER JOIN Recipe_Ingredients
    ON Ingredients.IngredientID = Recipe_Ingredients.IngredientID)
INNER JOIN Recipes
    ON Recipe_Ingredients.RecipeID = Recipes.RecipeID
WHERE Ingredient_Classes.IngredientClassDescription = 'Dairy';

/*
If i dont use distinct that yorkshire pudding appears twice because it has 
2 dairy ingredient so it has 2 rows in the * Milk and Eggs in ingredientName.
So Need use DISTINCT for the title to get only 2 unique recipe.
*/