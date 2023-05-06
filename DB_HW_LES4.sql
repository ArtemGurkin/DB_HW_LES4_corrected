create table if not exists Genre (
Genre_ID SERIAL primary key,
Genre_name VARCHAR(60) unique not null
);

insert into Genre(Genre_name)
VALUES('Rock');

insert into Genre(Genre_name)
VALUES('Pop');

insert into Genre(Genre_name)
VALUES('Hip-Hop');

insert into Genre(Genre_name)
VALUES('Alternative');

insert into Genre(Genre_name)
VALUES('Russian Rock');

create table if not exists Artist (
Artist_ID SERIAL primary key,
Artist_name VARCHAR(60) unique not null
);

insert into Artist(Artist_name)
VALUES('Metallica');

insert into Artist(Artist_name)
VALUES('Korn');

insert into Artist(Artist_name)
VALUES('ДДТ');

insert into Artist(Artist_name)
VALUES('Сплин');

insert into Artist(Artist_name)
VALUES('Lady Gaga');

insert into Artist(Artist_name)
VALUES('P.O.D.');

insert into Artist(Artist_name)
VALUES('Eminem');

insert into Artist(Artist_name)
VALUES('Blink 182');

create table if not exists Album (
Album_ID SERIAL primary key,
Album_name VARCHAR(60) not null,
Album_year INTEGER not null
);

insert into Album(Album_name, Album_year)
VALUES('72 Seasons', 2023);

insert into Album(Album_name, Album_year)
VALUES('Issues', 1999);

insert into Album(Album_name, Album_year)
VALUES('Любовь', 1996);

insert into Album(Album_name, Album_year)
VALUES('Гранатовый альбом', 1998);

insert into Album(Album_name, Album_year)
VALUES('Artpop', 2013);

insert into Album(Album_name, Album_year)
VALUES('Satellite', 2001);

insert into Album(Album_name, Album_year)
VALUES('Revival', 2017);

insert into Album(Album_name, Album_year)
VALUES('Blink-182', 2003);

insert into Album(Album_name, Album_year)
VALUES('Галя ходи', 2018);

create table if not exists Collection (
Collection_ID SERIAL primary key,
Collection_name VARCHAR(60) not null,
Collection_year INTEGER not null
);

insert into Collection(Collection_name, Collection_year)
VALUES('Alternative Rock', 2015);

insert into Collection(Collection_name, Collection_year)
VALUES('Rock', 2016);

insert into Collection(Collection_name, Collection_year)
VALUES('Russian Rock', 2017);

insert into Collection(Collection_name, Collection_year)
VALUES('Pop&Hip-Hop', 2018);

insert into Collection(Collection_name, Collection_year)
VALUES('Punk', 2019);

insert into Collection(Collection_name, Collection_year)
VALUES('Old', 2020);

insert into Collection(Collection_name, Collection_year)
VALUES('New', 2021);

insert into Collection(Collection_name, Collection_year)
VALUES('Pop&Alternative', 2022);

create table Track (
Track_ID SERIAL primary key,
Track_name VARCHAR(60) unique not null,
Track_duration INTEGER not null,
Album_ID INTEGER references Album(Album_ID)
);

insert into Track(Track_name, Track_duration, Album_ID)
VALUES('You must burn', 423, 1);

insert into Track(Track_name, Track_duration, Album_ID)
VALUES('Shadow Follows', 372, 1);

insert into Track(Track_name, Track_duration, Album_ID)
VALUES('Somebody Someone', 227, 2);

insert into Track(Track_name, Track_duration, Album_ID)
VALUES('Beg for Me', 234, 2);

insert into Track(Track_name, Track_duration, Album_ID)
VALUES('Вороны', 243, 3);

insert into Track(Track_name, Track_duration, Album_ID)
VALUES('Я у вас', 316, 3);

insert into Track(Track_name, Track_duration, Album_ID)
VALUES('Приходи', 242, 4);

insert into Track(Track_name, Track_duration, Album_ID)
VALUES('Выхода нет', 223, 4);

insert into Track(Track_name, Track_duration, Album_ID)
VALUES('Jewels&Drugs', 228, 5);

insert into Track(Track_name, Track_duration, Album_ID)
VALUES('Aura', 236, 5);

insert into Track(Track_name, Track_duration, Album_ID)
VALUES('Ridiculous', 258, 6);

insert into Track(Track_name, Track_duration, Album_ID)
VALUES('Thinkin about forever', 226, 6);

insert into Track(Track_name, Track_duration, Album_ID)
VALUES('Walk on Water', 303, 7);

insert into Track(Track_name, Track_duration, Album_ID)
VALUES('Believe', 315, 7);

insert into Track(Track_name, Track_duration, Album_ID)
VALUES('Down', 184, 8);

insert into Track(Track_name, Track_duration, Album_ID)
VALUES('Если (мой)', 271, 9);

insert into Track(Track_name, Track_duration, Album_ID)
VALUES('Intro', 221, 7); 

