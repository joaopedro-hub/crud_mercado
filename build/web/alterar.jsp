<%-- 
    Document   : alterar
    Created on : 20 de dez de 2023, 16:59:17
    Author     : joaopedro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Controller/executa_alterar.jsp" method="post">
            <label>Código:</label>
            <input type="text" name="codigo" value="<%=request.getParameter("codigo")%>"><br>
            
            <label>Descrição:</label>
            <input type="text" name="descricao" value="<%=request.getParameter("descricao")%>"><br>
            
            <label>Preço:</label>
            <input type="text" name="preco" value="<%=request.getParameter("preco")%>"><br>
            
            <button type="submit"> Alterar </button>
        </form>
    </body>
</html>
