-- Tietokantojen perusteet - Database basics
-- H3 T1
-- pyry.j.laine@tuni.fi

SELECT newer.name, sequel.name AS sequel_name
FROM movie AS newer LEFT OUTER JOIN movie AS sequel ON sequel.predecessor_id IS NOT NULL
AND newer.id = sequel.predecessor_id
ORDER BY newer.id;
