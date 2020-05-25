
<%@page import="java.util.Calendar"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<% if (session.getAttribute("usuario") == null) {
        response.sendRedirect("index.jsp");
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="ccs/estilo_admin.css"/>
        <title>Academia AJMY - Acceso Autorizado</title>
    </head>
    <body>
        <fieldset style="width:600px;  margin:  0px auto;  border-radius:8px;">
            <h1>Menú Administrador</h1>
            <p style="color:#4f8cef;"><strong>Bienvenido <s:property value="#session.nombre"/> <s:property value="#session.apellidos"/></strong></p>
        </fielset>
        <br>
        <br>
        <br>
        <fieldset style="width:600px;  margin:  0px auto;  border-radius:8px;">
            <br>

            <div >
                <a href="<s:url action="listadoUser"/>"> <img src="img/userLista.png" width="100" height="120" title="Listado Usuarios"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <a href="usuario_Crear.jsp" style="background-color:white" /> <img src="img/userCrear.png" width="100" height="120" title="Crear Usuario"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <a href="usuario_Borrar.jsp" style="background-color:white" /><img src="img/userBorrar.png" width="100" height="120" title="Borrar Usuario"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <a href="usuario_Buscar.jsp" style="background-color:white" /> <img src="img/userBuscaEdit.png" width="100" height="120" title="Buscar / Editar"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>

            <br>
            <br>
            <br>
            <br>

            <div style="text-align: center">
                <a href="<s:url action="listadoAsig"/>"><img src="img/asignaturaList.png" width="100" height="120" title="Listado Asignaturas"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <a href="asignatura_Crear.jsp"/> <img src="img/asignaturaCrear.png" width="100" height="120" title="Crear Clase"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <a href="asignatura_Borrar.jsp"/> <img src="img/asignaturaBorrar.png" width="100" height="120" title="Borrar Clase"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <a href="asignatura_Buscar.jsp"/> <img src="img/asignaturaBuscarEdit.png" width="100" height="120" title="Buscar Editar Clase"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
            </div>
        </fieldset>
        <br>
        <br>
        <br>
        <a href="index.jsp"><img alt="" src="img/icono_signout.png" width="90" height="90" href="index.jsp"></a>

</body>
</html>


