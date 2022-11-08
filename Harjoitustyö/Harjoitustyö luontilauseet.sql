-- Tietokantojen perusteet - Database basics
-- H6 T3
-- pyry.j.laine@tuni.fi

PRAGMA foreign_keys = ON;

CREATE TABLE rltunti (
	rltunnus INT,
	rlnimi VARCHAR(30),
	kuvaus VARCHAR(30),
	kesto INT,
	taso INT,
	ktunnus INT,
	PRIMARY KEY(rltunnus),
	UNIQUE(rlnimi),
	FOREIGN KEY (ktunnus) REFERENCES kategoria
);

CREATE TABLE kategoria (
	ktunnus INT,
	knimi VARCHAR(30),
	PRIMARY KEY (ktunnus),
	UNIQUE (knimi)
);

CREATE TABLE voi_ohjata (
	otunnus INT,
	rltunnus INT,
	PRIMARY KEY (otunnus, rltunnus),
	FOREIGN KEY (otunnus) REFERENCES ohjaaja,
	FOREIGN KEY (rltunnus) REFERENCES rltunti
);

CREATE TABLE ljtunti (
	rltunnus INT,
	viikonpaiva VARCHAR(30),
	alkamisaika VARCHAR(30),
	paattymisaika VARCHAR(30),
	maxosallistujalkm INT,
	otunnus INT,
	stunnus INT,
	PRIMARY KEY (rltunnus, viikonpaiva, alkamisaika),
	FOREIGN KEY (rltunnus) REFERENCES rltunti,
	FOREIGN KEY (otunnus) REFERENCES ohjaaja,
	FOREIGN KEY (stunnus) REFERENCES sali
);

CREATE TABLE ohjaaja (
	otunnus INT,
	onimi VARCHAR(30),
	syntymaaika VARCHAR(30),
	PRIMARY KEY (otunnus)
);

CREATE TABLE sali (
	stunnus INT,
	snimi VARCHAR(30),
	paikkalkm INT,
	PRIMARY KEY (stunnus),
	UNIQUE (snimi)
);
