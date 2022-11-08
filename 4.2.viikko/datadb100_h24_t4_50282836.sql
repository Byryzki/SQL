-- Tietokantojen perusteet - Database basics
-- H4 T2
-- pyry.j.laine@tuni.fi

SELECT ice_cream_name, manufacturer_name, country
FROM manufacturer, ice_cream
WHERE country = 'Finland' OR country = 'Italy' AND manufacturer.manufacturer_id = ice_cream.manufacturer_id
ORDER BY manufacturer_name, ice_cream_name;