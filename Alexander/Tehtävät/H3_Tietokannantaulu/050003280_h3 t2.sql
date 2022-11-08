-- Tietokantojen perusteet 2020
-- H3 T2
-- Alexandre.Lotta@tuni.fi (tuni-osoite)



SELECT DISTINCT  book.title, book1.title AS predecessor_title
 FROM book LEFT OUTER JOIN book as book1
 ON book.predecessor_id = book1.id
 ORDER BY book.id


