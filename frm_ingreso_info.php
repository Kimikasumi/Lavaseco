<!DOCTYPE HTML5>
<html>
	<head>
		<title>Lavander&iacutea el Verbenal</title>
		<meta charset="utf-8">
		<meta name="description" content="Formulario">
		<link rel="stylesheet" type="text/css" href="estilos.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	</head>
	


<body>
		<form action="frm_ingreso_info.php" method="POST">
		<div class="contenedor">
		
		<img src="Lavaseco.png" >
<br><br>

<fieldset>
	
	<legend>Datos Usuario</legend>


		<div class="col">
		      Número Factura: <input class="form-control" type="number" name="numFactura" placeholder="Código Factura">
		    </div>
		    <form action="frm_ingreso_info.php" method="POST">
			    <div class="col">
			      <button type="submit" class="btn btn-success" name="cargarTabla">Buscar</button>
			    </div>
			</form>
		  	<?php 

		  		
		  		
		  		function cargarInfoCliente(){
		  			include "recibir.php";
		  			if(isset($_POST["numFactura"]) && $_POST["numFactura"]!="")
					{
						$numFactura=$_POST["numFactura"];
					
		  			$sql="select CLIENTE.cod_cliente, nom_cliente, direccion, telefono, fecha FROM CLIENTE, FACTURA WHERE CLIENTE.cod_cliente = FACTURA.cod_cliente and FACTURA.cod_factura =".$numFactura;
			  		$resultado = mysqli_query($mysqli, $sql);
			  		while($filas=mysqli_fetch_assoc($resultado)){
		  	?>


		
		<div class="form-row">
		    <div class="col">
		      Fecha: <input class="form-control" type="date" name="2fechaRegistro " value="<?php echo $filas['fecha']; ?>">
		    </div>
		    
		    
	  	</div>
	  	<div class="form-row">
		    <div class="col">
		      Nombre: <input type="text" class="form-control" name="2nomCliente" placeholder="Nombre del Cliente" value="<?php echo $filas['nom_cliente']; ?>" disabled="true">
		    </div>
		    <div class="col">
		      Cédula: <input type="text" class="form-control" name="2cedula" placeholder="Cédula del Cliente" value=<?php echo $filas['cod_cliente']; ?>>
		    </div>
	  	</div>
	  	<div class="form-row">
		    <div class="col">
		      Dirección: <input type="text" class="form-control" name="2direccion" placeholder="Dirección del Cliente" value="<?php echo $filas['direccion']; ?>" disabled="true">
		    </div>
		    <div class="col">
		      Teléfono: <input type="text" class="form-control" name="2telefono" placeholder="Teléfono del Cliente" value=<?php echo $filas['telefono']; ?> disabled="true">
		    </div>
	  	</div>

	  	<?php }
				}
				
			}

				if(array_key_exists('cargarTabla', $_POST))
		  		{
		  			cargarInfoCliente();
		  		}else{
		  			?>

<!-- SE MUESTRA -->
		
						<div class="form-row">
						    <div class="col">
						      Fecha: <input class="form-control" type="date" name="fechaRegistro">
						    </div>
						    
						    
					  	</div>
					  	<div class="form-row">
						    <div class="col">
						      Nombre: <input type="text" class="form-control" name="nomCliente" placeholder="Nombre del Cliente" disabled="true">
						    </div>
						    <div class="col">
						      Cédula: <input type="text" class="form-control" name="cedula" placeholder="Cédula del Cliente">
						    </div>
					  	</div>
					  	<div class="form-row">
						    <div class="col">
						      Dirección: <input type="text" class="form-control" name="direccion" placeholder="Dirección del Cliente" disabled="true">
						    </div>
						    <div class="col">
						      Teléfono: <input type="text" class="form-control" name="telefono" placeholder="Teléfono del Cliente" disabled="true">
						    </div>
					  	</div>

					  	<?php 
					  
		  		}
		  			?>



		<table class="table table-striped">
		  <thead>
		    <tr>
		      <th scope="col">Prenda</th>
		      <th scope="col">Cantidad</th>
		      <th scope="col">Fecha</th>
		      <th scope="col">Observaciones</th>
		      <th scope="col">Valor</th>
		      <th scope="col">Estado</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<?php 

		  		
		  		
		  		function cargarTablaPorFactura(){
		  			include "recibir.php";
		  			if(isset($_POST["numFactura"]) && $_POST["numFactura"]!="")
					{
						$numFactura=$_POST["numFactura"];
					
		  			$sql="select nom_prenda, cantidad, fecha, observaciones, valor_total, nom_estado FROM prenda, factura_prenda, factura, estado WHERE prenda.cod_prenda = factura_prenda.cod_prenda AND factura_prenda.cod_factura = factura.cod_factura AND factura.cod_estado = estado.cod_estado AND factura.cod_factura =".$numFactura;
			  		$resultado = mysqli_query($mysqli, $sql);
			  		while($filas=mysqli_fetch_assoc($resultado)){
		  	?>
		    <tr>
		      <th scope="row"><input class="form-control" type="text" name="prenda" placeholder="Prenda" value=<?php echo $filas["nom_prenda"];?>></th>
		      <td><input class="form-control" type="number" name="numPrendas" placeholder="Cantidad de prendas" value=<?php echo $filas["cantidad"];?>></td>
		      <td><input class="form-control" type="date" name="fechaRegistro2" value=<?php echo $filas["fecha"];?>></td>
		      <td><textarea class="form-control" id="exampleFormControlTextarea1" name="observacion" rows="3" ><?php echo $filas["observaciones"];?></textarea></td>
		      <td><input class="form-control" type="number" name="valorPrendas" placeholder="Valor prendas" value=<?php echo $filas["valor_total"];?>></td>
		      <td>
		      	<select class="form-control" name="estado">
				  <option value="0"><?php echo $filas["nom_estado"];?></option>
				</select>
			  </td>
		    </tr>
			<?php }
				}
				else{
				echo'<script type="text/javascript">
					    alert("Ingrese un número de factura");
					    </script>';
				}
			}

				if(array_key_exists('cargarTabla', $_POST))
		  		{
		  			cargarTablaPorFactura();
		  		}else{
		  			?>
		  			<tr>
				      <th scope="row"><input class="form-control" type="text" name="2prenda" placeholder="Prenda" ></th>
				      <td><input class="form-control" type="number" name="2numPrendas" placeholder="Cantidad de prendas" ></td>
				      <td><input class="form-control" type="date" name="2fechaRegistro2" ></td>
				      <td><textarea class="form-control" id="exampleFormControlTextarea1" name="2observacion" rows="3" ></textarea></td>
				      <td><input class="form-control" type="number" name="2valorPrendas" placeholder="Valor prendas" ></td>
				      <td>
				      	<select class="form-control" name="2estado">
				      		<option value="0">Seleccione</option>
						  <option value="1">Por Entregar</option>
						  <option value="2">Entregado</option>
						</select>
					  </td>
				    </tr>


		    	<?php
		  		}
				?>
		  </tbody>
		</table>

     

