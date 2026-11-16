SELECT GarlicRecipes.RecipeTitle
FROM 
(SELECT Recipes.RecipeID,Recipes.RecipeTitle
FROM (Recipes
INNER JOIN Recipe_Ingredients
    ON Recipes.RecipeID=Recipe_Ingredients.RecipeID)
INNER JOIN Ingredients
    ON Recipe_Ingredients.IngredientID=Ingredients.IngredientID
WHERE Ingredients.IngredientName='Beef')
AS BeefRecipes

INNER JOIN 
(SELECT Recipes.RecipeID,Recipes.RecipeTitle
FROM (Recipes
INNER JOIN Recipe_Ingredients
    ON Recipes.RecipeID=Recipe_Ingredients.RecipeID)
INNER JOIN Ingredients
    ON Recipe_Ingredients.IngredientID=Ingredients.IngredientID
WHERE Ingredients.IngredientName='Garlic')
AS GarlicRecipes

ON BeefRecipes.RecipeID = GarlicRecipes.RecipeID;

/*
We create two table one of beef recipes, another of garlic recipe.
Then join on those that share the same recipe ID. Meaning a recipe that has both beef and garlic.
Although we select ultimately at the top from garlicrecipe. It does not matter really since it gets filtered alrdy.
*/