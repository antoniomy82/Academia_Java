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
            <title>Asignatura Creada</title>
        </head>
        <body>
            <form>
               <h1>Asignatura Creada</h1>

            <table>
                <tbody> <!-- Hacer unas consultas para que me salgan los nombres de los profes y alumnos-->
                    <tr><td>Nombre asignatura</td><td><s:property value="nombre_asignatura" /></td></tr>
                    <tr><td>NIF profesor</td><td><s:property value="nif_profesor" /></td></tr>
                    <tr><td>Dias clase</td><td><s:property value="dias_clases" /></td></tr>
                    <tr><td>Hora inicio clases</td><td><s:property value="hora_inicioC" /></td></tr>
                    <tr><td>Hora fin clase</td><td><s:property value="hora_finC" /></td></tr>
                    <tr><td>NIF Alumno1</td><td><s:property value="nif_alumno1"/></td></tr>
                    <tr><td>NIF Alumno2</td><td><s:property value="nif_alumno2"/></td></tr>
                    <tr><td>NIF Alumno3</td><td><s:property value="nif_alumno3"/></td></tr>
                    <tr><td>NIF Alumno4</td><td><s:property value="nif_alumno4"/></td></tr>
                    <tr><td>NIF Alumno5</td><td><s:property value="nif_alumno5"/></td></tr>
                    <tr><td>Dias tutorias</td><td><s:property value="dias_tutorias" /></td></tr>
                    <tr><td>Hora inicio tutorias</td><td><s:property value="hora_inicioT" /></td></tr>
                    <tr><td>Hora fin tutorias</td><td><s:property value="hora_finT" /></td></tr>
                    <tr><td></td></tr>
                    <tr><td>----------------</td><td>------------------------</td></tr>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <tr><td>ID MySQL</td><td><s:property value="id"/></td></tr>                 
                </tbody>
            </table>
                    <br><br>
                    <a href="menu_Admin.jsp"><img alt="" src="img/menu.png" width="100" height="41"/></a>
                <br><br>
            </form>
        </body>
    </html>