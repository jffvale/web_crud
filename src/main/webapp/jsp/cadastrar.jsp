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
		<script type='text/javascript' src='script.js'></script>
		<meta http-equiv="content-type" content="text/html" charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style.css">
	</head>

	<body>
		<div id="tudo">
			<div id="conteudo">
				<h1 id="mainheader">Mercearia Joseense</h1>

				<p id="cod">Cadastro e Exclusão de Produtos</p>

				<div>
					<form id="cod1" class="baseForm" action="register" method="get">
				        <label class="formLabel">
				            NOME DO PRODUTO:
				            <input name="nomeProduto" type="text" required class="formInput formTextInput">
				        </label>
				        <label class="formLabel">
				            MARCA:
				            <input name="marca" type="text" required class="formInput formTextInput">
				        </label>
				        <br>
				        <label class="formLabel">
				            TIPO DE EMBALAGEM:
				            <input name="un_embalagem" type="text" required class="formInput formTextInput">
				      	</label>
				      	<br>
				        <label class="formLabel">
				            QUANTIDADE NA EMBALAGEM:
				            <input name="qtde_unitaria" type="text" required class="formInput formTextInput">
				     	</label>
				     	<br>
				     	<label class="formLabel">
				     	    UNIDADE DE MEDIDA:
				            <input name="un_medida" type="text" required class="formInput formTextInput">
				    	</label>
				    	<br>
				    	<label>
				            PREÇO DO PRODUTO:
				            <input name="preco_unitario" type="text" required class="formInput formTextInput">
				    	</label>
				    	<br>
				    	<label>
				            QUANTIDADE COMPRADA:
				            <input name="qtde_estoque" type="text" required class="formInput formTextInput">
				    	</label>
				    	<br>
				        <input id="cod4" type="submit" value="CADASTRAR PRODUTO" class="submitButton" name="button_cadastrar">
				    </form>
				</div>

				<p id="cod5">Insira o código da mercadoria a ser excluída: </p>

				<form id="cod1" action="register">
					<label class="formLabel">
			    	    ID DO PRODUTO:
			            <input name="deleta_produto" type="text" required class="formInput formTextInput">
			    	</label>

			        <input id="cod4" type="submit" value="DELETAR PRODUTO" class="submitButton" name="button_deletar">
			    </form>    

				<div id="cod2">
			    	<table>
			    		<form action="home">
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