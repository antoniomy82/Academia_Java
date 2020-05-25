
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html;" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>

<html>
    <head>
       	<link rel="stylesheet" type="text/css" href="ccs/estilo_admin.css" />
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">

        <title>Editar Asignaturas</title>

    </head>

    <body> 
        <br><br>
        <h2>Editar/Buscar Asignaturas </h2>
        <fieldset style="width:550px;  margin:  0px auto;  border-radius:8px;">
            <s:form  action="asig_edit">  <!-- struts, AsignaturaAction_Buscar.java --> 

                <br>

                <s:textfield name="id" label="ID_MySQL [Solo Lectura]"  value="%{id_asignatura}" readonly="true" style ="background-color:#fa5d57" size="9"  />
                <s:textfield name="nif_profesor" label="NIF Profesor [Solo Lectura]"  value="%{asig.nif_profesor}" readonly="true" style ="background-color:#fa5d57" align="center" size="9" />
                <s:div>
                    <s:textfield  name="nombre_asignatura" label="Nombre Asignatura"  size="50" value="%{asig.nombre_asignatura}" required="true"/> 

                    <s:textfield  name="dias_clases"  label="Dias de clases" size="30" value="%{asig.dias_clases}" required="true" id="datepicker" style ="background-color:#abb5c6"/>           
                    <s:textfield  name="hora_inicioC" label="Hora Incio"  maxlength="6" size="12" value="%{asig.hora_inicioC}" id="hora_inicioC" style ="background-color:#abb5c6"/>  
                    <s:textfield  name="hora_finC"    label="Hora Fin"     maxlength="6" size="12" value="%{asig.hora_finC}" id="hora_finC" style ="background-color:#abb5c6"/>  
                    <s:textfield  name="nif_alumno1"  label="NIF Alumno1"  maxLength="9" size="12" value="%{asig.nif_alumno1}" />
                    <s:textfield  name="nif_alumno2"  label="NIF Alumno2"  maxLength="9" size="12" value="%{asig.nif_alumno2}" />
                    <s:textfield  name="nif_alumno3"  label="NIF Alumno3"  maxLength="9" size="12" value="%{asig.nif_alumno3}" />
                    <s:textfield  name="nif_alumno4"  label="NIF Alumno4"  maxLength="9" size="12" value="%{asig.nif_alumno4}" />
                    <s:textfield  name="nif_alumno5"  label="NIF Alumno5"  maxLength="9" size="12" value="%{asig.nif_alumno5}" />
                    <s:textfield  name="dias_tutorias" label="Dias de Tutorias" size="30" value="%{asig.dias_tutorias}" required="true" style ="background-color:#fcf6e5"/>           
                    <s:textfield  name="hora_inicioT" label="Hora Incio"  maxlength="6" size="12" value="%{asig.hora_inicioT}" id="hora_inicioT" style ="background-color:#fcf6e5"/>  
                    <s:textfield  name="hora_finT"    label="Hora Fin"    maxlength="6" size="12" value="%{asig.hora_finT}" id="hora_finT" style ="background-color:#fcf6e5"/>  
                </s:div>


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
                <td> </tr>
                <td> </tr>
                    <s:submit  value="Guardar Cambios" align="center"/>
                <td> </tr>
                <td> </tr>
                </s:form>
        </fieldset>
        <br>
        <a href="menu_Admin.jsp"> <img alt="" src="img/icono_devolver.png" width="80" height="80"/></a>
    </body>

</html>
