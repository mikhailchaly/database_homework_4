-- запросы

--1. количество исполнителей в каждом жанре
SELECT genre.name, count(singer_genre.singer_id) 
FROM genre JOIN singer_genre
ON genre.genre_id = singer_genre.genre_id
GROUP BY genre.name;


--2. количество треков, вошедших в албом 2019-2020 годов
SELECT album.album_release_year, count(track_id)
FROM album JOIN track
ON album.album_id = track.album_id
WHERE album.album_release_year >= '20190101' AND album.album_release_year <= '20201231'
GROUP BY album.album_release_year;


--3. средняя продолжительность треков по каждому альбому
-- первый вариант
SELECT album.title_album,
(sum(track.track_duration) / count(track.track_id)) AS average_duration
FROM album JOIN track
ON album.album_id = track.album_id 
GROUP BY album.title_album
ORDER BY average_duration desc

-- второй вариант(агрегирующие ф-ии)
SELECT album.title_album,
(AVG(track.track_duration)) AS average_duration
FROM album JOIN track
ON album.album_id = track.album_id 
GROUP BY album.title_album
ORDER BY average_duration DESC


--4. все исполнители, которые не выпустили альбомы в 2020 году
SELECT singer.singer_name, album.album_release_year FROM album 
LEFT JOIN singer_album ON singer_album.album_id = album.album_id
LEFT JOIN singer ON singer.singer_id = singer_album.singer_id
WHERE album.album_release_year NOT BETWEEN  '20200101' AND '20201231'


--5. название сборников в которых присутствует конкретный исполнитель
SELECT colection.colection_name FROM colection 
LEFT JOIN colection_track ON colection_track.colection_id = colection.colection_id 
LEFT JOIN track ON track.track_id = colection_track.track_id 
LEFT JOIN album ON album.album_id = track.album_id 
LEFT JOIN singer_album ON singer_album.album_id = album.album_id 
LEFT JOIN singer ON singer.singer_id = singer_album.singer_id 
WHERE singer.singer_name = 'Ария'


--6. название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT album.title_album FROM album
LEFT JOIN singer_album ON album.album_id = singer_album.album_id
LEFT JOIN singer ON singer.singer_id = singer_album.singer_id
LEFT JOIN singer_genre on singer.singer_id = singer_genre.singer_id
LEFT JOIN genre on genre.genre_id = singer_genre.genre_id
GROUP BY album.title_album
HAVING count(distinct genre.name) > 1


--7.наименование треков, которые не входят в сборники;
SELECT track.track_name, colection.colection_name FROM track
LEFT JOIN colection_track ON colection_track.track_id = track.track_id
LEFT JOIN colection ON colection.colection_id = colection_track.colection_id 
WHERE colection_track.track_id IS NULL


--8.исполнителя(-ей), написавшего самый короткий по продолжительности трек
-- (теоретически таких треков может быть несколько);
SELECT singer.singer_name , track.track_duration FROM track
LEFT JOIN album ON  album.album_id = track.album_id
LEFT JOIN singer_album ON singer_album.album_id = album.album_id
LEFT JOIN singer ON singer.singer_id = singer_album.singer_id 
GROUP BY singer.singer_name , track.track_duration 
HAVING  track.track_duration = (SELECT min(track_duration) FROM track)
ORDER BY singer.singer_name 


--9. название альбомов, содержащих наименьшее количество треков.
SELECT DISTINCT album.title_album FROM album
LEFT JOIN track ON  track.album_id = album.album_id 
WHERE track.album_id IN (
    SELECT album_id
    FROM track
    GROUP BY album_id
    HAVING count(track_id) = (
        SELECT count(track_id)
        FROM track
        GROUP BY album_id
        ORDER BY count
        LIMIT 1
    )
)
ORDER BY album.title_album   