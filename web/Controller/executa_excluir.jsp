<%-- 
    Document   : executa_excluir
    Created on : 20 de dez de 2023, 16:32:29
    Author     : joaopedro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import='DAO.ProdutoDAO' %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                    ProdutoDAO prod = new ProdutoDAO();
                    prod.excluir(Integer.parseInt(request.getParameter("codigo")));
                    response.sendRedirect("../index.jsp");
                } catch (Exception e) {
                throw new RuntimeException("Erro na execução de alteração: " + e.getMessage());
                }
        %>
    </body>
</html>
