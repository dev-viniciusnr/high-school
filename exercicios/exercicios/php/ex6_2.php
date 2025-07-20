<?php

$ip = $_SERVER['SERVER_ADDR'];
$email = $_POST['email'];
//$assunto = $_POST['assunto'];
$texto = $_POST['texto'];
$navegador = $_POST['navegador'];

$mensagem = $texto . $ip . date('d/M/Y g') . $navegador;

echo $mensagem;


?>