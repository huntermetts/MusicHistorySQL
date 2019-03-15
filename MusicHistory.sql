
/* Number 1:
INSERT INTO ARTIST (ARTISTNAME, YEARESTABLISHED) VALUES ('The Band Camino', 2010)
*/

/* Number 2:
insert into album (title, releaseDate, albumLength, label, artistId, genreId) values ('Heaven', '1/1/2017', 1500, 'Def Jam', 31, 7)
*/

/* Number 3:
insert into song (title, songLength, releaseDate, genreId, artistId, albumId) values ('Who Says We Are Though', 180, '1/1/2017', 7, 31, 23)
*/

/* Number 4:
insert into song (title, songLength, releaseDate, genreId, artistId, albumId) values ('My Thoughts On You', 160, '1/1/2017', 7, 31, 23)
insert into song (title, songLength, releaseDate, genreId, artistId, albumId) values ('Less Than I Do', 200, '1/1/2017', 7, 31, 23)
*/

/* Number 5:
select * from song Left Join album on song.AlbumId=Album.id 
				   Left Join artist on Album.ArtistId=Artist.Id
				   Where Artist.ArtistName = 'The Band Camino'
*/

/* Number 6:
select count (Song.Title)
from Song inner join Album on Song.AlbumId=Album.Id
group by Album.Title
*/

/* Number 7:
select count (Song.Title)
from Song inner join Artist on Song.ArtistId=Artist.Id
group by Artist.ArtistName
*/

/* Number 8: 
select count (Song.Title) as songNumberPerGenre
from Genre left join Song on Song.GenreId=Genre.Id
group by Genre.Label
*/

/* Number 9:
SELECT top 1 MAX(Album.AlbumLength) AS LongestAlbum, Album.Title as AlbumName
FROM Album
group by album.title
order by LongestAlbum desc
*/

/* Number 10:
SELECT top 1 MAX(Song.SongLength) as LongestSong, Song.Title as SongName
FROM Song
group by Song.title
order by LongestSong desc
*/

/* Number 11:
SELECT top 1 MAX(Song.SongLength) as LongestSong, Song.Title as SongName, Album.Title as AlbumName
FROM Song inner join Album on Song.AlbumId=Album.Id
group by Song.title, Album.Title
order by LongestSong desc
*/

