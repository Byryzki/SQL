-- Tietokantojen perusteet 2020
-- H2 T2
-- Alexandre.Lotta@tuni.fi (tuni-osoite)

SELECT artwork_id, artwork_name, first_name, last_name, year_created
 FROM artist, artwork
 WHERE artist.artist_id = artwork.artist_id
 ORDER BY artwork_id;