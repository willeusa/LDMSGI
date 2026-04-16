(:
Reto2. Quiero un informe que nos diga cuántos libros tiene cada autor en nuestra biblioteca.
Pero atención: solo queremos ver a los autores que tienen más de un libro.
:)
(:Utilizaré "na" para el nombre del autor, "sl" para "Sus libros" y "t" para "Total":)

for $na in distinct-values(//libro/autor)
let $sl := //libro[autor = $na],
    $t := count($sl)
where $t > 1
return
  <resultado>
    { data($na) } - Total: { $t } Libros
  </resultado>