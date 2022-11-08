-- Tietokantojen perusteet - Database basics
-- H4 T2
-- pyry.j.laine@tuni.fi

SELECT ingredient_id, ingredient_name, kcal, protein
FROM ingredient
WHERE kcal > 300 AND protein = 0;