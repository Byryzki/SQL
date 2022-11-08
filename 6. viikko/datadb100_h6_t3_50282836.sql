-- Tietokantojen perusteet - Database basics
-- H6 T3
-- pyry.j.laine@tuni.fi

SELECT DISTINCT manufacturer.manufacturer_id, manufacturer_name
FROM manufacturer, ice_cream
WHERE EXISTS (SELECT * FROM ice_cream 
 WHERE manufacturer.manufacturer_id = ice_cream.manufacturer_id)
ORDER BY manufacturer.manufacturer_id;