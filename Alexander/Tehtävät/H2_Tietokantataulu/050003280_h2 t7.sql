-- Tietokantojen perusteet 2020
-- H2 T7
-- Alexandre.Lotta@tuni.fi (tuni-osoite)



SELECT first_name, last_name, artist.artist_id, artwork_id, artwork_name
 FROM artist LEFT OUTER JOIN artwork 
    ON artwork.artist_id = artist.artist_id

 ORDER BY artist.artist_id, artwork_id;




