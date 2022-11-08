-- Tietokantojen perusteet - Database basics
-- H2 T8
-- pyry.j.laine@tuni.fi (tuni-osoitteesi) firstname.lastname@tuni.fi (your tuni email)

SELECT ingredient_name, ice_cream_name
FROM ((ingredient LEFT OUTER JOIN contains on contains.ingredient_id = ingredient.ingredient_id)
 contains LEFT OUTER JOIN ice_cream ON contains.ice_cream_id = ice_cream.ice_cream_id)
ORDER BY ingredient_name, ice_cream_name;
