<%-- 
    Document   : index
    Created on : 27/03/2020, 02:07:01 AM
    Author     : julia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <div>
            <div>
                <h3>
                    Lista de usuarios
                </h3>

                <form action="Controlador" method="POST">
                    <input type ="submit" name="accion" value="Listar usuarios"/>
                    <input type ="submit" name="accion" value="Crear nuevo usuario"/>
                    <br/>
                </form>
            </div>  
            <br/>
            <table border="1">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Tipo</th>
                        <th>Correo</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="dato" items="${datos}">
                        <tr>
                            <td>${dato.getId()}</td>
                            <td>${dato.getNombre()}</td>
                            <td>${dato.getTipo()}</td>
                            <td>${dato.getCorreo()}</td>
                            <td>
                                <form action="Controlador" method="POST">
                                    <input type="hidden" name="id" value="${dato.getId()}" />
                                    <input type="submit" name="accion" value="Editar usuario" />
                                    <input type="submit" name="accion" value="Eliminar usuario" />
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

        </div>
    </center>
</body>
</html>
