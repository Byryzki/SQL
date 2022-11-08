-- Tietokantojen perusteet - Database basics
-- H5 T5
-- pyry.j.laine@tuni.fi

SELECT COUNT(ice_cream_id) AS ice_cream_count, MIN(manufacturing_cost) AS min_cost, MAX(manufacturing_cost) AS max_cost
FROM ice_cream;