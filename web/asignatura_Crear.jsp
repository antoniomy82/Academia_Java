<%-- 
    Document   : asignatura_Crear
    Created on : 08-may-2019, 18:44:59
    Author     : Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>

<html>
    <head>
       	<link rel="stylesheet" type="text/css" href="ccs/estilo_admin.css" />
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">

        <title>Crear Clase o Asignatura</title>    
    </head>

    <body>        
        <h2>CREAR CLASE O ASIGNATURA</h2>
        <fieldset style="width:600px;  margin:  0px auto;  border-radius:8px;">
            <s:form  action="asig_crear">  <!-- java -->          
                <table>
                    <tr>
                        <td><s:textfield name="nif_profesor" label="NIF Profesor" placeholder="DNI+Letra" maxlength="9" size="10" required="required" ></s:textfield> </td>
                        <td><s:textfield name="nombre_asignatura" label="Nombre asignatura" placeholder="Ej: Matemáticas Discretas" maxlength="50" size="50" required="required"></s:textfield></td>
                        </tr>
                    </table>

                    <table>
                        <tr>
                        <p>HORARIO DE CLASES</p>
                        <p>---------------------------------------------------------------------------------------------------</p>
                        <a><s:checkboxlist list="{'Lunes','Martes','Miercoles','Jueves','Viernes','Sabado'}" value="dias_clases" name="dias_clases"></s:checkboxlist></a>
                    <a><s:textfield label="Inicio" name="hora_inicioC" placeholder="hh:mm" id="hora_inicioC" size="10"/></a>
                    <a><s:textfield label="Final" name="hora_finC" placeholder="hh:mm" id="hora_finC" size="10"/></a>
                    </tr>

                </table>
                <table>
                    <tr>
                    <p>---------------------------------------------------------------------------------------------------</p>
                    <td><s:textfield name="nif_alumno1" label="NIF Alumno1" maxlength="9" placeholder="DNI+Letra" size="10"/></td> <!-- Hacer check-->
                    <td><s:textfield name="nif_alumno2" label="NIF Alumno2" maxlength="9" placeholder="DNI+Letra" size="10"/></td>
                    <td><s:textfield name="nif_alumno3" label="NIF Alumno3" maxlength="9" placeholder="DNI+Letra" size="10"/></td>
                    <td><s:textfield name="nif_alumno4" label="NIF Alumno4" maxlength="9" placeholder="DNI+Letra" size="10"/></td>
                    <td><s:textfield name="nif_alumno5" label="NIF Alumno5" maxlength="9" placeholder="DNI+Letra" size="10"/></td>
                    </tr>
                </table>
                <table>
                    <tr>
                    <p>HORARIO DE TUTORIAS</p>
                    <p>---------------------------------------------------------------------------------------------------</p>
                    <td><s:checkboxlist list="{'Lunes','Martes','Miércoles','Jueves','Viernes','Sábado'}" name="dias_tutorias"></s:checkboxlist></td>
                    <td><s:textfield label="Inicio" name="hora_inicioT" placeholder="hh:mm" id="hora_inicioT" size="10"/></td>
                    <td><s:textfield label="Final" name="hora_finT" placeholder="hh:mm" id="hora_finT" size="10" /></td>
                    </tr>
                </table>


                <!--Timepicker para hora inicial clases-->
                <script>
                    $(document).ready(function () {
                        $("#hora_inicioC").timepicker({
                            timeFormat: 'HH:mm',
                            interval: 15,
                            minTime: '08',
                            maxTime: '22:00',
                            defaultTime: '16',
                            startTime: '08:00',
                            dynamic: false,
                            dropdown: true,
                            scrollbar: true
                        });
                    });
                </script>

                <!--Timepicker para hora final clases-->
                <script>
                    $(document).ready(function () {
                        $("#hora_finC").timepicker({
                            timeFormat: 'HH:mm',
                            interval: 15,
                            minTime: '08',
                            maxTime: '23:00',
                            defaultTime: '17',
                            startTime: '08:00',
                            dynamic: false,
                            dropdown: true,
                            scrollbar: true
                        });
                    });
                </script>
                <!--Timepicker para hora inicio tutorias-->
                <script>
                    $(document).ready(function () {
                        $("#hora_inicioT").timepicker({
                            timeFormat: 'HH:mm',
                            interval: 15,
                            minTime: '08',
                            maxTime: '23:00',
                            defaultTime: '18',
                            startTime: '08:00',
                            dynamic: false,
                            dropdown: true,
                            scrollbar: true
                        });
                    });
                </script>
                <!--Timepicker para hora final tutorias-->
                <script>
                    $(document).ready(function () {
                        $("#hora_finT").timepicker({
                            timeFormat: 'HH:mm',
                            interval: 15,
                            minTime: '08',
                            maxTime: '23:00',
                            defaultTime: '20',
                            startTime: '08:00',
                            dynamic: false,
                            dropdown: true,
                            scrollbar: true
                        });
                    });
                </script>

                <p>---------------------------------------------------------------------------------------------------</p>    
                <a><s:submit value="Crear" align="center"/></a>
                <br></br>

            </s:form>
        </fieldset>
        <a href="menu_Admin.jsp" > <img alt="" src="img/icono_devolver.png" width="80" height="80" align="center"/></a>
    </body>
</html>
