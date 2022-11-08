-- Tietokantojen perusteet - Database basics
-- H2 T9
-- pyry.j.laine@tuni.fi (tuni-osoitteesi) firstname.lastname@tuni.fi (your tuni email)

SELECT ingredient.ingredient_id, ingredient_name
FROM (ingredient LEFT OUTER JOIN contains ON ingredient.ingredient_id = contains.ingredient_id)
WHERE contains.ice_cream_id IS NULL
ORDER BY ingredient.ingredient_id;