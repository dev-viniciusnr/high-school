<!DOCTYPE html>
<html>
<head>
	<title>CANALHAS MIL VEZES</title>
	<?php
		$nome=$_POST['txtnome'];
		$email=$_POST['txtemail'];
		$idade=$_POST['txtidade'];
		$ddd=$_POST['txtid'];
		$tell=$_POST['txttel'];

		include 'pararampa.php';

		negro($nome, "nome");
		negro($email, "email");
		negro($idade, "idade");
		negro($ddd, "ddd");
		negro($tell, "telefone");

		numero(2,$ddd);
		numero(8,$tell);

		xanaina($idade);
	?>
</head>
<body>
<?php
echo "Ola, $nome... <br> Vc é um otario que tem $idade anos.<br>Seu email é $email , coisa de otario hein, sua mãe que criou para você foi?<br>Seu telefone é $ddd-$tell, vou te ligar e ***** com sua mãe.";
?>
</body>
</html>