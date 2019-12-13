<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType = "text/html" pageEncoding = "UTF-8" %>
<%@ page import = "java.util.*" %>
<%@ page import = "model.Mercadoria" %>
<html lang="pt-br">
	<head>
		<title>HTML Projeto Lab Eng de Software</title> 
		<meta name="description" content="Aprendendo a fazer uma página Web">
		<meta http-equiv="content-type" content="text/html" charset="UTF-8">
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
				
				<p id="cod3">Resultado da Busca</p>
				<table>
					<tbody>
						<tr>
				            <th>Cód</th>
				            <th>nome</th>
				            <th>marca do produto</th>
				            <th>quantidade</th>
				            <th>un. medida</th>
				            <th>preço/unidade</th>
				            <th>qtde estoque</th>
				            <th>embalagem</th>
				        </tr>
						<%
			                List<Mercadoria> Mercadorias = (List<Mercadoria>) request.getAttribute("mercadoria");
			                for ( Mercadoria mi : Mercadorias ){
			                    out.print("<tr>");
			                    out.print("<td>" + mi.getId() + "</td>");
			                    out.print("<td>" + mi.getNome() + "</td>");
			                    out.print("<td>" + mi.getMarca() + "</td>");
			                    out.print("<td>" + mi.getQtde_unit() + "</td>");
			                    out.print("<td>" + mi.getUn_medida() + "</td>");
			                    out.print("<td>" + "R$ " + String.format("%.2f", mi.getPreco_unit()) + "</td>");
			                    out.print("<td>" + mi.getQtde_estoque() + "</td>");
			                    out.print("<td>" + mi.getUn_emb() + "</td>");
			                    out.print("</tr>");
			                }
			            %>

			        </tbody>
			    </table>

			    <form action="buy">
					<button id="btnComprar" name="button">CONFIRMAR COMPRA</button>
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