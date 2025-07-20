<?php
	echo "<meta charset='UTF-8'>";

	$x = 0;
	$num = $_POST['txt'];

	for($i= 2; $i <=$num; $i++){
		$primo=true;
		for ($x=2; $x <$num; $x++) { 
		if($num % $x == 0){
			$primo=false;	
			break;
		}
	}
}

		if(!$primo){
			echo "Esse número não é primo" .$num;
		}else{
			echo "Esse número é primo" .$num;
		}


?>