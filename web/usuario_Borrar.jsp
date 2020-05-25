<%-- 
    Document   : usuario_Borrar
    Created on : 01-may-2019, 17:56:52
    Author     : Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>

<html>
    <head>
       	<link rel="stylesheet" type="text/css" href="ccs/estilo_admin.css" />

        <title>Borrar Usuario</title>
        <style>
        </style>
    </head>

    <body> 
        <br>
        <br>
        <br>
        <h2>BORRAR USUARIO</h2>
        <br>
        <br>
        <br>
        <fieldset style="width:200px;  margin:  0px auto;  border-radius:8px;">
            <s:form  action="user_borrar">  <!-- Por medio de Struts2 el Action llama a UserAction_Borrar -->
                <s:textfield name="nif" label="NIF" placeholder="DNI + LETRA" maxlength="9" required="required"/>		
                <s:submit  value="Borrar" align="center"/>
                <br>
                <br>
            </s:form>
        </fieldset>    
        <br>
        <br>
        <span class="blink_text"><font color="red">¡ATENCIÓN! Cuando pulse borrar, se borrará el usuario cuyo NIF introduzca</font></span>
        <br>
        <br>
        <br>
        <a href="menu_Admin.jsp"> <img alt="" src="img/icono_devolver.png" width="80" height="80"/></a>
    </body>
