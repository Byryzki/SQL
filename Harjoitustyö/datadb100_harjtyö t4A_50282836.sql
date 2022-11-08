-- Tietokantojen perusteet - Database basics
-- Harjoitustyö 2.vaihe kysely 4B
-- pyry.j.laine@tuni.fi

SELECT knimi, COUNT(rlnimi) AS lkm, MIN(kesto) AS minkesto, MAX(kesto) AS maxkesto
FROM kategoria INNER JOIN rltunti ON kategoria.ktunnus = rltunti.ktunnus
GROUP BY knimi
ORDER BY knimi;
