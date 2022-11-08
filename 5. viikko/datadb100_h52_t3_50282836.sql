-- Tietokantojen perusteet - Database basics
-- H5 T5
-- pyry.j.laine@tuni.fi

SELECT ingredient.ingredient_id, COUNT(contains.ice_cream_id) AS count
FROM ((ingredient INNER JOIN contains ON ingredient.ingredient_id = contains.ingredient_id)
contains INNER JOIN ice_cream ON contains.ice_cream_id = ice_cream.ice_cream_id)
GROUP BY ingredient_id;