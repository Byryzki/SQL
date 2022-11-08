-- Tietokantojen perusteet - Database basics
-- H4 T6
-- pyry.j.laine@tuni.fi

SELECT ice_cream.ice_cream_id, ice_cream_name
FROM ((ingredient INNER JOIN contains ON ingredient.ingredient_id = contains.ingredient_id)
contains INNER JOIN ice_cream ON contains.ice_cream_id = ice_cream.ice_cream_id)

WHERE ingredient_name = 'Sugar'
ORDER BY ice_cream_name;