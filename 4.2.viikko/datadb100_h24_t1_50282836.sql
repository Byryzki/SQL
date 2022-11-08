-- Tietokantojen perusteet - Database basics
-- H4 T1
-- pyry.j.laine@tuni.fi

SELECT ingredient_id, ingredient_name, kcal, protein
FROM ingredient
WHERE kcal >= 300 OR protein = 0;