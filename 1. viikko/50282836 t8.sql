-- Tietokantojen perusteet - Database basics
-- H1 T1
-- 50282836 pyry.j.laine@tuni.fi

CREATE TABLE tea (
	id INT,
	name TEXT,
	price REAL,
	category TEXT,
	PRIMARY KEY(id)
);

UPDATE tea
SET category = 'GREEN'
WHERE category = 'green';
