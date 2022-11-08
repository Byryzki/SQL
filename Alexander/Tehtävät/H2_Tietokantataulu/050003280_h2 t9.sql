-- Tietokantojen perusteet 2020
-- H2 T9
-- Alexandre.Lotta@tuni.fi (tuni-osoite)



SELECT artwork.artwork_id, artwork_name
 FROM ((artwork LEFT OUTER JOIN displayed_at
        ON artwork.artwork_id = displayed_at.artwork_id)
         LEFT OUTER JOIN exhibition ON displayed_at.exhibition_id = exhibition.exhibition_id)
 WHERE displayed_at.exhibition_id IS NULL
 ORDER BY artwork.artwork_id;



