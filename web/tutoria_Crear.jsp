<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<html>
    <head>
       	<link rel="stylesheet" type="text/css" href="ccs/estilo_alumno.css" />
        <title>Crear tutoria</title>
    </head>

    <body> 
        <br><br>
        <h1>Crear tutoria </h1>
        <br><br>


        <fieldset style="width:300px;  margin:  0px auto;  border-radius:8px; border-color: #336699; border-style: solid;">
            <s:form  action="tutoguardar">  
                <table>
                    <tbody>
                    <p> </p>
                    <p> </p>
                    <td><s:textfield name="id_asignatura" label="ID Asignatura"  value="%{masig.id_asignatura}" readonly="true" size="10" /></td>
                    <td><s:textfield name="nif_alumno" label="NIF Alumno"  value="%{#session.usernif}" readonly="true" size="10"/> </td>
                    <td><s:textfield name="nif_profesor" label="NIF Profesor"  value="%{masig.nif_profesor}" readonly="true" size="10" /></td>
                    <td><s:textfield name="nombre_asignatura" label="Nombre Asignatura"  value="%{masig.nombre_asignatura}" readonly="true" size="50" /></td>
                    <td><s:textarea name="mensaje" label="Mensaje" cols="16" rows="2" maxlength="254" required="true"/></td>
                    <td><s:textfield  name="dias_tutorias" label="Día tutoría"  maxLength="30" size="30" id="mitutoria" required="required" /></td>


                        <!--Datepicker Personalizado con formato Español, para seleccionar el día de tutoría -->
                        <script>
                        $.datepicker.regional['es'] = {
                            closeText: 'Cerrar',
                            prevText: '< Ant',
                            nextText: 'Sig >',
                            currentText: 'Hoy',
                            monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
                            monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
                            dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
                            dayNamesShort: ['Dom', 'Lun', 'Mar', 'Mié', 'Juv', 'Vie', 'Sáb'],
                            dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sá'],
                            weekHeader: 'Sm',
                            dateFormat: "DD, d MM, yy",
                            firstDay: 1,
                            isRTL: false,
                            maxPicks: 1,
                            minDate: 0,
                            maxDate: '+3w',
                            beforeShowDay: $.datepicker.weekends,
                            showMonthAfterYear: false,
                            yearSuffix: ''
                        };
                        $.datepicker.setDefaults($.datepicker.regional['es']);
                        $(function () {
                            $("#mitutoria").datepicker({

                                beforeShowDay: function (date) {
                                    var day = date.getDay();
                                    var md1,md2,md3,md4,md5,md6;
                                    
                                    <!-- Muestro solo los días de la semana dónde hay tutoría, haciendo una comparación-->
                                                <s:set name="misdias" value="%{masig.dias_tutorias}"/>
                                                     
                                                <c:if test = "${fn:contains(misdias, 'Lunes')}">md1 = 1;</c:if>

                                                <c:if test = "${fn:contains(misdias, 'Martes')}">md2 = 2;  </c:if>

                                                <c:if test = "${fn:contains(misdias, 'Miércoles')}">md3 = 3; </c:if>

                                                <c:if test = "${fn:contains(misdias, 'Jueves')}"> md4 = 4; </c:if>

                                                <c:if test = "${fn:contains(misdias, 'Viernes')}">md5 = 5; </c:if>

                                                <c:if test = "${fn:contains(misdias, 'Sábado')}">md6 = 6;</c:if>

                                    return [(day === md1)||(day===md2)||(day===md3)||(day===md4)||(day===md5)||(day===md6)];
                                }
                            })
                        });
                        </script>
                        </tbody>

                    <s:submit  value="Enviar" align="center"/>        
                    <p> </p>
                    <p> </p>
                </s:form>
        </fieldset>
        <a href="menu_Alumn.jsp" align="center"> <img alt="" src="img/icono_devolver.png" width="80" height="80"/></a>
    </body>

</html>
