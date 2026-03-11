(:
1
for $libros in /libros/libro
return $libros
:)


(:
2
for $libros in /libros/libro
where $libros/anio > 1950
return concat($libros/titulo, " (",$libros/anio,")")
:)

(:3
for $libros in /libros/libro
order by $libros/anio
return concat($libros/titulo, " (", $libros/anio,")"):)

(:4
for $libro in /libros/libro
let $titulos := $libro/titulo
return $titulos
:)
