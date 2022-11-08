-- Tietokantojen perusteet 2020
-- H3 T3
-- Alexandre.Lotta@tuni.fi (tuni-osoite)



SELECT DISTINCT  book.title, book1.title AS sequel_title
 FROM book LEFT OUTER JOIN book as book1
 ON book.id = book1.predecessor_id
 ORDER BY book.id




