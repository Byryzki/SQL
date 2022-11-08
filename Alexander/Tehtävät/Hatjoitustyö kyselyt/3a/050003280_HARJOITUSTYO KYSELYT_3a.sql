-- Tietokantojen perusteet 2020
-- KYSELYT 3a
-- Alexandre.Lotta@tuni.fi (tuni-osoite)

 SELECT tuote.tnimi, tuote.hinta
 FROM  tuote
 WHERE tuote.hinta = (SELECT MIN (tuote.hinta) FROM tuote);