</fieldset>


<fieldset>
	
	<legend>T&eacuterminos legales y condiciones</legend>

	<p>
	Condiciones: Toda p&eacuterdida de la prenda causada por casos fortuitos como robo, incendio, etc, est&aacuten a riesgo del cliente. Pasados 30 d&iacuteas de la fecha de esta recibo cesa la responsabilidad del lavaseco. No respondemos por dinero, joyas u otros objetos dejados en los vestidos. Debido a la inconsistencia de las telas, pa&ntildeos y colores todo trabajo se recibe a riesgo del cliente. No respondemos por encogimiento ni descoloramientos. Toda prenda que sea perdida o cambiada se responde por 10 veces el valor del lavado de la prenda seg&uacuten el art&iacuteculo 2057 del c&oacutedigo de comercio.  
	</p>


	
</fieldset>


  <p>

    <input type="submit" id="boton" name="insertarInformacion" value="Guardar">


  </p>

</form>


		<?php 

		function insertarInfo()
		{
			include 'recibir.php';
			$prenda = $_POST['2prenda'];
			$insertPrenda = "INSERT INTO PRENDA (nom_prenda) VALUES ('$prenda')";

			$pFecha = $_POST['2fechaRegistro2'];
			$pObser = $_POST['2observacion'];
			$pValorT = $_POST['2valorPrendas'];
			$pCodEstado = $_POST['2estado'];
			$pCodCliente = $_POST['cedula'];
			$pCantidad = $_POST['2numPrendas'];

			$numeroFactura = $_POST["numFactura"];



			//$insertNuevaInfo = "INSERT INTO FACTURA (fecha, observaciones, valor_total, cod_estado, cod_cliente) VALUES ('".$pFecha."', '".$pObser."', ".$pValorT.", ".$pCodEstado.", ".$pCodCliente.");";

			$insertarIntermediario = "INSERT INTO factura_prenda (cod_factura, cod_prenda, cantidad) VALUES (".$numeroFactura.", (select max(cod_prenda) from prenda), ".$pCantidad.");";

			if(mysqli_query($mysqli, $insertPrenda) and mysqli_query($mysqli, $insertarIntermediario)){
				echo "Bien";
			}else{
				echo "Error: " . $insertarIntermediario . "<br>" . mysqli_error($mysqli);
			}
		}

		if(array_key_exists('insertarInformacion', $_POST))
		{
  			insertarInfo();
		}
		?>
<div>

</body>
</html>