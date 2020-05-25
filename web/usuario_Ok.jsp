<%-- 
    Document   : usuarioGuardar
    Created on : 01-may-2019, 17:55:04
    Author     : Antonio
--%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
    <!DOCTYPE html>
    <html>
        <head>
            <link rel="stylesheet" type="text/css" href="ccs/estilo_admin.css" />
            <title>Nuevo usuario</title>
        </head>
        <body>
            <form>
               <h1>Usuario Creado</h1>

            <table>
                <tbody>
                    <tr><td>NIF</td><td><s:property value="nif" /></td></tr>
                    <tr><td>Nombre</td><td><s:property value="nombre" /></td></tr>
                    <tr><td>Apellidos</td><td><s:property value="apellidos" /></td></tr>
                    <tr><td>Teléfono móvil</td><td><s:property value="movil" /></td></tr>
                    <tr><td>E-mail</td><td><s:property value="email" /></td></tr>
                    <tr><td>Fecha Nacimiento</td><td><s:property value="fecha_nacimiento"/></td></tr>
                    <tr><td></td></tr>
                    <tr><td>----------------</td><td>------------------------</td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td>Tipo</td><td><s:property value="tipo"/></td></tr>
                    <tr><td>Usuario</td><td><s:property value="nombre_usuario"/></td></tr>
                    <tr><td>Contraseña</td><td><s:property value="password"/></td></tr>                   
                </tbody>
            </table>
                    <br><br>
                    <a href="menu_Admin.jsp"><img alt="" src="img/menu.png" width="100" height="41"/></a>
                <br><br>
            </form>
        </body>
    </html>