-- Tietokantojen perusteet - Database basics
-- H6 T2
-- pyry.j.laine@tuni.fi

SELECT DISTINCT manufacturer.manufacturer_id, manufacturer_name
FROM manufacturer, ice_cream
WHERE ice_cream.manufacturing_cost NOT IN (SELECT DISTINCT manufacturer.manufacturer_id
FROM manufacturer, ice_cream
WHERE ice_cream.manufacturer_id IN (manufacturer.manufacturer_id))
ORDER BY manufacturer.manufacturer_id;