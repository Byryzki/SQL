-- Tietokantojen perusteet - Database basics
-- H2 T5
-- pyry.j.laine@tuni.fi (tuni-osoitteesi) firstname.lastname@tuni.fi (your tuni email)

SELECT ice_cream_name
FROM ice_cream, ingredient, contains
WHERE ice_cream.ice_cream_id = contains.ice_cream_id
AND contains.ingredient_id = ingredient.ingredient_id  
AND ingredient.ingredient_name = 'Vanilla extract'
ORDER BY ice_cream_name;