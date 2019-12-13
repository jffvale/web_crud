<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType = "text/html" pageEncoding = "UTF-8" %>
<%@ page import = "java.util.*" %>
<%@ page import = "model.Mercadoria" %>
<html lang="pt-br">

<!DOCTYPE html>
<html>
	<head>
		<title>HTML Projeto Lab Eng de Software</title> 
		<meta name="description" content="Aprendendo a fazer uma página Web">
		<meta http-equiv="content-type" content="text/html" charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="css/style.css">
    </head>

	<body>
		<div id="tudo">
			<div id="conteudo">
				<h1 id="mainheader">Mercearia Joseense</h1>

				<p id="cod">Insira o código da mercadoria</p>
				
				<form id="cod1" action="search1">
					<label class="formLabel">
			            CÓDIGO DO PRODUTO:
			            <input type="text" name="codProduto" required class="formInput formTextInput">
		        	</label>

		        	<input type="submit" name="button_buscar" value="BUSCAR PRODUTO" class="submitButton">
				</form>
			
			    <div id="cod2">
			    	<table>
			    		<form action="">
						<button name="button">HOME</button>
						</form>

					    <form action="stock">
							<button name="button">ESTOQUE</button>
						</form>

			    		<form action="register">
						<button name="button">CADASTRAR PRODUTO</button>
						</form>
					</table>
				</div> <!-- Fim da div#cod2 -->
			</div> <!-- Fim da div#conteudo -->
		</div> <!-- Fim da div#tudo -->

		<div id="footer">
			<footer>
				<p>João de Freitas Filho      
				contato: email@email.com.br</p>
			</footer>
		</div> <!-- Fim da div#footer -->

	</body>
</html>