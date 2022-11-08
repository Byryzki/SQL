-- Tietokantojen perusteet 2020
-- H2 T5
-- Alexandre.Lotta@tuni.fi (tuni-osoite)




SELECT artwork.artwork_id, artwork_name, technique
FROM artwork, displayed_at
WHERE displayed_at.exhibition_id = '3' and artwork.artwork_id = displayed_at.artwork_id
ORDER BY artwork.artwork_id;


