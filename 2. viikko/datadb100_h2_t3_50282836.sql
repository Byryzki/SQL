-- Tietokantojen perusteet - Database basics
-- H2 T3
-- pyry.j.laine@tuni.fi (tuni-osoitteesi) firstname.lastname@tuni.fi (your tuni email)

SELECT ice_cream_id, ice_cream_name, manufacturing_cost, manufacturer_name
FROM ice_cream, manufacturer
WHERE manufacturing_cost > '1' AND ice_cream.manufacturer_id = manufacturer.manufacturer_id
ORDER BY ice_cream_id;