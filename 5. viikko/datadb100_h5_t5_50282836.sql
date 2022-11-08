-- Tietokantojen perusteet - Database basics
-- H5 T5
-- pyry.j.laine@tuni.fi

SELECT ice_cream.ice_cream_id, ice_cream_name
FROM ((ingredient INNER JOIN contains ON ingredient.ingredient_id = contains.ingredient_id)
contains INNER JOIN ice_cream ON contains.ice_cream_id = ice_cream.ice_cream_id)
WHERE plant_based = 1

EXCEPT

SELECT ice_cream.ice_cream_id, ice_cream_name
FROM ((ingredient INNER JOIN contains ON ingredient.ingredient_id = contains.ingredient_id)
contains INNER JOIN ice_cream ON contains.ice_cream_id = ice_cream.ice_cream_id)
WHERE plant_based = 0

ORDER BY 1;