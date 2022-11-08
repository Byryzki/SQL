-- Tietokantojen perusteet - Database basics
-- Harjoitustyö 2.vaihe kysely 2C
-- pyry.j.laine@tuni.fi

SELECT rlnimi, kesto, knimi
FROM (kategoria INNER JOIN rltunti ON kategoria.ktunnus = rltunti.ktunnus)
WHERE kategoria.knimi = 'Kehonhuolto'
	AND kesto = (SELECT MIN(kesto)
		FROM (kategoria INNER JOIN rltunti ON kategoria.ktunnus = rltunti.ktunnus)
		WHERE kategoria.knimi = 'Kehonhuolto' )
ORDER BY rlnimi;