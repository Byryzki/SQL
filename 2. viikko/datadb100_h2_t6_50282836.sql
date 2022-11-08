-- Tietokantojen perusteet - Database basics
-- H2 T6
-- pyry.j.laine@tuni.fi (tuni-osoitteesi) firstname.lastname@tuni.fi (your tuni email)

SELECT DISTINCT ingredient.ingredient_id, ingredient.ingredient_name
FROM contains INNER JOIN ingredient 
ON contains.ingredient_id = ingredient.ingredient_id
ORDER BY ingredient.ingredient_id;