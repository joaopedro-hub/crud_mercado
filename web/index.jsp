<%-- 
    Document   : index.jsp
    Created on : 20 de dez de 2023, 16:35:13
    Author     : joaopedro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produto" %>
<%@page import="java.util.ArrayList" %>
<%@page import="DAO.ProdutoDAO" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="index.jsp" method="post">
            <label>Descrição: </label>
            <input type="text" name="descricao"><br>

            <button type="submit"> Pesquisar </button>


            <%
                try {
                    out.print("<table border='1'>");
                    out.print("<tr>");
                    out.print("<th>Código</th>");
                    out.print("<th>Descrição</th>");
                    out.print("<th>Preço</th>");
                    out.print("<th>Editar</th>");
                    out.print("<th>Excluir</th>");
                    out.print("</tr>");
                    
                    ProdutoDAO prod = new ProdutoDAO();
                    if (request.getParameter("descricao") == "" || request.getParameter("descricao") == null) {
                        ArrayList<Produto> lista = prod.listarTodos();
                        for (int num = 0; num < lista.size(); num++) {
                            out.print("<tr>");
                            out.print("<td>" + lista.get(num).getCodigo_produto() + "</td>");
                            out.print("<td>" + lista.get(num).getDescricao_produto() + "</td>");
                            out.print("<td>" + lista.get(num).getPreco_produto() + "</td>");

                            out.print("<td><a href='alterar.jsp?codigo=" + lista.get(num).getCodigo_produto()
                                    + "&descricao=" + lista.get(num).getDescricao_produto() + "&preco=" + lista.get(num).getPreco_produto() + "'>Clique</a></td>");
                            out.print("<td><a href='excluir.jsp?codigo=" + lista.get(num).getCodigo_produto()
                                    + "&descricao=" + lista.get(num).getDescricao_produto() + "'>Clique</a></td>");
                            out.print("</tr>");
                        }
                    } else {
                        ArrayList<Produto> lista = prod.listarTodosDescricao(request.getParameter("descricao"));
                        for (int num = 0; num < lista.size(); num++) {
                            out.print("<tr>");
                            out.print("<td>" + lista.get(num).getCodigo_produto() + "</td>");
                            out.print("<td>" + lista.get(num).getDescricao_produto() + "</td>");
                            out.print("<td>" + lista.get(num).getPreco_produto() + "</td>");

                            out.print("<td><a href='../alterar.jsp?codigo=" + lista.get(num).getCodigo_produto()
                                    + "&descricao=" + lista.get(num).getDescricao_produto() + "&preco=" + lista.get(num).getPreco_produto() + "'>Clique</a></td>");
                            out.print("<td><a href='../excluir.jsp?codigo=" + lista.get(num).getCodigo_produto()
                                    + "&descricao=" + lista.get(num).getDescricao_produto() + "'>Clique</a></td>");
                            out.print("</tr>");
                        }
                    }
                    out.print("</table>");
                } catch (Exception e) {
                    //throw new RuntimeException(e.getMessage());
                    out.print("Erro na index.jsp: " + e.getMessage());
                }
            %>
            
            <a href="inserir.jsp"> Novo </a><br>
            <!--<a href="View/teste.jsp"> Teste </a>-->
        </form>
    </body>
</html>
