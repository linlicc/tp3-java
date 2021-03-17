<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>App TP3</title>
<style type="text/css">
	.container {
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	
	
	.form-group {
    	display: flex;
		align-items: flex-start;
		margin-bottom: 10px;
	}
	
	table, th, td {
  		border: 1px solid black;
  		width: 50em;
  		text-align: center;
	}
	
	hr {
		position: absolute;
    	margin-top: 206px;
    	width: 43em
    }
    
    h2 {
    	margin-top: 30px;
    }

</style>
</head>
<body>

	<div class="container">

		<h1>TELA DE CADASTRO</h1>

		<form action="/usuario/incluir" method="post">

			<div class="form-group">
				<label style="margin-right: 10px;">Informe o seu nome</label> 
				<input type="text" class="form-control" name="nome">
			</div>

			<div class="form-group">
				<label style="margin-right: 6px;">Informe o seu e-mail</label>
				<input type="email" class="form-control" name="email">
			</div>

			<div class="form-group">
				<label style="margin-right: 10px;">Informe a sua senha</label> 
				<input type="password" class="form-control" name="senha">
			</div>


			<button type="submit">Gravar</button>
		</form>
		
		

		<c:if test="${not empty usuarios}">
		<hr>
			<h2>TABELA DE USUÁRIOS CADASTRADOS</h2>
			<p></p>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Nome</th>
						<th>E-mail</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="u" items="${usuarios}">
						<tr>
							<td>${u.nome}</td>
							<td>${u.email}</td>
							<td><a href="/usuario/${u.id}/excluir">excluir</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>


		<c:if test="${empty usuarios}">
			<p>Nenhum usuário cadastrado!</p>
		</c:if>
	</div>
</body>
</html>