
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

        <title>Editar Usuarios</title>

    </head>

    <body> 
        <br><br>
        <h2>Editar/Buscar Usuarios </h2>
        <fieldset style="width:400px;  margin:  0px auto;  border-radius:8px;">
            <s:form  action="user_edit">  <!-- struts, UserAction_Buscar.java --> 

                <br>

                <s:textfield name="id" label="ID_MySQL [Solo Lectura]"  value="%{user.id}" readonly="true" style ="background-color:#fa5d57" size="9" />
                <s:textfield name="usuario" label="Usuario [Solo Lectura]"  value="%{user.nombre_usuario}" readonly="true" style ="background-color:#fa5d57" size="9"/> 
                <s:textfield name="nif" label="NIF [Solo Lectura]"  value="%{user.nif}" readonly="true" style ="background-color:#fa5d57" size="9" />
                <s:div>
                    <s:textfield name="nombre" label="Nombre"  value="%{user.nombre}" required="true"/> 
                    <s:textfield name="apellidos" label="Apellidos" value="%{user.apellidos}" required="true" />           
                    <s:textfield name="movil" label="Móvil" value="%{user.movil}"/>  
                    <s:textfield  name="email" label="E-Mail" maxlength="255" value="%{user.email}" required="true" />  
                    <s:textfield  name="fecha_nacimiento" label="Fecha Nacimiento"  maxLength="10" id="fNacimiento" value="%{user.fecha_nacimiento}" required="true" />
                    <s:textfield name="password" label="Password" maxlength="9"  value="%{user.password}" required="true" />


                    <!-- Pestaña desplegable tipo usuario -->
                    <s:select label="Tipo Usuario" name="tipo"
                              list="{'Alumno','Profesor','Administrador'}"
                              headerKey="-1"
                              emptyOption="false"
                              value="%{user.tipo}" />


                    <!--Datepicker Personalizado con formato Español + meses y años seleccionables -->
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
                            dateFormat: 'dd/mm/yy',
                            firstDay: 1,
                            isRTL: false,
                            changeYear: true,
                            changeMonth: true,
                            yearRange: "1900:2050",
                            showMonthAfterYear: false,
                            yearSuffix: ''
                        };
                        $.datepicker.setDefaults($.datepicker.regional['es']);
                        $(function () {
                            $("#fNacimiento").datepicker();
                        });
                    </script>
                </s:div>
                <s:submit  value="Editar" align="center"/>
            </s:form>
            <br>
        </fieldset>
        <a href="menu_Admin.jsp"> <img alt="" src="img/icono_devolver.png" width="80" height="80"/></a>
    </body>

</html>
