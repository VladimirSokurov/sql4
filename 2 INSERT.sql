insert into genres (name)
values 
('trance'),
('dubstep'),
('trap'),
('drum n bass'),
('electronic rock'); 

insert into Musicians (name)
values 
('Denis Kenzo'),
('Armin van Buuren'),
('ILLENIUM'),
('RL Grime'),
('Gemini'),
('Last Heroes'),
('Seven Lions'),
('Nero'); 

insert into MusicianGenres (genre_id, musician_id)
values 
(1, 1),
(1, 2),
(2, 3),
(5, 3),
(3, 4),
(2, 5),
(4, 5),
(2, 6),
(1, 7),
(2, 7),
(2, 8),
(4, 8);

insert into Albums (name, year_)
values 
('Worlds Apart', 2014),
('Between II Worlds', 2016),
('Finding Light', 2020),
('Imagine', 2008),
('Intense', 2013),
('Nova', 2021),
('Awake (Remixes)', 2018),
('Ashes', 2016);

insert into MusicianAlbums (album_id, musician_id)
values 
(1, 7),
(1, 3),
(2, 8),
(3, 1),
(4, 2),
(5, 2),
(6, 4),
(7, 3),
(8, 3);

insert into Tracks (name, album_id, duration)
values 
('Keep It Close', 1, 313),
('Rush Over Me', 1, 302),
('The Thrill', 2, 215),
('What Does Love Mean', 2, 250),
('Lullaby For Two', 3, 248),
('Guide', 3, 325),
('Going Wrong', 4, 336),
('In And Out Of Love', 4, 361),
('Beautiful Life', 5, 368),
('Waiting For The Night', 5, 251),
('Feel Free', 6, 202),
('Take It Away', 6, 237),
('Story Of My Life', 7, 234),
('Free Fall', 7, 185),
('Ill Be Your Reason', 8, 219),
('Without You', 8, 378),
('Last Track', 1, 888);

insert into Tracks (name, album_id, duration)
values 


insert into Collections (name, year_)
values
('Collection 1', 2022),
('Collection 2', 2021),
('Collection 3', 2020),
('Collection 4', 2019),
('Collection 5', 2018),
('Collection 6', 2017),
('Collection 7', 2016),
('Collection 8', 2015);


insert into TracksCollections (track_id, collection_id)
values 
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 4),
(9, 5),
(10, 5),
(11, 6),
(12, 6),
(13, 7),
(14, 7),
(15, 8),
(16, 8);