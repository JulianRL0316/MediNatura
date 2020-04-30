<%-- 
    Document   : add
    Created on : 28/03/2020, 02:46:06 AM
    Author     : julia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <div>
            <h3>Agregar usuario</h3>
        </div>
        <div>
            <form action="Controlador" method="POST">
                Id:<br/>
                <input type="text" name="textId"><br/>
                Nombre:<br/>
                <input type="text" name="textNombre"><br/>
                Tipo:<br/>
                <input type="text" name="textTipo"><br/>
                Correo:<br/>
                <input type="email" name="textCorreo"><br/>
                <br/>
                <input type="submit" name="accion" value="Guardar usuario"/>
            </form>
        </div>
    </center>
</body>
</html>
