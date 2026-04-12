for $nombre_autor in distinct-values(//libro/autor)
let $libros_del_autor := //libro[autor = $nombre_autor],
    $total := count($libros_del_autor)
where $total > 1
return
  <resultado>
    { data($nombre_autor) } - Total: { $total } Libros
  </resultado>