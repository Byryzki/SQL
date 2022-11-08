-- Tietokantojen perusteet 2020
-- T1.2
-- Alexandre Lotta 050003280

CREATE TABLE kurssit (
	ktunnus INT,
    kurssinimi VARCHAR (20) NOT NULL,
    suorituspvm DATE NOT NULL,
    suorituspaikka VARCHAR (40) NOT NULL,
    PRIMARY KEY (ktunnus)
	FOREIGN KEY (ktnunus) REFERENCES kiipeilija
);