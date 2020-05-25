

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//ES""http://www.w3.org/TR/html4/loose.dtd">
    <html>
        <head>
            <title>Listado de Asignaturas [Hibernate Spring Struts2]</title>
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
            <h1>Lista de Clases</h1>
             <fieldset style="  margin:  0px auto; background-color:#babec4; border-radius:8px;">
            <table id="tabla" class="display" cellspacing="0" width="100%">
                <thead id="tableHeader" class="tip">
                    <tr>
                        <th>Id</th>
                        <th>NIF Profesor</th>
                        <th>Nombre Asignatura</th>
                        <th bgcolor="Orange">Días Clases</th>
                        <th bgcolor="Orange">Hora Inicio</th>
                        <th bgcolor="Orange">Hora Fin</th>
                        <th>NIF Alumno1</th>
                        <th>NIF Alumno2</th>
                        <th>NIF Alumno3</th>
                        <th>NIF Alumno4</th>
                        <th>NIF Alumno5</th>
                        <th bgcolor="#336699"><font color="#fff">Días Tutorias</font></th>
                        <th bgcolor="#336699"><font color="#fff">Hora Inicio</font></th>
                        <th bgcolor="#336699"><font color="#fff">Hora Fin</font></th>
                        
                    </tr>
                </thead> 
                <s:iterator value="asignaturas">
                    <tr>
                        <td><s:property value="id_asignatura"/></td>
                        <td><s:property value="nif_profesor"/></td>
                        <td><s:property value="nombre_asignatura"/></td>
                        <td><s:property value="dias_clases"/></td>
                        <td><s:property value="hora_inicioC"/></td>
                        <td><s:property value="hora_finC"/></td>
                        <td><s:property value="nif_alumno1"/></td>
                        <td><s:property value="nif_alumno2"/></td>
                        <td><s:property value="nif_alumno3"/></td>
                        <td><s:property value="nif_alumno4"/></td>
                        <td><s:property value="nif_alumno5"/></td>
                        <td><s:property value="dias_tutorias"/></td>
                        <td><s:property value="hora_inicioT"/></td>
                        <td><s:property value="hora_finT"/></td>
                  
                    </tr>
                </s:iterator>
            </table>
             </fieldset>
              <a href="menu_Admin.jsp" align="center"> <img alt="" src="img/icono_devolver.png" width="80" height="80" align="center"/></a>
        </body>
    </html>

    