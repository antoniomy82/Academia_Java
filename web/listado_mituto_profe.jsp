<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//ES""http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Listado de solicitudes de tutorias</title>
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="ccs/jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="ccs/listados.css"/> 
        <link rel="stylesheet" type="text/css" href="ccs/estilo_alumno.css"/>

        <script>
            $(document).ready(function () {
                $('#mistutos').DataTable();
            });
        </script>
    </head>

    <body>
        <br>
        <h1>Tutorias acordadas por <s:property value="#session.nombre"/> <s:property value="#session.apellidos"/>  </h1>
        <br>
        <fieldset style="  margin:  0px auto; background-color:#babec4; border-radius:8px;">
            <table id="mistutos" class="display" cellspacing="0" width="100%">
                <thead id="tableHeader" class="tip">
                    <tr>
                        <th>Id Tutoria</th>
                        <th>Nombre Asignatura</th>
                        <th>NIF Alumno</th>
                        <th bgcolor="#336699"><font color="#fff">Dia Tutoría</font></th>
                        <th bgcolor="#336699"><font color="#fff">Mensaje</font></th>
                        <th bgcolor="#336699"><font color="#fff">Leido</font></th>
                  
                    </tr>
                </thead> 
                <s:iterator value="tutorias">
                    <tr>
                        <td><s:property value="id_tuto"/></td>
                        <td><s:property value="nombre_asignatura"/></td>
                        <td><s:property value="nif_alumno"/></td>
                        <td><s:property value="dia_tutoria"/></td>
                        <td><s:property value="mensaje"/></td>
                        <td><s:if test="%{leido==0}"><img alt="" src="img/tutoNoConfirmada.png" width="40" height="40"/></s:if> 
                            <s:else><img alt="" src="img/tutoConfirmada.png" width="40" height="40"/></s:else></td>
                        </tr>
                </s:iterator>
            </table>
        </fieldset>
        <s:form action="tutoleido">
        <td><s:textfield name="id_tuto" label="ID Tutoría"  placeholder="Intruduzca ID" size="15" required="required" /></td>
        <td><s:submit value="Confirmar tutoría"/></td> 
    </s:form>
        <br>
    <a href="menu_Profe.jsp"> <img alt="" src="img/icono_devolver.png" width="80" height="80"/></a>
</body>
</html>
