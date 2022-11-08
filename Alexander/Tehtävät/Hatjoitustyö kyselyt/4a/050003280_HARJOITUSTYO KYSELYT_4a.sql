-- Tietokantojen perusteet 2020
-- KYSELYT 4a
-- Alexandre.Lotta@tuni.fi (tuni-osoite)

SELECT tuote.tnimi, MIN (arvosana) AS min_arvosana, MAX (arvosana) AS max_arvosana, AVG (arvosana) AS ka_arvosana, COUNT (arvosana) AS lkm_arvosana
FROM tuote LEFT OUTER JOIN  arviointi
     ON tuote.ttunnus = arviointi.ttunnus
GROUP BY tuote.tnimi
ORDER BY tuote.tnimi;
	