-- Tietokantojen perusteet - Database basics
-- H6 T3
-- pyry.j.laine@tuni.fi

INSERT INTO kategoria VALUES (
	1, 'Lihaskunto'
);
INSERT INTO kategoria VALUES (
	2, 'Kehonhuolto'
);
INSERT INTO kategoria VALUES (
	3, 'Spinning'
);

INSERT INTO rltunti VALUES (
	1, 'Muokkaus', 'Muokataan lihaksia', 45, 2, 1
);
INSERT INTO rltunti VALUES (
	2, 'Joogan perusteet', 'Opetellaan joogaa', 50, 1, 2
);
INSERT INTO rltunti VALUES (
	3, 'Jooga 1', 'Jatketaan joogaamista', 50, 2, 2
);
INSERT INTO rltunti VALUES (
	4, 'Pilates 1', 'Opetellaan pilatesta', 60, 2, 2
);
INSERT INTO rltunti VALUES (
	5, 'Spinning alkeet', 'Poljetaan', 60, 1, 3
);
INSERT INTO rltunti VALUES (
	6, 'Spinnig pro', 'Raskaita osuuksia ja tiukkoja spurtteja', 80, 4, 3
);

INSERT INTO ohjaaja VALUES (
	1, 'Elisa Markkanen', 1986-01-21
);
INSERT INTO ohjaaja VALUES (
	2, 'Eero Ilonen', 1988-03-14
);
INSERT INTO ohjaaja VALUES (
	3, 'Mikko Kontinen', 1977-11-01
);

INSERT INTO voi_ohjata VALUES (
	1, 3
);
INSERT INTO voi_ohjata VALUES (
	1, 5
);
INSERT INTO voi_ohjata VALUES (
	1, 6
);
INSERT INTO voi_ohjata VALUES (
	2, 2
);
INSERT INTO voi_ohjata VALUES (
	2, 3
);
INSERT INTO voi_ohjata VALUES (
	2, 4
);
INSERT INTO voi_ohjata VALUES (
	3, 5
);
INSERT INTO voi_ohjata VALUES (
	3, 6
);

INSERT INTO sali VALUES (
	1, 'Sali 1', 25
);
INSERT INTO sali VALUES (
	2, 'Spinnign-sali', 20
);
INSERT INTO sali VALUES (
	3, 'Sali 3', 20
);

INSERT INTO ljtunti VALUES (
	3, 'maanantai', '08:10', '09:00', 10, 1, 3
);	
INSERT INTO ljtunti VALUES (
	3, 'maanantai', '13:00', '13:50', 15, 1, 1
);
INSERT INTO ljtunti VALUES (
	3, 'maanantai', '20:10', '21:00', 10, 1, 3
);
INSERT INTO ljtunti VALUES (
	3, 'tiistai', '08:10', '09:00', 15, 2, 1
);
INSERT INTO ljtunti VALUES (
	4, 'maanantai', '08:00', '09:00', 15, 2, 1
);
INSERT INTO ljtunti VALUES (
	6, 'maanantai', '07:00', '08:20', 20, 3, 2
);
INSERT INTO ljtunti VALUES (
	5, 'maanantai', '10:45', '11:45', 20, 3, 2
);
INSERT INTO ljtunti VALUES (
	6, 'perjantai', '14:00', '15:20', 20, 1, 2
);