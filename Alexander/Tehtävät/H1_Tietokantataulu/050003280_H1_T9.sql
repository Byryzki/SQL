CREATE TABLE piikkari (
	Tunnus INT
    nimi VARCHAR(30) NOT NULL,
    tyyppi,
	hinta,
    PRIMARY KEY (Tunnus)
	UNIQUE (nimi)
);

INSERT INTO piikkari
VALUES (1,'X 10', 'pikajuoksu', 79.95);

INSERT INTO piikkari
VALUES (4,'ABC 101', 'pikajuoksu', 124.95);

INSERT INTO piikkari
VALUES (6,'ABC 201', 'hyppy', 159.00);

INSERT INTO piikkari
VALUES (7,'X 20', 'keskimatka');


-- Tietokantojen perusteet 2020
-- H1 T9
-- Alexandre.Lotta@tuni.fi (tuni-osoite)

SELECT ...