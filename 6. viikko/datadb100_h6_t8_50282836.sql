-- Tietokantojen perusteet - Database basics
-- H6 T8
-- pyry.j.laine@tuni.fi

SELECT ice_cream_name, MAX(manufacturing_cost) AS manufacturing_cost, manufacturer_name
FROM ice_cream, manufacturer

