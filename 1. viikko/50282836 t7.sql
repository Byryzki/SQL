-- Tietokantojen perusteet - Database basics
-- H1 T7
-- 50282836 pyry.j.laine@tuni.fi

CREATE TABLE tea (
	id INT,
	name TEXT,
	price REAL,
	category TEXT,
	PRIMARY KEY(id)
);

INSERT INTO tea (id, name, price)
VALUES(8, 'Pale Flamingo', 6.75);