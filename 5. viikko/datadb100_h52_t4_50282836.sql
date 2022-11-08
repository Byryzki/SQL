-- Tietokantojen perusteet - Database basics
-- H5 T5
-- pyry.j.laine@tuni.fi

SELECT manufacturer.manufacturer_id, manufacturer_name, COUNT(ice_cream.ice_cream_id) AS ice_cream_count, MIN(manufacturing_cost) AS min_cost, MAX(manufacturing_cost) AS max_cost
FROM manufacturer INNER JOIN ice_cream ON manufacturer.manufacturer_id = ice_cream.manufacturer_id
GROUP BY ice_cream.manufacturer_id
ORDER BY manufacturer.manufacturer_id;