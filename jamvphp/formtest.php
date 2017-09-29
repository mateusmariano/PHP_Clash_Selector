<!doctype html>
<html>
<head>
<meta charset = "utf-8">
<title> Selecione a carta </title>

</head>

<body>
<?php

if($_SERVER["REQUEST_METHOD"] == "POST" ){
	

	$connection = mysqli_connect("localhost","root","","perso");

	if($connection){
		echo "Connection good <br>";
	}else{
		die("Connection failed. Reason: ". mysqli_connect_error());
	}
	
$name = $_POST["nome"];
echo $name;

$sql = "SELECT id, Elixir,Vida,Dano,Tipo FROM chracters WHERE nome='".$name."'";

$results = mysqli_query($connection,$sql);

if(mysqli_num_rows($results)>0){
	while($row = mysqli_fetch_array($results)){
		echo ": elixir:".$row[1]." "."vida:".$row[2]." "."dano:".$row[3]." "."tipo:".$row[4];
		echo "<br>";
	}
}

}
?>

<form method="post" action="formtest.php">
Nome : <input type = "text" name = "nome"><br>
<input type = "submit" name="submit" value="submit">
</form>


</body>

</html>