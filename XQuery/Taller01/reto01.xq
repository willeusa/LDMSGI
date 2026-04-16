(:Muestra los títulos de los libros de la categoría "programacion" que valgan más de 30€, ordenados por título de la Z a la A.:)
(:Utilizaré "l" para "Libro" y "p" para "precio":)
for $l in //libro[@categoria="programacion"] 
let $p := number($l/precio)
where $p > 30
order by $l/titulo descending
return
  <resultado>
      Título: { data($l/titulo) } - Precio: { $p }€
  </resultado>