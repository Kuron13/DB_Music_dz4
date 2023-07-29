CREATE TABLE IF NOT EXISTS Genre(
	genre_id SERIAL PRIMARY KEY NOT NULL,
	genre_title VARCHAR(60) NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS Artist(
	artist_id SERIAL PRIMARY KEY NOT NULL,
	artist_name VARCHAR (60) NOT NULL
);
CREATE TABLE IF NOT EXISTS Album(
	album_id SERIAl PRIMARY KEY NOT NULL,
	album_title VARCHAR(60) NOT NULL,
	album_year INTEGER CHECK(album_year >0 AND album_year <=2023)
);
CREATE TABLE IF NOT EXISTS Track(
	track_id SERIAL PRIMARY KEY NOT NULL,
	track_title VARCHAR(60) NOT NULL,
	track_lenght INTEGER NOT NULL CHECK(track_lenght <3600),
	track_album_id INTEGER NOT NULL REFERENCES Album(album_id)
);
CREATE TABLE IF NOT EXISTS Collection(
	collection_id SERIAL PRIMARY KEY NOT NULL,
	collection_title VARCHAR(60),
	collection_year INTEGER CHECK(collection_year >0 AND collection_year <=2023)
);
CREATE TABLE IF NOT EXISTS ArtistAlbum(
	art_id INTEGER REFERENCES Artist(artist_id),
	alb_id INTEGER REFERENCES Album(album_id),
	CONSTRAINT art_album PRIMARY KEY(art_id, alb_id)
);
CREATE TABLE IF NOT EXISTS ArtistGenre(
	art_id INTEGER REFERENCES Artist(artist_id),
	gen_id INTEGER REFERENCES Genre(genre_id),
	CONSTRAINT art_genre PRIMARY KEY(art_id, gen_id)
);
CREATE TABLE IF NOT EXISTS CollectionTracks(
	col_id INTEGER REFERENCES Collection(collection_id),
	track_id INTEGER REFERENCES Track(track_id),
	CONSTRAINT col_track PRIMARY KEY(col_id, track_id)
);