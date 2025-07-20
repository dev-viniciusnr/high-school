<?PHP

		$A = $_POST['txtA'];
		$B = $_POST['txtB'];
		$radio = $_POST['radio'];


		if ($radio == "Som") {

			ECHO 'Adição de Valor 1 por 2: '.($A + $B);
		}
		
		if ($radio == "Sub") {

			ECHO 'Subtraçao de Valor 1 por 2: '.($A - $B);
		}

		if ($radio == "Mul") {

			ECHO 'Multiplicação de Valor 1 por 2: '.($A * $B);
		}

		if ($radio == "Div") {

			ECHO 'Divisão de Valor 1 por 2: '.($A / $B);
		}

?>