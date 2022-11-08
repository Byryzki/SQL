-- Tietokantojen perusteet - Database basics
-- Harjoitustyö 2.vaihe kysely 1B
-- pyry.j.laine@tuni.fi

SELECT viikonpaiva, alkamisaika, rlnimi, kesto, taso
FROM ((kategoria INNER JOIN rltunti ON kategoria.ktunnus = rltunti.ktunnus)
	rltunti INNER JOIN ljtunti ON rltunti.rltunnus = ljtunti.rltunnus)
WHERE kategoria.knimi = 'Kehonhuolto' AND (kesto >= 60 OR taso = 2)
ORDER BY viikonpaiva, alkamisaika, rlnimi;

