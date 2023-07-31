INSERT INTO Genre (genre_title)
VALUES ('Панк-рок');
INSERT INTO Genre (genre_title)
VALUES ('Металл');
INSERT INTO Genre (genre_title)
VALUES ('Фолк-рок');
INSERT INTO Genre (genre_title)
VALUES ('Альтернативный рок');

INSERT INTO Artist (artist_name)
VALUES ('Король и Шут');
INSERT INTO Artist (artist_name)
VALUES ('Эпидемия');
INSERT INTO Artist (artist_name)
VALUES ('Мельница');
INSERT INTO Artist (artist_name)
VALUES ('Кошки Jam');
INSERT INTO Artist (artist_name)
VALUES ('Обе-рек');
INSERT INTO Artist (artist_name)
VALUES ('Ария');

INSERT INTO ArtistGenre
VALUES (1, 1);
INSERT INTO ArtistGenre
VALUES (2, 2);
INSERT INTO ArtistGenre
VALUES (3, 3);
INSERT INTO ArtistGenre
VALUES (4, 1), (4, 4);
INSERT INTO ArtistGenre
VALUES (5, 4);
INSERT INTO ArtistGenre
VALUES (6, 2);

INSERT INTO Album (album_title, album_year)
VALUES ('Камнем по голове', 1996), ('Акустический альбом', 1999);
INSERT INTO Album (album_title, album_year)
VALUES ('Эльфийская рукопись', 2004);
INSERT INTO Album (album_title, album_year)
VALUES ('Перевал', 2005);
INSERT INTO Album (album_title, album_year)
VALUES ('Сон Ц', 2005), ('Несокрушимый', 2015);
INSERT INTO Album (album_title, album_year)
VALUES ('Сердце', 2018), ('Пикник на обочине', 2020);
INSERT INTO Album (album_title, album_year)
VALUES ('Крещение огнём', 2003), ('Игра с огнём', 1989);
INSERT INTO Album (album_title, album_year)
VALUES ('Финник. Музыка из фильма', 2022);

INSERT INTO ArtistAlbum (art_id, alb_id)
VALUES (1, 1), (1, 2), (1, 11);
INSERT INTO ArtistAlbum (art_id, alb_id)
VALUES (2, 3);
INSERT INTO ArtistAlbum (art_id, alb_id)
VALUES (3, 4), (3, 11);
INSERT INTO ArtistAlbum (art_id, alb_id)
VALUES (4, 5), (4, 6);
INSERT INTO ArtistAlbum (art_id, alb_id)
VALUES (5, 7), (5, 8);
INSERT INTO ArtistAlbum (art_id, alb_id)
VALUES (6, 9), (6, 10);

INSERT INTO Track (track_title, track_lenght, track_album_id)
VALUES ('Камнем по голове', 158, 1), ('Кукла колдуна', 202, 2), ('Прыгну со скалы', 190, 2);
INSERT INTO Track (track_title, track_lenght, track_album_id)
VALUES ('Романс о слезе', 389, 3), ('Магия и меч', 344, 3), ('Всадник из льда', 312, 3);
INSERT INTO Track (track_title, track_lenght, track_album_id)
VALUES ('Королевна', 314, 4), ('Господин горных дорог', 318, 4);
INSERT INTO Track (track_title, track_lenght, track_album_id)
VALUES ('Сон Ц', 151, 5), ('Рисовальщица', 312, 6);
INSERT INTO Track (track_title, track_lenght, track_album_id)
VALUES ('Сердце', 288, 7), ('Бесконечность', 305, 8), ('Летучая мышь', 265, 8), ('Мой рок-н-ролл', 252, 8);
INSERT INTO Track (track_title, track_lenght, track_album_id)
VALUES ('Колизей', 392, 9), ('Раскачаем этот мир', 361, 10);
INSERT INTO Track (track_title, track_lenght, track_album_id)
VALUES ('Прекрасный старый дом', 164, 11);

INSERT INTO Collection (collection_title, collection_year)
VALUES ('Энциклопедия Российского рока', 2001);
INSERT INTO Collection (collection_title, collection_year)
VALUES ('Легенды Русского рока. The Best 3', 2001);
INSERT INTO Collection (collection_title, collection_year)
VALUES ('Легенды Русского рока 7', 2002);
INSERT INTO Collection (collection_title, collection_year)
VALUES ('The Best', 2007);
INSERT INTO Collection (collection_title, collection_year)
VALUES ('Наше Радио. Лучшее 2018', 2018);

INSERT INTO CollectionTracks (col_id, track_id)
VALUES (1, 1), (1, 2), (1, 3);
INSERT INTO CollectionTracks (col_id, track_id)
VALUES (2, 4), (2, 15);
INSERT INTO CollectionTracks (col_id, track_id)
VALUES (3, 15), (3, 16);
INSERT INTO CollectionTracks (col_id, track_id)
VALUES (4, 7), (4, 8);
INSERT INTO CollectionTracks (col_id, track_id)
VALUES (5, 11);