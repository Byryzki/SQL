-- Tietokantojen perusteet 2020
-- T1.2
-- Alexandre Lotta 050003280

SELECT vnimi
FROM vuori INNER JOIN kiipeilymatka
	ON kiipeilymatka.vtunnus = vuori.vtunnus
	INNER JOIN osallistuu
	ON kiipeilymatka.kmtunnus = osallistuu.kmtunnus
WHERE osallistuu.ktaito = 'erinomainen' 
EXCEPT
SELECT vnimi
FROM vuori INNER JOIN kiipeilymatka
	ON kiipeilymatka.vtunnus = vuori.vtunnus
	INNER JOIN osallistuu
	ON kiipeilymatka.kmtunnus = osallistuu.kmtunnus
WHERE osallistuu.ktaito <> 'erinomainen' 
ORDER BY vnimi;