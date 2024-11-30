-- CREATE FOUR TABLES THAT ARE INTER CONNECTED WITH EACH OTHER

-- ARTIST TABLE, ALL THE ARTIST ARE IN THIS TABLE.
CREATE TABLE artist(id SERIAL, name VARCHAR(128) UNIQUE, PRIMARY KEY(id));

-- ALBUM TABLE, ALL THE ALBUM'S ARE PLACED HERE AND ALSO IT EXNTENDS TH ID FROM ARTIST TABLE AS ARTIST_ID AS A FOREIGN KEY
-- ON DELETE CACSCADE, MEANS THAT DELETE DATA FROM THIS TABLE IF IT GETS DELETED FRON THE PARENT TRABLE 
CREATE TABLE album(id SERIAL, title VARCHAR(128) UNIQUE, artist_id INTEGER REFERENCES artist(id) ON DELETE CASCADE, PRIMARY KEY(id));

-- GENRE TABLE
CREATE TABLE genre(id SERIAL, name VARCHAR(128) UNIQUE, PRIMARY KEY(id));

-- TRACK TABLE, IT HAS TWO FOREIGN KEYS THAT ARE ALBUM_ID AND GENRE_ID.
CREATE TABLE track(id SERIAL, title VARCHAR(128), len INTEGER, rating INTEGER, count INTEGER, album_id INTEGER REFERENCES album(id) ON DELETE CASCADE, genre_id INTEGER REFERENCES genre(id) ON DELETE CASCADE, UNIQUE(title, album_id), PRIMARY KEY(id));


-- INSERT DATA INTO THESE TABLES
-- IN ARTIST TABLE, 
INSERT INTO artist(name) VALUES('Led Zeppelin');
INSERT INTO artist(name) VALUES('AC/DC');

-- IN ALBUM TABLE
INSERT INTO album(title, artist_id) VALUES ('Who Made Who', 2);
INSERT INTO album(title, artist_id) VALUES ('IV', 1);

-- IN GENRE TABLE
INSERT INTO genre(name) VALUES('Rock');
INSERT INTO genre(name) VALUES('Metal');

-- IN TRACK TABLE
INSERT INTO track(title, rating, len, count, alnum_id, genre_id) VALUES('Black Dog', 5, 297, 0, 2, 1);
INSERT INTO track (title, rating, len, count, album_id, genre_id) VALUES('ABOUT to Rock', 5, 313, 0, 1, 2);
INSERT INTO track (title, rating, len, count, album_id, genre_id) VALUES('Stairway', 5, 482, 0, 2, 1);
INSERT INTO track (title, rating, len, count, album_id, genre_id) VALUES('Who Made Who', 5, 207, 0, 1, 2);


-- JOINS

-- INNER JOINS
-- JOINING BASED ON ARTIST ID AND ALBUM ID
SELECT album.title, artist.name FROM album JOIN artist ON album.artist_id = artist.id;

SELECT album.title, album.artist_id, artist.id, artist.name FROM album inner JOIN artist ON album.artist_id = artist.id;

-- JOINING ALL THE TABLES
SELECT track.title, artist.name, album.title, genre.name FROM track JOIN genre ON track.genre_id = genre.id Join album ON track.album_id = album.id JOIN artist ON album.artist_id = artist.id;

-- CROSS JOINS
-- JOIN EVERY POSSIBLE RELATION
SELECT track.title, track.genre_id, genre.id, genre.name FROM track CROSS JOIN genre; 
SELECT track.title, artist.name, album.title, genre.name FROM track CROSS JOIN genre CROSS JOIN album CROSS JOIN artist;