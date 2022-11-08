-- Tietokantojen perusteet - Database basics
-- H1 T1
-- 50282836 pyry.j.laine@tuni.fi

SELECT name, price
FROM tea
WHERE price >= 6
ORDER BY price DESC, name ASC;