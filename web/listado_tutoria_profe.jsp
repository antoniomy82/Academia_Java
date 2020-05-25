
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//ES""http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Listado de Clases impartidas y horarios</title>
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="ccs/jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="ccs/listados.css"/> 
        <link rel="stylesheet" type="text/css" href="ccs/estilo_alumno.css"/>

        <script>
            $(document).ready(function () {
                $('#asignaturas_t').DataTable();
            });
        </script>
    </head>

    <body>
        <h1>Clases impartidas por <s:property value="#session.nombre"/> <s:property value="#session.apellidos"/>  </h1>
        <br>
        <fieldset style="  margin:  0px auto; background-color:#babec4; border-radius:8px;">      
            <table id="asignaturas_t" class="display" cellspacing="0" width="100%">
                <thead id="tableHeader" class="tip">
                    <tr>
                        <th>Id</th>
                        <th>Nombre Asignatura</th>
                        <th>NIF Alumno</th>
                        <th bgcolor="Orange">Dias Clases</th>
                        <th bgcolor="Orange">Hora Inicio</th>
                        <th bgcolor="Orange">Hora Fin</th>
                        <th bgcolor="#336699"><font color="#fff">Dias Tutorías</font></th>
                        <th bgcolor="#336699"><font color="#fff">Hora Inicio</font></th>
                        <th bgcolor="#336699"><font color="#fff">Hora Fin</font></th>
              

                    </tr>
                </thead>
                <s:iterator value="asignaturas">
                    <tr>                 
                        <td><s:property value="id_asignatura"/></td></td> 
                        <td><s:property value="nombre_asignatura"/></td>
                        <td><s:property value="nif_alumno"/></td>
                        <td><s:property value="dias_clases"/></td>
                        <td><s:property value="hora_inicioC"/></td>
                        <td><s:property value="hora_finC"/></td>
                        <td><s:property value="dias_tutorias"/></td>
                        <td><s:property value="hora_inicioT"/></td>
                        <td><s:property value="hora_finT"/></td>
                   </tr>
                </s:iterator>
            </table>
        </fieldset>
        <br>
    <br>
    <br>
    <a href="menu_Profe.jsp"> <img alt="" src="img/icono_devolver.png" width="80" height="80"/></a>
</body>
</html>
