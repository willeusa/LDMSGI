for $libro in doc("biblioteca.xml")//libro,
    $autor in doc("autores.xml")//autor  (: <-- ESTA COMA ES CORRECTA: une dos 'for' :)
let $titulo := $libro/titulo,
    $precio := $libro/precio            (: <-- ESTA COMA ES CORRECTA: une dos 'let' :)
where $libro/autor_id = $autor/id        (: <-- ¡OJO! Sin coma antes del where :)
return                                   (: <-- ¡OJO! Sin coma antes del return :)
  <resultado>
    { $titulo } - { $autor/nombre }
  </resultado>