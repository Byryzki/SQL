-- Tietokantojen perusteet - Database basics
-- Harjoitustyö 2.vaihe kysely 5
-- pyry.j.laine@tuni.fi

SELECT otunnus, onimi
FROM
(SELECT ohjaaja.otunnus, ohjaaja.onimi, COUNT(voi_ohjata.otunnus) as eka /*voi ohjata*/
FROM (ohjaaja INNER JOIN voi_ohjata ON ohjaaja.otunnus = voi_ohjata.otunnus)
GROUP BY ohjaaja.otunnus

INTERSECT

SELECT otunnus, onimi, COUNT(onimi) as toka
FROM(
SELECT DISTINCT ohjaaja.otunnus, onimi, rltunnus /*ohjaa*/
FROM (ohjaaja INNER JOIN ljtunti ON ohjaaja.otunnus = ljtunti.otunnus))
GROUP BY onimi)