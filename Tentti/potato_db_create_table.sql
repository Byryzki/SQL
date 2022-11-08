-- Simplified, fictitious potato database
-- Yksinkertaistettu, kuvitteellinen perunatietokanta

PRAGMA foreign_keys = ON;

-- potato varieties, perunalajikkeita

CREATE TABLE potato (
    potato_id INT,
    potato_name VARCHAR(30) NOT NULL,
    potato_type VARCHAR(30),
    introduction_year INT,
    PRIMARY KEY (potato_id),
    UNIQUE (potato_name)
);

-- dish types, ruokalajityyppejä

CREATE TABLE dish_type (
    dish_type_id INT,
    dish_type_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (dish_type_id),
    UNIQUE (dish_type_name)
);


-- table is_suitable_for tells which potato variety is suitable for which type of dish
-- taulu is_suitable_for kertoo, mikä perunalajike sopii millekin ruokalajityypille
 
CREATE TABLE is_suitable_for (
    potato_id INT,
    dish_type_id INT,
    PRIMARY KEY (potato_id, dish_type_id),
    FOREIGN KEY (potato_id) REFERENCES potato,
    FOREIGN KEY (dish_type_id) REFERENCES dish_type
);


-- potato breeders, perunankasvattajia

CREATE TABLE breeder (
    breeder_id INT,
    breeder_name VARCHAR(30) NOT NULL,
    country VARCHAR(30) NOT NULL,
    PRIMARY KEY (breeder_id),
    UNIQUE (breeder_name)
);

-- potato breeders breed varieties for a certain amount per year (tonnes_per_year)
-- perunankasvattajat kasvattavat lajikkeita tietyn määrän vuodessa (tonnes_per_year)

CREATE TABLE breeds (
    breeder_id INT,
    potato_id INT,
    tonnes_per_year NUMERIC(8,1),
    PRIMARY KEY (breeder_id, potato_id),
    FOREIGN KEY (breeder_id) REFERENCES breeder,
    FOREIGN KEY (potato_id) REFERENCES potato
);


-- Potato varieties - Perunalajikkeita

INSERT INTO potato VALUES (
    1, 'Dunbar Rover', 'floury', 1936
);

INSERT INTO potato VALUES (
    2, 'Bambino', 'waxy', 2005
);

INSERT INTO potato VALUES (
    3, 'Blue Annelise', 'smooth', 2007
);

INSERT INTO potato VALUES (
    4, 'Duke of York', 'smooth', 1891
);

INSERT INTO potato VALUES (
    5, 'Cara', 'floury', 1973
);

-- dish types - ruokalajityyppejä

INSERT INTO dish_type VALUES (
    1, 'mash'
);

INSERT INTO dish_type VALUES (
    2, 'boiling'
);

INSERT INTO dish_type VALUES (
    3, 'salad'
);

INSERT INTO dish_type VALUES(
    4, 'chips'
);

INSERT INTO dish_type VALUES(
    5, 'baking'
);

-- is_suitable for

INSERT INTO is_suitable_for VALUES(
    1, 1
);

INSERT INTO is_suitable_for VALUES(
    2, 2
);

INSERT INTO is_suitable_for VALUES(
    2, 3
);

INSERT INTO is_suitable_for VALUES(
    3, 2
);

INSERT INTO is_suitable_for VALUES(
    3, 3
);

INSERT INTO is_suitable_for VALUES(
    4, 2
);

INSERT INTO is_suitable_for VALUES(
    5, 4
);

-- breeders

INSERT INTO breeder VALUES(
    1, 'Chips', 'Sweden'
);

INSERT INTO breeder VALUES(
    2, 'Sipsix', 'Finland'
);

INSERT INTO breeder VALUES(
    3, 'Kartoffelmeister', 'Germany'
);

INSERT INTO breeder VALUES(
    4, 'Penan pottu', 'Finland'
);

-- breeds
INSERT INTO breeds VALUES(
    1, 1, 70.0
);

INSERT INTO breeds VALUES(
    1, 4, 80.0
);

INSERT INTO breeds VALUES(
    1, 5, 76.0
);

INSERT INTO breeds VALUES(
    2, 2, 30.0
);

INSERT INTO breeds VALUES(
    2, 3, 50.0
);

INSERT INTO breeds VALUES(
    3, 4, 134.0
);

INSERT INTO breeds VALUES(
    4, 1, 22.0
);