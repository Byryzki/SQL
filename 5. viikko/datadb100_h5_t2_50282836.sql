-- Tietokantojen perusteet - Database basics
-- H5 T2
-- pyry.j.laine@tuni.fi

SELECT manufacturer_name
FROM manufacturer 
WHERE country IN ('Finland', 'Italy')
ORDER BY manufacturer_name;