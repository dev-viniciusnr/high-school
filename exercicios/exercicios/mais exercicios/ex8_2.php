<?php

$altura = $_POST['alt'];
$idade = $_POST['idade'];
$sexo = $_POST['sexo'];
$nome = $_POST['nome'];



if ($sexo == 'masc') {
	$diferenca = $altura - 152.4;
	$ideal = 52 + (0.75 * $diferenca);
	echo $nome." Sua Idade é ".$idade."<br>";
	echo $nome." Seu Peso Ideal é ".$ideal." kg "; 
}else{
	$diferenca = $altura - 152.4;
	$ideal = 49 + (0.67 * $diferenca);
	echo $nome." Sua Idade é ".$idade."<br>";
	echo $nome." Seu Peso Ideal é ".$ideal." kg "; 
}





?>