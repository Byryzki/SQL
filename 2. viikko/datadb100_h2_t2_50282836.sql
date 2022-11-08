-- Tietokantojen perusteet - Database basics
-- H2 T2
-- pyry.j.laine@tuni.fi

SELECT ice_cream_id, ice_cream_name, manufacturer_name
FROM ice_cream, manufacturer, contains
WHERE contains.ingredient_id = ingredient.ingredient_id 
AND ice_cream.ice_cream_id = contains.ice_cream_id
AND ice_cream.manufacturer_id = manufacturer.manufacturer_id
ORDER BY ice_cream_id ASC;