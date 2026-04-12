<ul>
{
  for $l in //libro
  let $titulo := data($l/titulo),
      $anyo := number($l/publicacion),
      $precio := number($l/precio)
  
  (: Ordenamos por año para que las novedades salgan primero :)
  order by $anyo descending
  
  return
    <li>
      { $titulo }
      { 
        (: Lógica condicional para la etiqueta de Novedad :)
        if ($anyo > 2022) 
        then " (¡Novedad!) " 
        else "" 
      }
      - { $precio }€
    </li>
}
</ul>