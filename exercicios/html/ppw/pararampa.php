<?php
function negro($campo,$cc){
	if ($campo==null) {
		echo "<script>alert('O campo $cc está em branco.'); window.location.href='index.html';</script>";
	}
}

function numero($num,$tel){
	if (strlen($tel)<$num) {
		echo "<script>alert('O numero de telefone não está certo.'); window.location.href='index.html';</script>";
	}
}
function xanaina($idade){
	if ($idade<18) {
		echo "<script>alert('Você não é maior de idade babaca.'); window.location.href='index.html';</script>";
	}
}
?>