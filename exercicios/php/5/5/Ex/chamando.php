<?php
	
	$escolha = $_POST["numero"];

	if (empty($escolha))
	{
		echo "Escolha um numero!";
	}

	if ($escolha > 10)
		
		{
			echo "Escolha um numero menor!!!";
		}
		
	if ($escolha  == "1") {

			 $arquivo = fopen("tab1.txt","r");

			while(!feof($arquivo))
	{

		$linha = fgets($arquivo,4096);
		echo $linha;
		echo "<br>";
	}
	
	fclose($arquivo);
    
		}



		if ($escolha  == "2") {

			 $arquivo = fopen("tab2.txt","r");
			
			while(!feof($arquivo))
	{
		
		$linha = fgets($arquivo,4096);
		echo $linha;
		echo "<br>";
	}
	
	fclose($arquivo);	

	}



		if ($escolha  == "3") {

			$arquivo = fopen("tab3.txt","r");
			
			while(!feof($arquivo))
	{
		
		$linha = fgets($arquivo,4096);
		echo $linha;
		echo "<br>";
	}
	
	fclose($arquivo);	

	}


		if ($escolha  == "4") {

			 $arquivo = fopen("tab4.txt","r");
			
			while(!feof($arquivo))
	{
		
		$linha = fgets($arquivo,4096);
		echo $linha;
		echo "<br>";
	}
	
	fclose($arquivo);	

	}


		if ($escolha  == "5") {

			 $arquivo = fopen("tab5.txt","r");
			
			while(!feof($arquivo))
	{
		
		$linha = fgets($arquivo,4096);
		echo $linha;
		echo "<br>";
	}
	
	fclose($arquivo);	

	}


		if ($escolha  == "6") {

			 $arquivo = fopen("tab6.txt","r");
			
			while(!feof($arquivo))
	{
		
		$linha = fgets($arquivo,4096);
		echo $linha;
		echo "<br>";
	}
	
	fclose($arquivo);	

	}


		if ($escolha  == "7") {

			$arquivo = fopen("tab7.txt","r");
			
			while(!feof($arquivo))
	{
		
		$linha = fgets($arquivo,4096);
		echo $linha;
		echo "<br>";
	}
	
	fclose($arquivo);	

	}


		if ($escolha  == "8") {

			 $arquivo = fopen("tab8.txt","r");
			
			while(!feof($arquivo))
	{
		
		$linha = fgets($arquivo,4096);
		echo $linha;
		echo "<br>";
	}
	
	fclose($arquivo);	

	}


		if ($escolha  == "9") {

			 $arquivo = fopen("tab9.txt","r");
			
			while(!feof($arquivo))
	{
		
		$linha = fgets($arquivo,4096);
		echo $linha;
		echo "<br>";
	}
	
	fclose($arquivo);	

	}


		if ($escolha  == "10") {

			 $arquivo = fopen("tab10.txt","r");
			
			while(!feof($arquivo))
	{
		
		$linha = fgets($arquivo,4096);
		echo $linha;
		echo "<br>";
	}
	
	fclose($arquivo);	

	}


?>