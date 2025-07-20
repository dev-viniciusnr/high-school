<?php

$num = $_POST['tabu'];

 function tabuada($n){
 	for ($i=1; $i <11 ; $i++){ 
 		echo $n. " X " . $i ." = 
 		".$n * $i. "<br>" ;
 	}
 }

tabuada($num);

?>
