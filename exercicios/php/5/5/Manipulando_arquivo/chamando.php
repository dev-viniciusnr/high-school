<?php
	
	$escolha = $_POST["numero"];

	if ($escolha  == "1") {

			ECHO $arquivo = fopen("tab1.txt","r");
	//percorrendo linha a linha
	//feof - função para saber quando é o final do arquivo
	while(!feof($arquivo))
	{
		//variavel para receber as linhas
		//fegts retorna a linha 
		$linha = fgets($arquivo,4096);
		echo $linha;
		echo "<br>";
	}
	//fechando o arquivo
	fclose($arquivo);
   		}


?>