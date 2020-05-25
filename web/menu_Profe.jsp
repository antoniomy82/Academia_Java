<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<% if (session.getAttribute("usuario") == null) {
        response.sendRedirect("index.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="ccs/estilo_Profe.css"/>
        <title>Academia AJMY - Acceso Autorizado</title>
    </head>
    <body>
        <br>
        <br>
        <h1>Bienvenido <s:property value="#session.nombre"/> <s:property value="#session.apellidos"/></h1>
        
        <br>
        <br>
        <a href="<s:url action="listmtutoprofe"/>" style="background-color:white"><img alt="" src="img/icono_clase.png" width="90" height="130"/></a>
        <br>
        <br>
        <br>
        <br>
        <a href="<s:url action="list_tuto_profe"/>" style="background-color:white"/> <img alt="" src="img/icono_tutoria.png" width="150" height="90"/></a>
        <br>
        <br>
        <br>
        <br>
        <a href="contacto.jsp"><img alt="" src="img/icono_contacto.png" width="90" height="140" href="contacto.jsp"></a>
        <br>
        <br>
        <br>
        <br>
        <a href="index.jsp"><img alt="" src="img/icono_signout.png" width="90" height="90" href="index.jsp"></a>
    </body>
</html>


