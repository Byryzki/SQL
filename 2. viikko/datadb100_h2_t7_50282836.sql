-- Tietokantojen perusteet - Database basics
-- H2 T7
-- pyry.j.laine@tuni.fi (tuni-osoitteesi) firstname.lastname@tuni.fi (your tuni email)

SELECT manufacturer.manufacturer_id, manufacturer_name, ice_cream.ice_cream_id, ice_cream_name
FROM manufacturer LEFT OUTER JOIN ice_cream
ON manufacturer.manufacturer_id = ice_cream.manufacturer_id
ORDER BY manufacturer.manufacturer_id, ice_cream.ice_cream_id;