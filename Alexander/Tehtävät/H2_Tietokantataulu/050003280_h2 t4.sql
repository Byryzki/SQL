-- Tietokantojen perusteet 2020
-- H2 T4
-- Alexandre.Lotta@tuni.fi (tuni-osoite)


SELECT year, exhibition_name, first_name, last_name, artwork_name
FROM artist, artwork, exhibition, displayed_at
WHERE artwork.artist_id = artist.artist_id and exhibition.exhibition_id = displayed_at.exhibition_id and displayed_at.artwork_id = artwork.artwork_id
ORDER BY year, artist.last_name;




