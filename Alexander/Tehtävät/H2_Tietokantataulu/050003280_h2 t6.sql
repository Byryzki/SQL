-- Tietokantojen perusteet 2020
-- H2 T6
-- Alexandre.Lotta@tuni.fi (tuni-osoite)



SELECT DISTINCT artwork.artwork_id, artwork_name
 FROM artwork, displayed_at
 WHERE displayed_at.artwork_id = artwork.artwork_id
 ORDER BY artwork.artwork_id;




