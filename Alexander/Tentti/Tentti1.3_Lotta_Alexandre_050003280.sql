-- Tietokantojen perusteet 2020
-- T1.3
-- Alexandre Lotta 050003280

SELECT  kiipeilija.ktunnus, sukunimi, COUNT(kiipeilymatka.kmtunnus) AS matkoja_lkm, COUNT(DISTINCT vtunnus) AS vuoria_lkm
FROM kiipeilija LEFT OUTER JOIN  osallistuu
         ON kiipeilija.ktunnus= osallistuu.ktunnus
         LEFT OUTER JOIN kiipeilymatka
         ON osallistuu.kmtunnus = kiipeilymatka.kmtunnus

GROUP BY kiipeilija.ktunnus
ORDER BY kiipeilija.ktunnus;