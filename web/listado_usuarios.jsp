

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//ES""http://www.w3.org/TR/html4/loose.dtd">
    <html>
        <head>
            <title>Lista de Usuarios [Hibernate Spring Struts2]</title>
            <script src="//code.jquery.com/jquery-1.10.2.js"></script>
            <script src="ccs/jquery.js"></script>
            <link rel="stylesheet" type="text/css" href="ccs/listados.css"/> 
            <link rel="stylesheet" type="text/css" href="ccs/estilo_admin.css"/>

             <script>
                    $(document).ready(function() {
                    $('#tabla').DataTable();                     
                } );
            </script>
        </head>
        <body>
            <h1>Lista de Uuarios</h1>
             <fieldset style="  margin:  0px auto; background-color:#babec4; border-radius:8px;">
            <table id="tabla" class="display" cellspacing="0" width="100%">
                <thead id="tableHeader" class="tip">
                    <tr>
                        <th>Id</th>
                        <th>NIF</th>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Móvil</th>
                        <th>EMail</th>
                        <th>Fecha Nacimiento</th>
                        <th>Tipo</th>
                        <th>Usuario</th>
                        <th>Password</th>
                        
                    </tr>
                </thead> 
                <s:iterator value="usuarios">
                    <tr>
                        <td><s:property value="id"/></td>
                        <td><s:property value="nif"/></td>
                        <td><s:property value="nombre"/></td>
                        <td><s:property value="apellidos"/></td>
                        <td><s:property value="movil"/></td>
                        <td><s:property value="email"/></td>
                        <td><s:property value="fecha_nacimiento"/></td>
                        <td><s:property value="tipo"/></td>
                        <td><s:property value="nombre_usuario"/></td>
                        <td><s:property value="password"/></td>
                    </tr>
                </s:iterator>
            </table> 
             </fieldset>
            <a href="menu_Admin.jsp" align="center"> <img alt="" src="img/icono_devolver.png" width="80" height="80" align="center"/></a>
        </body>
    </html>

    