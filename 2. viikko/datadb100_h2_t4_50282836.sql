-- Tietokantojen perusteet - Database basics
-- H2 T4
-- pyry.j.laine@tuni.fi (tuni-osoitteesi) firstname.lastname@tuni.fi (your tuni email)

SELECT manufacturer_name, ice_cream_name, ingredient_name
FROM manufacturer, ice_cream, ingredient, contains
WHERE contains.ingredient_id = ingredient.ingredient_id 
AND ice_cream.ice_cream_id = contains.ice_cream_id
AND ice_cream.manufacturer_id = manufacturer.manufacturer_id
ORDER BY manufacturer_name, ice_cream_name, ingredient_name;