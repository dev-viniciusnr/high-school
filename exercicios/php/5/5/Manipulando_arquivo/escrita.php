<?PHP
	/*Utilizando as funções nativas para criar arquivo, parametros da função fopen
	*/
	//Abrindo Criando o file
	$file = fopen("amigo.txt","a");

	//escrevendo a bagaça do file
	fwrite($file,"Ola, amigo vamos jogar");

	//fechando a bagaça do file
	fclose($file);
?>


Parametros da função fopen();

a- Utilizando para escrita, se existir o arquivo o mesmo será incrementado se não existir será criado.

w-Utilizado para a escrita, se o arquivo existir o mesmo sobreposto, se não existir será criado. 

r-Utilizado para a leitura 