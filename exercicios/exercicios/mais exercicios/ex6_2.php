<?php

$ip = $_SERVER['REMOTE_ADDR'];
$email = $_POST['email'];
$assunto = $_POST['assunto'];
$texto = $_POST['texto'];
$navegador = $_SERVER['HTTP_USER_AGENT'];
$data = date('d/M/Y g:m'); 

$mensagem = "$texto<br>" . "$ip<br>" . "$data<br>" . $navegador;

mail($email, $assunto, $mensagem);


?>