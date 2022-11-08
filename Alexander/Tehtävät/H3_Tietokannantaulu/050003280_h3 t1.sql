-- Tietokantojen perusteet 2020
-- H3 T1
-- Alexandre.Lotta@tuni.fi (tuni-osoite)



SELECT DISTINCT  book.title, book1.title AS predecessor_title
 FROM book, book as book1
 WHERE book.predecessor_id = book1.id
 ORDER BY book.id




