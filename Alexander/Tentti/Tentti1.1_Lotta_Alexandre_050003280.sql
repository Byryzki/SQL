-- Tietokantojen perusteet 2020
-- T1.1
-- Alexandre Lotta 050003280

SELECT kmnimi, vuosi, vuoristo
FROM kiipeilymatka INNER JOIN vuori
	ON kiipeilymatka.vtunnus = vuori.vtunnus
WHERE vuori.korkeus > '6000' AND kiipeilymatka.tvaativuus = 'helppo'

UNION

SELECT kmnimi, vuosi, vuoristo
FROM kiipeilymatka INNER JOIN vuori
	ON kiipeilymatka.vtunnus = vuori.vtunnus
WHERE vuori.korkeus > '6000' AND kiipeilymatka.tvaativuus = 'kohtalainen'

ORDER BY kiipeilymatka.kmnimi, kiipeilymatka.vuosi;