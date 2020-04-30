<%-- 
    Document   : edit
    Created on : 28/03/2020, 02:46:18 AM
    Author     : julia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuario</title>
    </head>
    <body>
    <center>
        <div>
            <h3>Actualizar persona</h3>
        </div>
        <div>
            <form action="Controlador" method="POST">
                Id:<br/>
                <input type="text" name="textId" value="${persona.getId()}"><br/>
                Nombre:<br/>
                <input type="text" name="textNombre" value="${persona.getNombre()}"><br/>
                Tipo:<br/>
                <input type="text" name="textTipo" value="${persona.getTipo()}"><br/>
                Correo:<br/>
                <input type="email" name="textCorreo" value="${persona.getCorreo()}"><br/>
                <br/>
                <input type="submit" name="accion" value="Actualizar usuario"/>
            </form>
        </div>
    </center>
</body>
</html>
