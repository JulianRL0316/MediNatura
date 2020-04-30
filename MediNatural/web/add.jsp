<%@page import="javax.swing.text.html.CSS"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/main.css" rel="stylesheet"  type="text/css"/>
        <title>Agregar Usuario</title>
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
