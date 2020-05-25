<%-- 
    Document   : usuario_Buscar
    Created on : 01-may-2019, 17:56:52
    Author     : Antonio
--%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>

<html>
    <head>
       	<link rel="stylesheet" type="text/css" href="ccs/estilo_admin.css" />
    <br>
    <title>Buscar Usuario</title>
</head>

<body>
    <br>
    <br>
    <br>
    <h2>BUSCAR USUARIO</h2>
    <br>
    <br>
    <br>
    <fieldset style="width:200px;  margin:  0px auto;  border-radius:8px;">
        <br>
        <s:form  action="user_search"> 
            <br>
            <s:textfield name="nif" label="NIF (Buscar)" placeholder="DNI + LETRA" maxlength="9" required="required"/>
            <s:submit  value="Buscar" align="center"/>
        </s:form>
    </fieldset>
    <br>
    <br>
    <br>
    <a href="menu_Admin.jsp"> <img alt="" src="img/icono_devolver.png" width="80" height="80"/></a>
</body>
