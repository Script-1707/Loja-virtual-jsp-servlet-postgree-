<%-- 
    Document   : produtos
    Created on : Jun 26, 2021, 6:09:42 AM
    Author     : script
--%>

<%@page import="ucan.dao.portfolio_Dao"%>
<%@page import="ucan.model.portfolio_model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="../padroes/menu_admin.jsp" %>>

        <h1>Hello World!</h1>

        <%@page import="ucan.dao.produto_Dao"%>
        <jsp:useBean id="produto" class="ucan.model.produto_model" scope="page"> </jsp:useBean>

            <form action="produtos_bean.jsp"  >
            <jsp:setProperty property="*" name="produto"/>
            <legend>Cadastrar Produto</legend>

            <legend>Dados do Produto</legend>
            <table style="width:702px" >

                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <span>Nome do Produto  : </span>
                    </td>
                    <td style="width:564px" >
                        <input name="descricao"  type="text"   value="<%out.println(request.getAttribute("nome"));%>" required>
                    </td>

                </tr>

                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <span>Categoria  : </span>
                    </td>
                    <td style="width:564px" >
                        <input name="categoria" type="text"   value="<%out.println(request.getAttribute("categoria"));%>" required>
                    </td>

                </tr>

                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <span>Imagem </span>
                    </td>
                    <td>
                        <input type="file" name="imagem" src="./upload/" required>
                    </td>
                </tr>
                <tr>

                <tr>
                    <td style="width:2px" >&nbsp;</td>
                    <td style="width:160px" >
                        <span>Detalhes : </span>
                    </td>
                    <td style="width:564px" >
                        <textarea name="detalhes" cols="28" rows="6" required></textarea>
                    </td>

                </tr> 

            </table>

            <input style="margin-left: 20%;background-color:buttonface" type = "submit" name = "bt_gravar" value = "Gravar" />


            <input style="background-color:buttonface;" type = "reset" name = "bt_limpar" value = "Limpar" />
            <input type = "hidden" id = "operacao" name = "operacao" value = "GRAVAR" />        
            <% produto_Dao.salvar(produto);%>


        </form>
    </body>
</html>
