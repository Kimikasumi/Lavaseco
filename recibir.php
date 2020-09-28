<?php

$mysqli = new mysqli("localhost", "root", "", "lavaseco");

/* comprobar la conexión */
if ($mysqli->connect_errno) {
	    printf("Conexión fallida: %s\n", $mysqli->connect_error);
	    exit();
	}
?>