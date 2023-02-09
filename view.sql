CREATE VIEW HarryStylesAfterHoursPopMusic AS
SELECT music_name
FROM music, artist, album, genre
WHERE music.fk_artist_id_artist = artist.id_artist
AND music.fk_album_id_album = album.id_album
AND music.fk_genre_id_genre = genre.id_genre
AND artist.artist_name = 'harry styles'
AND album.album_name = 'after hours'
AND genre.genre_name = 'pop';

SELECT *
FROM HarryStylesAfterHoursPopMusic;

CREATE VIEW GenresBefore2020 AS
SELECT genre_name
FROM genre
WHERE id_genre IN (
  SELECT fk_genre_id_genre
  FROM music
  WHERE fk_album_id_album IN (
    SELECT id_album
    FROM album
    WHERE album_creation_date < '2020-01-01'::date
  )
);

SELECT *
FROM GenresBefore2020;

CREATE VIEW RnBProducersBefore2020 AS
SELECT artist.artist_name
FROM artist
JOIN album ON artist.id_artist = album.fk_producer_id_producer
JOIN music ON album.id_album = music.fk_album_id_album
JOIN genre ON music.fk_genre_id_genre = genre.id_genre
WHERE genre.genre_name = 'r&b' AND album.album_creation_date < '01-01-2020'::date
GROUP BY artist.artist_name;

SELECT *
FROM RnBProducersBefore2020;

CREATE VIEW IndieArtists WITH (date_of_birth) AS
SELECT artist_name, date_of_birth
FROM artist
JOIN music ON artist.id_artist = music.fk_artist_id_artist
JOIN genre ON music.fk_genre_id_genre = genre.id_genre
WHERE genre_name = 'indie';

SELECT *
FROM IndieArtists;