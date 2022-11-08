-- Tietokantojen perusteet - Database basics
-- Harjoitustyö 2.vaihe kysely 2C
-- pyry.j.laine@tuni.fi

SELECT DISTINCT ohjaaja.otunnus, ohjaaja.onimi
FROM (((ohjaaja INNER JOIN voi_ohjata ON ohjaaja.otunnus = voi_ohjata.otunnus)
		voi_ohjata INNER JOIN rltunti ON voi_ohjata.rltunnus = rltunti.rltunnus)
		rltunti INNER JOIN kategoria ON rltunti.ktunnus = kategoria.ktunnus)
WHERE knimi = 'Spinning'

INTERSECT

SELECT DISTINCT ohjaaja.otunnus, ohjaaja.onimi
FROM (((ohjaaja INNER JOIN voi_ohjata ON ohjaaja.otunnus = voi_ohjata.otunnus)
		voi_ohjata INNER JOIN rltunti ON voi_ohjata.rltunnus = rltunti.rltunnus)
		rltunti INNER JOIN kategoria ON rltunti.ktunnus = kategoria.ktunnus)
WHERE knimi = 'Kehonhuolto'