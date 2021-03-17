<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="container" style="display: flex;">
	
		Tela CADASTRO >>> <a href="/">home</a>
		
		<form action="/usuario/incluir" method="post">
		
			<div class="form-group">			
			<label>Informe o seu nome</label>
			<input type="text" class="form-control" name="nome">
			</div>

			<div class="form-group">			
			<label>Informe o seu e-mail</label>
			<input type="email" class="form-control" name="email">
			</div>
						
			<div class="form-group">			
			<label>Informe a sua senha</label>
			<input type="texst" class="form-control" name="senha">
			</div>

			
			<button type="submit">Gravar</button>	
		</form>
		
	</div>

</body>
</html>