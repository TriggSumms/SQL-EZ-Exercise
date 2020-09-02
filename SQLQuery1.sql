/* EXERCISE 17: *Tried multiple variations but I couldnt use Alias...

SELECT Song.Title, SongLength, Album.Title
FROM Song 
LEFT JOIN Album  ON Song.AlbumId = Song.Id 
WHERE SongLength =  (SELECT MAX(SongLength) FROM Song);
*/


/* EXERCISE 16: 
SELECT Title, SongLength
FROM Song 
WHERE SongLength = (SELECT MAX(SongLength) FROM Song)
*/

/* EXERCISE 15:
SELECT Title, AlbumLength
FROM Album 
WHERE AlbumLength = (SELECT MAX(AlbumLength) FROM Album)
*/

/* EXERCISE 15:(ALTERNATIVE)
SELECT TOP 1 Title, AlbumLength
FROM Album
ORDER BY AlbumLength desc
*/


/* EXERCISE 14:
SELECT art.ArtistName AS 'HOW MANY ALBUMS PER RECORD LABEL'
FROM Album a
INNER JOIN Artist art ON  a.ArtistId = art.Id 
GROUP BY art.ArtistName
HAVING COUNT(DISTINCT a.Label)> 1;
*/

/* EXERCISE 13: 
SELECT g.Label, COUNT(s.GenreId) AS 'How many Genres and Songs:'
FROM Genre g
LEFT JOIN Song s ON  g.Id = s.GenreId 
GROUP BY g.Label;
*/

/* EXERCISE 12;
SELECT art.ArtistName, COUNT(s.ArtistId) AS 'Songs for Artist:'
FROM Artist art
LEFT JOIN Song s ON  art.Id = s.ArtistId 
GROUP BY art.ArtistName;
*/

/* EXERCISE 11:
SELECT a.Title, COUNT(s.AlbumId) AS 'Songs for Album:'
FROM Album a
INNER JOIN Song s ON  a.Id = s.AlbumId 
GROUP BY a.Title;


--Below allows me to see that some songs dont have completed database info:
--SELECT Title
--FROM Song
--WHERE AlbumId = 2;
*/

--EXERCISE 10;
--SELECT s.Title, al.Title, ar.ArtistName
--FROM song s
--LEFT JOIN Album al on s.AlbumId = al.id
--LEFT JOIN Artist ar on s.ArtistId = ar.id



/*  EXERCISE 7/8/9:
INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('BingleBoi 5000', 1993);
INSERT INTO ALBUM (Title, ReleaseDate, AlbumLength, Label, Artist, Genre) VALUES ('BingleBang Wasnt A Choice', '1993', 4000, 'BingleBangers', 55, 4);
INSERT INTO SONG (Title, SongLength, ReleaseDate, Genre, Artist, Album) VALUES ( 'Ive been bangled twice', 3000, '1993', 4, 55, 44);
*/


--EXERCISE 6:
--SELECT al. *
--FROM Album al
--LEFT JOIN Song s on al.id = s.AlbumId
--WHERE s.id is NULL

/*EXERCISE 5;
SELECT ArtistName 
FROM Album 
       LEFT JOIN Artist on Album.ArtistId = artist.id  
       LEFT JOIN Genre on genre.id = Album.genreId
WHERE Genre.label = 'Rock' or Genre.label = 'Jazz';
*/

/* EXERCISE: 4;
SELECT ArtistName 
FROM Album 
       LEFT JOIN Artist on Album.ArtistId = artist.id  
       LEFT JOIN Genre on genre.id = Album.genreId
WHERE Genre.label = 'Pop';
*/



/* #EXERCISE 3:
SELECT Title, ArtistName
FROM Song s
       LEFT JOIN Artist a on s.ArtistId = a.id;
*/


/* #EXERCISE 2:
SELECT
    ArtistName,
    Id,
    YearEstablished
FROM Artist;
*/



/*  #Exercise 1:
SELECT * FROM Genre; 
*/