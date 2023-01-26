--genre
INSERT INTO genre VALUES ('1', 'pop');
INSERT INTO genre VALUES ('2', 'rock');
INSERT INTO genre VALUES ('3', 'hip-hop');
INSERT INTO genre VALUES ('4', 'chanson');
INSERT INTO genre VALUES ('5', 'metal');

--singer
INSERT INTO singer(singer_id, singer_name) VALUES('1', 'Madonna');
INSERT INTO singer(singer_id, singer_name) VALUES('2', 'Cristina Aguilera');
INSERT INTO singer(singer_id, singer_name) VALUES('3', 'Dima Bilan');
INSERT INTO singer(singer_id, singer_name) VALUES('4', 'ДДТ');
INSERT INTO singer(singer_id, singer_name) VALUES('5', 'Би 2');
INSERT INTO singer(singer_id, singer_name) VALUES('6', 'Eminem');
INSERT INTO singer(singer_id, singer_name) VALUES('7', 'Edith Piaf');
INSERT INTO singer(singer_id, singer_name) VALUES('8', 'Ария');

--singer_genre
INSERT INTO singer_genre VALUES(1, 1);
INSERT INTO singer_genre VALUES(2, 1);
INSERT INTO singer_genre VALUES(3, 1);
INSERT INTO singer_genre VALUES(4, 2);
INSERT INTO singer_genre VALUES(5, 3);
INSERT INTO singer_genre VALUES(6, 3);
INSERT INTO singer_genre VALUES(7, 4);
INSERT INTO singer_genre VALUES(8, 5);

--album
INSERT INTO album(album_id, title_album, album_release_year)
VALUES(1, 'album_1', '20181130');

INSERT INTO album(album_id, title_album, album_release_year)
VALUES(2, 'album_2', '20171020');

INSERT INTO album(album_id, title_album, album_release_year)
VALUES(3, 'album_3', '20150910');

INSERT INTO album(album_id, title_album, album_release_year)
VALUES(4, 'album_4', '20200715');

INSERT INTO album(album_id, title_album, album_release_year)
VALUES(5, 'album_5', '20131222');

INSERT INTO album(album_id, title_album, album_release_year)
VALUES(6, 'album_6', '20200520');

INSERT INTO album(album_id, title_album, album_release_year)
VALUES(7, 'album_7', '20180210');

INSERT INTO album(album_id, title_album, album_release_year)
VALUES(8, 'album_8', '20191013');

--singer_album
INSERT INTO singer_album VALUES (1, 6);
INSERT INTO singer_album VALUES (2, 2);
INSERT INTO singer_album VALUES (3, 5);
INSERT INTO singer_album VALUES (4, 1);
INSERT INTO singer_album VALUES (5, 7);
INSERT INTO singer_album VALUES (6, 8);
INSERT INTO singer_album VALUES (7, 4);
INSERT INTO singer_album VALUES (8, 3);
INSERT INTO singer_album VALUES (1, 1);
INSERT INTO singer_album VALUES (3, 1);
INSERT INTO singer_album VALUES (2, 8);
INSERT INTO singer_album VALUES (4, 8);


--madonna
INSERT INTO track VALUES(1, 1, 'God Control', 379);
INSERT INTO track VALUES(2, 3, 'Justify My Love', 201);

--Cristina Aguilera
INSERT INTO track VALUES(3, 2, 'Beatutiful', 245);
INSERT INTO track VALUES(4, 5,'Lady Marmalade', 272);


--Dima Bilan
INSERT INTO track VALUES(5, 1, 'Never Let You Go', 194);
INSERT INTO track VALUES(6, 2, 'Believe', 164);


--ДДТ
INSERT INTO track VALUES(7, 8, 'Что такое осень', 207);
INSERT INTO track VALUES(8, 4, 'Метель', 452);


--Бе-2
INSERT INTO track VALUES(9, 1, 'Варвара', 305);
INSERT INTO track VALUES(10, 5, 'мой друг', 504);

--Eminem
INSERT INTO track VALUES(11, 7, 'Mockingbird', 258);
INSERT INTO track VALUES(12, 5, 'Big Weenie', 267);


--Edith Piaf
INSERT INTO track VALUES(13, 3, 'La Foule', 207);
INSERT INTO track VALUES(14, 4, 'Mon Dieu', 203);

--Ария
INSERT INTO track VALUES(15, 2, 'Штиль', 214);
INSERT INTO track VALUES(16, 3, 'Тореро', 338);

INSERT INTO track VALUES(17, 3, 'Frozene', 310);
INSERT INTO track VALUES(18, 2, 'Живой', 345);



--collection
INSERT INTO colection VALUES(1, 'collection_1', '20170101');
INSERT INTO colection VALUES(2, 'collection_2', '20170302');
INSERT INTO colection VALUES(3, 'collection_3', '20180821');
INSERT INTO colection VALUES(4, 'collection_4', '20180912');
INSERT INTO colection VALUES(5, 'collection_5', '20190604');
INSERT INTO colection VALUES(6, 'collection_6', '20201213');
INSERT INTO colection VALUES(7, 'collection_7', '20210724');
INSERT INTO colection VALUES(8, 'collection_8', '20120610');

--collection_track
INSERT INTO colection_track VALUES(1, 16);
INSERT INTO colection_track VALUES(2, 15);
INSERT INTO colection_track VALUES(3, 14);
INSERT INTO colection_track VALUES(4, 13);
INSERT INTO colection_track VALUES(5, 12);
INSERT INTO colection_track VALUES(6, 11);
INSERT INTO colection_track VALUES(7, 10);
INSERT INTO colection_track VALUES(8, 9);
INSERT INTO colection_track VALUES(1, 8);
INSERT INTO colection_track VALUES(2, 7);
INSERT INTO colection_track VALUES(3, 6);
INSERT INTO colection_track VALUES(4, 5);
INSERT INTO colection_track VALUES(5, 4);
INSERT INTO colection_track VALUES(6, 3);
INSERT INTO colection_track VALUES(7, 2);
INSERT INTO colection_track VALUES(8, 1);  