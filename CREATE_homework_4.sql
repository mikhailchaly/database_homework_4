-- ограничение - имя жанра уникально
CREATE TABLE IF NOT EXISTS genre (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL UNIQUE
);

-- ограничение - имя певца уникально
CREATE TABLE IF NOT EXISTS singer (
	singer_id SERIAL PRIMARY KEY,
	singer_name VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS singer_genre (
	singer_id INTEGER REFERENCES singer(singer_id),
	genre_id INTEGER REFERENCES genre(genre_id),
	CONSTRAINT sg PRIMARY KEY (singer_id, genre_id)
);

-- ограничение - альбом не старше 2011 года
CREATE TABLE IF NOT EXISTS album (
	album_id SERIAL PRIMARY KEY,
	title_album VARCHAR(40) NOT NULL,
	album_release_year DATE, check (album_release_year >= '20110101')	
);

--ALTER TABLE album ADD COLUMN track_name VARCHAR(40)
--ALTER TABLE album DROP COLUMN track_name

CREATE TABLE IF NOT EXISTS singer_album (
	singer_id INTEGER REFERENCES singer(singer_id),
	album_id INTEGER REFERENCES album(album_id),
	CONSTRAINT sa PRIMARY KEY (singer_id, album_id)
);


-- ограничение - продолжительность трека не более 600 сек
CREATE TABLE IF NOT EXISTS track (
	track_id SERIAL PRIMARY KEY,
	album_id INTEGER REFERENCES album(album_id),
	track_name VARCHAR(40) NOT NULL,
	track_duration INTEGER, check (track_duration <= 600)
);

-- ограничение - коллекция не старше 2011 года
CREATE TABLE IF NOT EXISTS colection (
	colection_id SERIAL PRIMARY KEY,
	colection_name VARCHAR(40) NOT NULL,
	colection_release_year DATE, check (colection_release_year >= '20110101')	
);

CREATE TABLE IF NOT EXISTS colection_track (
	colection_id INTEGER REFERENCES colection(colection_id),
	track_id INTEGER REFERENCES track(track_id),
	CONSTRAINT ct PRIMARY KEY (colection_id, track_id)
);