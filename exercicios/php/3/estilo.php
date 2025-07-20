<?php
	$valor1 = $_POST['val1'];
	$valor2 = $_POST['val2'];
	$valor3 = $_POST['val3'];
	$maior = "";
	$medio = "";
	$menor = "";

	//Maior
	if($valor1 > $valor2 && $valor1 > $valor3){
		$maior = $valor1; } 

	if($valor2 > $valor1 && $valor2 > $valor3){
		$maior = $valor2;
	} 

	if($valor3 > $valor1 && $valor3 > $valor2){
		$maior = $valor3;
	} 
 
	 //Menor
		if($valor1 < $valor2 && $valor1 < $valor3){
		$menor = $valor1;
	}

	if($valor2 < $valor1 && $valor2 < $valor3){
		$menor = $valor2;
	}

	if($valor3 < $valor1 && $valor3 < $valor2){
		$menor = $valor3;
	}

	//Medio
			if($valor1 < $valor2 && $valor1 > $valor3){
		$medio = $valor1;
	}
			if($valor1 < $valor3 && $valor1 > $valor2){
		$medio = $valor1;
	}

	
			if($valor2 < $valor3 && $valor2 > $valor1){
		$medio = $valor2;
	}
			if($valor2 < $valor1 && $valor2 > $valor3){
		$medio = $valor2;
	}

	
			if($valor3 < $valor2 && $valor3 > $valor1){
		$medio = $valor3;
	}
			if($valor3 < $valor1 && $valor3 > $valor2){
		$medio = $valor3;
	}
		

		Echo $menor."-".$medio."-".$maior;



?>