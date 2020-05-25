 <%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="ccs/estilo.css"/>
        <title>Login Academia Antonio J Morales Yáñez [Spring Struts2 Hibernate] </title>
    </head>
    <body>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <h1>ACADEMIA AJMY</h1>
        <br>
        <br>
        <fieldset style="width:4px;  margin:  0px auto; background-color:#4c5159; border-radius:8px;">
            <s:form action="validar">
                <br>
                <s:textfield name="usuario" label="Usuario" required="required"/>
                <s:password  name="contrasena" label="Contraseña" required="required"/>
                <s:submit value="Entrar" align="Center"/>    
            </s:form> 
        </fieldset>
        <br>
        <br/>
        <br>
        <br>
        <br>
        
        <a href="contacto.jsp"><img alt="" src="img/icono_contacto.png" width="90" height="140" href="contacto.jsp"></a>
       
    </body>
</html>




