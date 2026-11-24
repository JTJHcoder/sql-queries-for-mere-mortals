SELECT Recipe_Classes.RecipeClassDescription, 
    (SELECT COUNT(Recipes.RecipeTitle)
    FROM Recipes
    WHERE Recipes.RecipeClassID=Recipe_Classes.RecipeClassID)
    AS CountRecipeType
FROM Recipe_Classes

/*
Notice the inner query where can reference a table in the outer query.
*/