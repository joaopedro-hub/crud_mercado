<%-- 
    Document   : excluir
    Created on : 20 de dez de 2023, 16:59:23
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
        <form action="Controller/executa_excluir.jsp" method="post">
            <label>Código:</label>
            <input type="text" name="codigo" value="<%=request.getParameter("codigo")%>"><br>
            
            <label>Descrição:</label>
            <input type="text" name="descricao" value="<%=request.getParameter("descricao")%>"><br>
            
            <button type="submit"> Excluir </button>
        </form>
    </body>
</html>
