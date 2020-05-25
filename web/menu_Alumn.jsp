<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<% if (session.getAttribute("usuario") == null) {
        response.sendRedirect("index.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="ccs/estilo_alumno.css"/>
        <title>Academia AJMY - Acceso Autorizado</title>
    </head>
    <body>
        <br>
        <br>
        <h1>Bienvenido <s:property value="#session.nombre"/> <s:property value="#session.apellidos"/></h1>
        
        <!-- 
        Welcome, <s:property value="#session.usuario"/>  
        <div style="font-weight: bold; text-align: center; font-family: 'Droid Sans', sans-serif; color:#336699; font-size:18px; border:0; ">
            <tr><td>Usuario: </td><td><%= session.getAttribute("usuario") %> , </td></tr>
            <tr><td>NIF: </td><td><%= session.getAttribute("usernif") %>  ,</td></tr>
            <td>Id ( </td><td><%= session.getAttribute("userid") %> )</td></tr> 
        </div>
        -->
        <br>
        <br>
        <a href="<s:url action="listmtuto"/>" style="background-color:white"><img alt="" src="img/icono_clase.png" width="90" height="130"/></a>
        <br>
        <br>
        <br>
        <br>
        <a href="<s:url action="list_tuto"/>" style="background-color:white"/> <img alt="" src="img/icono_tutoria.png" width="150" height="90"/></a>
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


