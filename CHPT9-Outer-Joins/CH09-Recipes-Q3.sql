/*
List the salad, soup, and the main course categories and any recipes
*/

SELECT  *
FROM Recipe_Classes
LEFT OUTER JOIN Recipes
    ON Recipe_Classes.RecipeClassID = Recipes.RecipeClassID
WHERE Recipe_Classes.RecipeClassDescription = 'Salad'
    OR Recipe_Classes.RecipeClassDescription = 'Soup'
    OR Recipe_Classes.RecipeClassDescription = 'Main course';

/*
We see any recipe that has such a class. But also recipes that dont exist for a given class.
Like we get null for soup recipes. class exist but recipes under that class just isnt there yet.
*/
