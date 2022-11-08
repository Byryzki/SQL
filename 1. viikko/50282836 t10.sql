-- Tietokantojen perusteet - Database basics
-- H1 T10
-- 50282836 pyry.j.laine@tuni.fi

CREATE TABLE shoe (
	id INT NO NULL,
	name TEXT NO NULL,
	type TEXT,
	price REAL,
	PRIMARY KEY(id),
	UNIQUE(name)
);

INSERT INTO shoe
VALUES(1, 'X 10', 'sprint', 79.95);

INSERT INTO shoe
VALUES(4, 'ABC 101', 'sprint', 124.95);

INSERT INTO shoe
VALUES(6, 'ABC 201', 'long jump', 159.00);

INSERT INTO shoe
VALUES(7, 'X 20', 'middle-distance', NULL);