create table Collection_Track (
Collection_ID INTEGER references Collection(Collection_ID),
Track_ID INTEGER references Track(Track_ID),
constraint CT primary key (Collection_ID, Track_ID)
);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(1, 3);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(1, 4);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(2, 1);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(2, 2);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(2, 3);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(2, 4);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(2, 5);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(2, 6);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(2, 7);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(2, 8);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(2, 11);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(2, 12);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(2, 15);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(3, 5);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(3, 6);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(3, 7);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(3, 8);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(4, 9);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(4, 10);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(4, 13);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(4, 14);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(5, 15);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(6, 3);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(6, 4);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(6, 5);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(6, 6);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(6, 7);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(6, 8);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(7, 1);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(7, 2);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(7, 9);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(7, 10);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(7, 11);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(7, 12);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(7, 13);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(7, 14);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(7, 15);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(8, 3);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(8, 4);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(8, 9);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(8, 10);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(8, 11);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(8, 12);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(2, 16);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(3, 16);

insert into Collection_Track(Collection_ID, Track_ID)
VALUES(7, 16);

create table if not exists Artist_Genre (
Artist_ID INTEGER references Artist(Artist_ID),
Genre_ID INTEGER references Genre(Genre_ID),
constraint AG primary key (Artist_ID, Genre_ID)
);

insert into Artist_Genre(Artist_ID, Genre_ID)
VALUES(1, 1);

insert into Artist_Genre(Artist_ID, Genre_ID)
VALUES(2, 4);

insert into Artist_Genre(Artist_ID, Genre_ID)
VALUES(3, 5);

insert into Artist_Genre(Artist_ID, Genre_ID)
VALUES(4, 5);

insert into Artist_Genre(Artist_ID, Genre_ID)
VALUES(5, 2);

insert into Artist_Genre(Artist_ID, Genre_ID)
VALUES(6, 4);

insert into Artist_Genre(Artist_ID, Genre_ID)
VALUES(7, 3);

insert into Artist_Genre(Artist_ID, Genre_ID)
VALUES(8, 1);

insert into Artist_Genre(Artist_ID, Genre_ID)
VALUES(2, 1); 

insert into Artist_Genre(Artist_ID, Genre_ID)
VALUES(3, 1);

insert into Artist_Genre(Artist_ID, Genre_ID)
VALUES(4, 1); 

create table if not exists Album_Artist (
Album_ID INTEGER references Album(Album_ID),
Artist_ID INTEGER references Artist(Artist_ID),
constraint AA primary key (Artist_ID, Album_ID)
);

insert into Album_Artist(Album_ID, Artist_ID)
VALUES(1, 1);

insert into Album_Artist(Album_ID, Artist_ID)
VALUES(2, 2);

insert into Album_Artist(Album_ID, Artist_ID)
VALUES(3, 3);

insert into Album_Artist(Album_ID, Artist_ID)
VALUES(4, 4);

insert into Album_Artist(Album_ID, Artist_ID)
VALUES(5, 5);

insert into Album_Artist(Album_ID, Artist_ID)
VALUES(6, 6);

insert into Album_Artist(Album_ID, Artist_ID)
VALUES(7, 7);

insert into Album_Artist(Album_ID, Artist_ID)
VALUES(8, 8);

insert into Album_Artist(Album_ID, Artist_ID)
VALUES(9, 3);

# TASK 2

select Album_name, Album_year from Album 
where Album_year = 2018; 

select Track_name, Track_duration from Track 
order by Track_duration desc 
limit 1;

select Track_name from Track 
where Track_duration >= 210;

select Collection_name from Collection 
where Collection_year between 2018 and 2020;

select Artist_name from Artist
where Artist_name not like '% %';

select Track_name from Track 
where Track_name like '%my%';

select Track_name from Track 
where Track_name like '%мой%';

# LESSON 4 (селект-запросы)

--Кол-во исполнителей в каждом жанре: 

select Genre_ID, count(Artist_ID) from Artist_Genre
group by Genre_ID
order by count(Artist_ID); 

--Количество треков, вошедших в альбомы 2019–2020 годов.

select count(Track_ID) from Track
where Album_ID in (select Album_ID from Album where Album_year between 2018 and 2023);


--Средняя продолжительность треков по каждому альбому.

select Album_ID, AVG(Track_duration) from track
group by Album_ID
order by Album_ID;

--Все исполнители, которые не выпустили альбомы в 2020 году.

select distinct Artist_ID from album_artist 
where Album_ID in (select Album_ID from Album where Album_year != 2020)
order by Artist_ID;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).

select collection_name from collection
where collection_ID in 
(select Collection_ID from Collection_track where Track_ID in 
(select Track_ID from Track where Album_ID in 
(select Album_ID from Album_Artist where Artist_ID = 3)));

--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.

select Album_id, Album_name from Album
where Album_ID in (select Album_ID from Album_artist where Artist_ID in (select artist_id from artist_genre
group by artist_id
having count(genre_id) > 1));

--Наименования треков, которые не входят в сборники.

select Track_name from Track
where Track_id not in (select track_id from collection_track);

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.

select artist_id, Artist_name from Artist
where artist_id in (select Artist_ID from album_artist where Album_ID in (select album_id from Track where track_duration in
(select min(track_duration) from track)));

--Названия альбомов, содержащих наименьшее количество треков.

select album_id, count(track_id) from track
group by album_id
order by count(track_id); 


