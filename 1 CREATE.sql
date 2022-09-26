create table if not EXISTS Genres (
id SERIAL primary key, 
name VARCHAR(120) not null unique
);

create table if not EXISTS Musicians (
id SERIAL primary key, 
name VARCHAR(60) not null unique
);

create table if not EXISTS MusicianGenres (
id SERIAL primary key, 
genre_id integer not null references Genres(id),
musician_id integer not null references Musicians(id)
);

create table if not EXISTS Albums (
id SERIAL primary key, 
name VARCHAR(120) not null,
year_ integer not null
);

create table if not EXISTS MusicianAlbums (
id SERIAL primary key, 
album_id integer not null references Albums(id),
musician_id integer not null references Musicians(id)
);

create table if not EXISTS Tracks (
id SERIAL primary key, 
name VARCHAR(120) not null,
album_id integer references Albums(id),
duration integer not null
);

create table if not EXISTS Collections (
id SERIAL primary key, 
name VARCHAR(120) not null,
year_ integer not null
);

create table if not EXISTS TracksCollections (
id SERIAL primary key, 
track_id integer not null references Tracks(id),
collection_id integer not null references Collections(id)
);