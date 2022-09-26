--количество исполнителей в каждом жанре:
select genre_id, g.name, count(genre_id) as number_of_musicians from musiciangenres mg
left join genres g on g.id = mg.genre_id 
group by genre_id, g.name
ORDER BY genre_id; 

--количество треков, вошедших в альбомы 2019-2020 годов:
select count(t.id) from tracks t
join albums a ON a.id = t.album_id 
where a.year_ between 2019 and 2020; 

--средняя продолжительность треков по каждому альбому:
select a.name, avg(t.duration) from tracks t
join albums a on t.album_id = a.id
group by a.name;

--все исполнители, которые не выпустили альбомы в 2020 году:
select musician_id, m."name" from musicianalbums ma
join albums a on ma.album_id = a.id 
join musicians m on m.id = ma.musician_id  
where a.year_ <> 2020
group by musician_id, m."name";

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами):
select c.name from collections c 
join trackscollections tc on c.id = tc.collection_id 
join tracks t on tc.track_id = t.id 
join albums a on t.album_id = a.id 
join musicianalbums ma on a.id = ma.album_id 
where ma.musician_id = 3
group by c.name
order by c.name;

--название альбомов, в которых присутствуют исполнители более 1 жанра:
select a.name from albums a
left join musicianalbums ma on a.id = ma.album_id
left join musicians m on m.id = ma.musician_id
left join musiciangenres mg on m.id = mg.musician_id
left join genres g on g.id = mg.genre_id
group by a.name
having (count(g.id) > 1)
order by a.name;

--наименование треков, которые не входят в сборники:
select t.name from tracks t
left join trackscollections tc on t.id = tc.track_id
where tc.track_id is null;

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько):
select m.name, t.duration from tracks t
left join albums a on a.id = t.album_id
left join musicianalbums ma on ma.album_id = a.id
left join musicians m on m.id = ma.musician_id
group by m.name, t.duration 
having t.duration = (select min(duration) from tracks)
order by m.name;

--название альбомов, содержащих наименьшее количество треков:
select distinct a.name from albums a
left join tracks t on t.album_id = a.id
where t.album_id in 
	(select album_id from tracks
    group by album_id
    having count(id) = 
    	(select count(id) from tracks
        group by album_id
        order by count
        limit 1))
order by a.name