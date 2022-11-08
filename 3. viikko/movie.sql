-- CREATE TABLE and INSERT INTO statements for movie table

CREATE TABLE movie(
id INT,
name VARCHAR(50) NOT NULL,
predecessor_id INT,
PRIMARY KEY (id),
UNIQUE (name),
FOREIGN KEY (predecessor_id) REFERENCES movie);

INSERT INTO movie VALUES (1, 'The Hobbit: An Unexpected Journey', NULL);
INSERT INTO movie VALUES (2, 'The Hobbit: The Desolation of Smaug', 1);
INSERT INTO movie VALUES (3, 'The Hobbit: The Battle of the Five Armies', 2);

/*
id          name                                        predecessor_id
----------  ------------------------------------------  --------------
1           The Hobbit: An Unexpected Journey
2           The Hobbit: The Desolation of Smaug         1
3           The Hobbit: The Battle of the Five Armies   2
*/