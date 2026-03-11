(:1
for $pelicula in /studioGhibli/movies
return $pelicula/movie/title
:)

(:
2
for $pelicula in /studioGhibli/movies/movie
let $peliPlusYear := concat($pelicula/title, "(",$pelicula/releaseYear,")")
return 
<pelicula>
    <peliculaaño>
      {$peliPlusYear}
    </peliculaaño>
</pelicula>
:)
(:3
for $pelicula in /studioGhibli/movies/movie
where $pelicula/releaseYear > 1995
return
<peliculas>
  {$pelicula/title}
</peliculas>
:)

for $peliculas in /studioGhibli/movies
let $count := count($peliculas/movie)
return 
<total_peliculas>
  {$count}
</total_peliculas>
