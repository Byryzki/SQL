-- Tietokantojen perusteet - Database basics
-- H3 T1
-- pyry.j.laine@tuni.fi

SELECT newer.name, predecessor.name AS predecessor_name
FROM movie AS newer LEFT OUTER JOIN movie AS predecessor ON newer.predecessor_id IS NOT NULL
AND predecessor.id = newer.predecessor_id
ORDER BY newer.id;
