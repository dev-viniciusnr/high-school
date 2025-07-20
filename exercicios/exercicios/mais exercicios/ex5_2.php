<?php

$texto = $_POST['texto'];

$palav = array('porra' => 'onononon','caralho' => 'onononon','cu' => 'onononon','puta' => 'onononon','arrombado' => 'onononon','fude' => 'onononon','fuder' => 'onononon' );

$final = strTr($texto, $palav);

echo $final;




?>