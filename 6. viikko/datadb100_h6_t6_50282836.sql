-- Tietokantojen perusteet - Database basics
-- H6 T6
-- pyry.j.laine@tuni.fi

SELECT ice_cream.ice_cream_id, ice_cream_name
FROM ((ingredient INNER JOIN contains ON ingredient.ingredient_id = contains.ingredient_id)
contains INNER JOIN ice_cream ON contains.ice_cream_id = ice_cream.ice_cream_id)
WHERE ingredient_name = 'Sugar'

EXCEPT

SELECT ice_cream.ice_cream_id, ice_cream_name
FROM ((ingredient INNER JOIN contains ON ingredient.ingredient_id = contains.ingredient_id)
contains INNER JOIN ice_cream ON contains.ice_cream_id = ice_cream.ice_cream_id)
WHERE ingredient_name = 'Vanilla extract'

ORDER BY 1;
