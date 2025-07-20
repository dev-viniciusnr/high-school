<?php
echo "<meta charset='utf-8'>";

$vel = $_POST['velocidade'];
$acl = $_POST['aceleracao'];
$time = $_POST['time'];

$run = $vel * $acl * $time * 3.6;

echo "Você esta a " . $run ." KM/H <BR>";

if($run <= 40){
	echo "Veiculo muito lento";
}

if($run > 40 && $run <=60){
	echo "Velocidade permitida";
}

if($run > 60 && $run <= 80){
	echo "Velocidade de cruzeiro";
}

if($run > 80 && $run <= 120){
	echo "Veiculo rápido";
}

if($run > 120){
	echo "Veiculo muito rápido";
}

?>
