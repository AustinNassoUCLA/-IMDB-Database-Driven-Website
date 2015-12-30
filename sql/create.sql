CREATE TABLE Movie
(
	id INT NOT NULL, /*Movie must have an id*/
	title VARCHAR(100) NOT NULL, /*Movie must have a title*/
	year INT NOT NULL, /*Movie must have a year*/
	rating VARCHAR(10),
	company VARCHAR (50) NOT NULL, /*Movie must have a company*/
	PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE Actor
(
	id INT NOT NULL, /*Actor must have an id*/
	last VARCHAR(20) NOT NULL, /*Actor must have a last name*/
	first VARCHAR(20) NOT NULL, /*Actor must have a first name*/
	sex VARCHAR(6) NOT NULL, /*Actor must have a sex*/
	dob DATE NOT NULL, /*Actor must have a date of birth*/
	dod DATE,
	PRIMARY KEY (id),
	CHECK ((dod IS NOT NULL and dob IS NOT NULL and dob<dod) or dod IS NULL) /*Actor must either have a date of death that is greater than date of birth or not have a date of death at all*/
) ENGINE=INNODB;

CREATE TABLE Director
(
	id INT NOT NULL, /*Director must have an id*/
	last VARCHAR(20) NOT NULL, /*Director must have a last name*/
	first VARCHAR(20) NOT NULL, /*Director must have a first name*/
	dob DATE NOT NULL, /*Director must have a date  of birth*/
	dod DATE,
	PRIMARY KEY (id),
	CHECK ((dod IS NOT NULL and dob IS NOT NULL and dob<dod) or dod IS NULL) /*Director must either have a date of death that is greater than date of birth or not have a date of death at all*/
) ENGINE=INNODB;

CREATE TABLE MovieGenre
(
	mid INT NOT NULL, /*Movie ID must not be null*/
	genre VARCHAR(20) NOT NULL, /*Movie must have a genre*/
	PRIMARY KEY (mid, genre), /*Movie ID and its genre must be unique*/
	FOREIGN KEY (mid) REFERENCES Movie (id) /*Movie ID is the same as ID in Movie Table*/
) ENGINE=INNODB;

CREATE TABLE MovieDirector
(
	mid INT NOT NULL, /*Movie ID must not be null*/
	did INT NOT NULL, /*Director ID must not be null*/
	PRIMARY KEY(mid, did), /*Movie ID and Director ID must be unique*/
	FOREIGN KEY (mid) REFERENCES Movie (id), /*Movie ID is the same as ID in Movie Table*/
	FOREIGN KEY (did) REFERENCES Director (id) /*Director ID is the same as ID in Director Table*/
) ENGINE=INNODB;

CREATE TABLE MovieActor
(
	mid INT NOT NULL, /*Movie ID must not be null*/
	aid INT NOT NULL, /*Actor ID must not be null*/
	role VARCHAR(50),
	PRIMARY KEY(mid, aid), /*Movie ID and Actor ID must be unique*/
	FOREIGN KEY (mid) REFERENCES Movie (id), /*Movie ID is the same as ID in Movie Table*/
	FOREIGN KEY (aid) REFERENCES Actor (id) /*Actor ID is the same as ID in Actor Table*/
) ENGINE=INNODB;

CREATE TABLE Review
(
	name VARCHAR(20) NOT NULL, /*Name must not ne null*/
	time TIMESTAMP NOT NULL, /*Timestamp must not be null*/
	mid INT NOT NULL, /*Movie ID must not be null*/
	rating INT NOT NULL, /*rating must not be null*/
	comment VARCHAR(50),
	PRIMARY KEY(name, mid), /*Name and Movie ID must be unique*/
	FOREIGN KEY (mid) REFERENCES Movie (id), /*Movie ID is the same as ID in Movie Table*/
	CHECK (rating <= 5 AND rating >= 0) /*Rating must lie between 0 and 5*/
) ENGINE=INNODB;

CREATE TABLE MaxPersonID
(
	id INT NOT NULL /*ID must not be null*/
) ENGINE=INNODB;

CREATE TABLE MaxMovieID
(
	id INT NOT NULL /*ID must not be null*/
) ENGINE=INNODB;