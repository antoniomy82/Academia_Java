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
    <br>
    <title>Borrar Asignatura</title>
</head>

<body> 
    <br>
    <br>
    <br>
    <h2>BORRAR ASIGNATURA</h2>
    <br>
    <br>
    <br>
    <fieldset style="width:200px;  margin:  0px auto;  border-radius:8px;">
        <s:form  action="asig_borrar">  <!-- Por medio de Struts2 llamamos a UserAction_Borrar (Bean)-->

            <s:textfield name="id_asignatura" label="ID (Asignatura)"  maxlength="9" required="required"/>				
            <s:submit  value="Borrar" align="center"/>
            <br>
            <br>
        </s:form>
    </fieldset>
    <br>
    <br>
    <br>
    <span class="blink_text"><font color="red">¡ATENCIÓN! Cuando pulse borrar, se borrará la asignatura cuyo ID introduzca</font></span>
    <br>
    <br>
    <br>
    <a href="menu_Admin.jsp"> <img alt="" src="img/icono_devolver.png" width="80" height="80"/></a>
</body>
</html>