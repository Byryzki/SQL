-- Tietokantojen perusteet - Database basics
-- H1 T9
-- 50282836 pyry.j.laine@tuni.fi

CREATE TABLE tea (
	id INT,
	name TEXT,
	price REAL,
	category TEXT,
	PRIMARY KEY(id)
);

DELETE FROM tea
WHERE category = 'yellow';
