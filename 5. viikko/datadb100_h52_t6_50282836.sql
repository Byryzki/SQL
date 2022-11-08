-- Tietokantojen perusteet - Database basics
-- H5 T6
-- pyry.j.laine@tuni.fi

SELECT ingredient.ingredient_id, ingredient_name, COUNT(contains.ice_cream_id) AS ice_cream_count
FROM ((ingredient LEFT OUTER JOIN contains ON ingredient.ingredient_id = contains.ingredient_id)
contains LEFT OUTER JOIN ice_cream ON contains.ice_cream_id = ice_cream.ice_cream_id) 
GROUP BY contains.ingredient_id
ORDER BY ingredient.ingredient_id;