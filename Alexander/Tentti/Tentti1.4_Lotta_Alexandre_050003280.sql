-- Tietokantojen perusteet 2020
-- T1.4
-- Alexandre Lotta 050003280

SELECT sukunimi, etunimi, tk_sukunimi, tk_etunimi, matka, kiipeilymatka.kmnimi AS matka
FROM osallistuu INNER JOIN kiipeilymatka
	ON kiipeilymatka.kmtunnus = osallistuu.kmtunnus
	INNER JOIN kiipeilija
	ON osallistuu.ktunnus = kiipeilija.ktunnus
WHERE sukunimi <>(SELECT sukunimi
ORDER BY kiipeilija.sukunimi,kiipeilija.etunimi, tk_sukunimi,tk_etunimi, kiipeilymatka.kmnimi;  