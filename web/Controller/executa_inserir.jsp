<%-- 
    Document   : executa_inserir
    Created on : 20 de dez de 2023, 16:32:43
    Author     : joaopedro
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import='model.Produto' %>
<%@page import='DAO.ProdutoDAO' %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% try {
                Produto pro = new Produto();
                ProdutoDAO prod = new ProdutoDAO();
                
                if (request.getParameter("descricao").equals("") || request.getParameter("preco").equals("")) {               
                        response.sendRedirect("../index.jsp");
                }else{
                        pro.setDescricao_produto(request.getParameter("descricao"));
                        pro.setPreco_produto(Double.parseDouble(request.getParameter("preco")));
                        prod.inserir(pro);
                        response.sendRedirect("../index.jsp");
                }
            } catch (Exception e) {
                throw new RuntimeException("Erro na execução de inserção: " + e.getMessage());
            }
        %>
    </body>
</html>
