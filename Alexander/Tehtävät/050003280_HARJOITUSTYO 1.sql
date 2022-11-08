-- Tietokantojen perusteet 2020
-- HARJOITUSTYO OSA2
-- Alexandre.Lotta@tuni.fi (tuni-osoite)


CREATE TABLE tuotemerkki (
    tmtunnus VARCHAR (30),
    tmini VARCHAR(30),
    maa,
    PRIMARY KEY (tmtunnus)
	UNIQUE (tmini)
);

CREATE TABLE tuote (
	ttunnus,
	tnimi,
	kuvaus,
	hinta,
	tmtunnus,
	PRIMARY KEY (ttunnus),
	UNIQUE (tnimi),
	FOREIGN KEY (tmtunnus) REFERENCES tuotmerkki (tmtunnus));
	
CREATE TABLE tuote_kategoria(
	ttunnus,
	ktunnus,
	PRIMARY KEY (ttunnus),
	PRIMARY KEY (ktunnus),
	FOREIGN KEY (ttunnus) REFERENCES tuote(ttunnus),
	FOREIGN KEY (ktunnus) REFERENCES kategoria(ktunnus));
	
CREATE TABLE kategoria(
	ktunnus,
	knimi,
	PRIMARY KEY (ktunnus),
	PRIMARY KEY (knimi)
	);
	
CREATE TABLE arviointi(
	katunnus,
	ttunnus,
	paivamaara,
	arvosana,
	arvio,
	PRIMARY KEY (katunnus),
	PRIMARY KEY (ttunnus),
	PRIMARY KEY (paivamaara),
	FOREIGN KEY (katunnus) REFERENCES kayttaja(katunnus),
	FOREIGN KEY (ttunnus) REFERENCES tuote(tnimi)
	);
	
CREATE TABLE arviointi(
	katunnus,
	kanimi,
	sukupuoli,
	syntymavuosi,
	PRIMARY KEY (katunnus),
	UNIQUE (kanimi)
	);
	
INSERT INTO kayttaja
	VALUES ('1', 'ANNI N', ' NAINEN', 1985);
	
INSERT INTO kayttaja
	VALUES ('2', 'JUUSO K', ' MIES', 1990);
	
INSERT INTO kayttaja
	VALUES ('3', 'EINO U', ' MIES', 1940);
	
INSERT INTO kayttaja
	VALUES ('4', 'ALIA J', ' NAINEN', 1953);
	
INSERT INTO kategoria
	VALUES ('10', 'puutarha' );
	
INSERT INTO kategoria
	VALUES ('11', 'metsa' );
	
INSERT INTO kategoria
	VALUES ('12', 'lumityot' );
	
INSERT INTO tuotemerkki
	VALUES ('20', 'McCee', 'YHDYSVALLAT' );
	
INSERT INTO tuotemerkki
	VALUES ('21', 'KOOTEK', 'SUOMI' );
	
INSERT INTO tuote
	VALUES ('30', 'TRIMMERI TRCEE', 'TEHOKAS 4-THATINEN', '179.00', '20' );
	
INSERT INTO tuote
	VALUES ('31', 'TRIMMERISIIMA CEE', 'LAADUKAS SIIMA', '6.99', '20' );
	
INSERT INTO tuote
	VALUES ('32', 'MOOTTORISAHA MSCEE RR', 'ROBUSTI RASKAS', '559.00', '20' );
	
INSERT INTO tuote
	VALUES ('33', 'TRIMMERISIIMA Y', 'YLEISIIMA', '3.99', '21' );
	
INSERT INTO tuote
	VALUES ('34', 'LAPIO L', 'KEVYT YLEISLAPIO', '23.95', '21' );
	
INSERT INTO tuote_kategoria
	VALUES ('30', '10');
	
INSERT INTO tuote_kategoria
	VALUES ('31', '10');
	
INSERT INTO tuote_kategoria
	VALUES ('32', '10');
	
INSERT INTO tuote_kategoria
	VALUES ('32', '11');
	
INSERT INTO tuote_kategoria
	VALUES ('33', '10');
	
INSERT INTO tuote_kategoria
	VALUES ('34', '10');
	
INSERT INTO tuote_kategoria
	VALUES ('34', '12');
	
INSERT INTO arviointi
	VALUES ('1', '30', '2017-06-05', '3');
	
INSERT INTO arviointi
	VALUES ('1', '31', '2017-06-13', '2');
	
INSERT INTO arviointi
	VALUES ('1', '34', '2017-07-24', '3');
	
INSERT INTO arviointi
	VALUES ('1', '33', '2017-08-13', '4');
	
INSERT INTO arviointi
	VALUES ('1', '30', '2017-09-12', '5', 'LUOTETTAVA JA TOIMIVA KAPISTUS');
	
INSERT INTO arviointi
	VALUES ('3', '30', '2017-06-30', '5', 'LOISTAVA');
	
INSERT INTO arviointi
	VALUES ('3', '31', '2017-07-02', '2', 'KOHTALAISESTI TOIMII');
	
INSERT INTO arviointi
	VALUES ('2', '34', '2017-06-04', '1', 'RAHASTUSTA');
	
INSERT INTO arviointi
	VALUES ('4', '34', '2017-08-11', '1', 'EI TEE MITAAN');
	
