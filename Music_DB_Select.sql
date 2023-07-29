/*К Заданию 1*/
SELECT * FROM Genre;
SELECT * FROM Artist;
SELECT * FROM Album;
SELECT * FROM Track;
SELECT * FROM Collection;

SELECT * FROM ArtistAlbum;
SELECT * FROM ArtistGenre;
SELECT * FROM CollectionTracks;

SELECT track_title, artist_name, album_title, collection_title, genre_title FROM Track t
LEFT JOIN CollectionTracks ct ON t.track_id = ct.track_id
LEFT JOIN Collection c ON ct.col_id = c.collection_id
JOIN Album al ON t.track_album_id = al.album_id
JOIN ArtistAlbum aal ON al.album_id = aal.alb_id
JOIN Artist a ON aal.art_id = a.artist_id
JOIN ArtistGenre ag ON a.artist_id = ag.art_id
JOIN Genre g ON ag.gen_id = g.genre_id
ORDER BY artist_name;

/* Задание 2*/
SELECT track_title, track_lenght FROM Track
WHERE track_lenght = (SELECT MAX (track_lenght) FROM Track);

SELECT track_title, track_lenght FROM Track
WHERE track_lenght >= 210;

SELECT collection_title, collection_year FROM Collection
WHERE collection_year BETWEEN 2018 AND 2020;

SELECT artist_name FROM Artist
WHERE artist_name NOT LIKE '% %';

SELECT track_title FROM Track
WHERE track_title LIKE '%мой%' OR track_title LIKE '%Мой%' OR track_title LIKE '%my%' OR track_title LIKE '%My%';

/* Задание 3*/
SELECT genre_title, COUNT (art_id) artist_q FROM Genre AS g
JOIN ArtistGenre AS a ON g.genre_id = a.gen_id 
GROUP BY g.genre_title;

SELECT COUNT (*) FROM Track t
JOIN Album a ON t.track_album_id = a.album_id
WHERE a.album_year >= 2019 AND album_year <= 2020;

SELECT album_title, AVG(t.track_lenght) FROM Album a
JOIN Track t ON a.album_id = t.track_album_id
GROUP BY a.album_title;

SELECT DISTINCT artist_name FROM Artist a
JOIN ArtistAlbum a2 ON a.artist_id = a2.art_id
JOIN Album al ON a2.alb_id = al.album_id
WHERE artist_name != (
	SELECT artist_name FROM Artist a
	JOIN ArtistAlbum a2 ON a.artist_id = a2.art_id
	JOIN Album al ON a2.alb_id = al.album_id
	WHERE al.album_year = 2020);
	
SELECT DISTINCT collection_title FROM Collection c
JOIN CollectionTracks ct ON c.collection_id = ct.col_id
JOIN Track t ON ct.track_id = t.track_id
JOIN Album al ON t.track_album_id = al.album_id
JOIN ArtistAlbum aal ON al.album_id = aal.alb_id
JOIN Artist a ON aal.art_id = a.artist_id
WHERE artist_name LIKE 'Ария';

/* Задание 4*/
SELECT album_title, COUNT(*) FROM Album al
JOIN ArtistAlbum aal ON al.album_id = aal.alb_id
JOIN Artist a ON aal.art_id = a.artist_id
JOIN ArtistGenre ag ON a.artist_id = ag.art_id
JOIN Genre g ON ag.gen_id = g.genre_id
GROUP BY album_title
HAVING COUNT(*) > 1;

SELECT track_title FROM Track t
LEFT JOIN CollectionTracks ct ON t.track_id = ct.track_id
WHERE ct.col_id IS NULL;

SELECT artist_name, track_lenght FROM Track t
JOIN Album al ON t.track_album_id = al.album_id
JOIN ArtistAlbum aal ON al.album_id = aal.alb_id
JOIN Artist a ON aal.art_id = a.artist_id
WHERE track_lenght = (SELECT MIN (track_lenght) FROM Track);

SELECT album_title, COUNT(*) q FROM Track t
JOIN Album al ON t.track_album_id = al.album_id
GROUP BY album_title
HAVING COUNT(*) = (
	SELECT MIN(s.q) FROM 
		(SELECT COUNT(*) q FROM Track t2
		JOIN Album al2 ON t2.track_album_id = al2.album_id
		GROUP BY album_title) s
	);