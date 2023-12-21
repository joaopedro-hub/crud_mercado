<%-- 
    Document   : inserir
    Created on : 20 de dez de 2023, 16:59:06
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
        <form action="Controller/executa_inserir.jsp" method="post">
            <!-- <label>Código:</label>
            <input type="text" name="codigo"><br> -->
            
            <label>Descrição:</label>
            <input type="text" name="descricao"><br>
            
            <label>Preço:</label>
            <input type="text" name="preco"><br>
            
            <button type="submit"> Salvar </button>
        </form>
        
        <a href="index.jsp"> Voltar </a>
    </body>
</html>
