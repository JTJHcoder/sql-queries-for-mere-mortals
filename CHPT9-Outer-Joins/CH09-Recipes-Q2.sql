/*
All ingredient and any recipes there are used in.
*/

SELECT *
FROM Ingredients
LEFT OUTER JOIN 
(Recipe_Ingredients
INNER JOIN Recipes
    ON Recipe_Ingredients.RecipeID = Recipes.RecipeID)
    ON Ingredients.IngredientID = Recipe_Ingredients.IngredientID;

/*
We inner join first to obtain all non-null recipes with ingredients. 
We then do a left outer join to compare the ingredients to see the recipes there are used in.
*/