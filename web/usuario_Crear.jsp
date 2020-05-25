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
    <br>
    <title>Nuevo Usuario</title>
</head>

<body> 
    <br>
    <h2>ALTA USUARIOS</h2>
    <br>
    <fieldset style="width:200px;  margin:  0px auto;  border-radius:8px;">
        <s:form  action="user_crear">  <!-- java -->
            <tr>

                <td><s:textfield name="nombre" label="Nombre" required="required" maxlength="26" size="26"/></td>
                <td><s:textfield name="apellidos" label="Apellidos" required="required" maxlength="35" size="26"/></td> 
                <td><s:textfield  name="email" label="E-Mail" required="required" maxlength="255" size="26"/></td>
                <td><s:textfield name="nif" label="NIF" placeholder="DNI + LETRA" maxlength="9" size="10" required="required"/></td>
                <td><s:textfield name="movil" label="Móvil" required="required" maxlength="9"   size="10"/></td>
                <td><s:textfield  name="fecha_nacimiento" label="Fecha Nacimiento" placeholder="dd/mm/aaaa" maxLength="10" size="10" id="fNacimiento" required="required" /></td>

                <!-- Pestaña desplegable tipo usuario -->
                <s:select label="Tipo Usuario" name="tipo"
                          list="{'Alumno','Profesor','Administrador'}"
                          headerKey="-1"
                          emptyOption="false"
                          value="Alumno" /></td>


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


            <td> </tr>
            <td> </tr>
            <td> </tr>
            <td><s:submit  value="Guardar" align="center"/></td>
            <td> </tr>
            <td> </tr>
            <td> </tr>
                </tr>   
            </s:form>
    </fieldset>
    <br>
    <br>
    <br>
    <a href="menu_Admin.jsp"> <img alt="" src="img/icono_devolver.png" width="80" height="80"/></a>
</body>
</html>
