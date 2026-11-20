/*
Display all recipe classes and any recipes
*/

SELECT *
FROM Recipe_Classes
LEFT OUTER JOIN Recipes
    ON Recipe_Classes.RecipeClassID = Recipes.RecipeClassID;