<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logado</title>
</head>
<body>
	<h2>Logado com sucesso!</h2>
	
	<%String nomeUsuario = (String) session.getAttribute("usuarioautenticado");
		if(nomeUsuario == null)
			throw new ServletException("Nenhum usu�rio logado");
	%>
	
	Seja bem vindo: <%=nomeUsuario %> | <a href="remover.jsp">Sair</a>
	
	<form action="cadastrarLogin.jsp" method="post">
		<table>
			<tr><td colspan="2"><input type="submit" value="Cadastrar" /></td></tr>
		</table>
	</form>
	
</body>
</html>