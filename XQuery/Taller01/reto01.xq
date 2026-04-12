for $l in //libro[@categoria="programacion"] 
let $precio := number($l/precio)
where $precio > 30
order by $l/titulo descending
return
  <resultado>
      Título: { data($l/titulo) } - Precio: { $precio }€
  </resultado>