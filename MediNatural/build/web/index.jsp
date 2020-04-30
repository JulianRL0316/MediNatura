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
        <title>Tabla de registros</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="./styles/index.css" />
        <link rel="stylesheet" href="assets/css/loginandregistro.css" />
        <script src="https://kit.fontawesome.com/f4159b8711.js" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./Assets/styles/table.css" rel="stylesheet" type="text/css"/> 
        
    </head>
    
    <body id="top" class="content-all">
        <nav class="navegation">
            <ul class="menu">
                <li><a id="tabla">Tablas</a>
                    <ul class="submenu">
                        <li><a href="tablaMaestra.html">Ver tablas maestras</a></li>
                    </ul>
                </li>
                <a href="iniciosesion.html"> Inicio Sesión</a>
                <a href="Registro.html"> Registrarse</a>
            </ul>
        </nav>
        
        <div class="main">
            <div class="inner">
                <center>
                    <div>
                        <h3>Lista de usuarios</h3>
                        <form action="Controlador" method="POST">
                            <div class="model-button">
                                <input class="button style2 fit" type ="submit" name="accion" value="Listar usuarios"/>
                                <input class="button style3 fit" type ="submit" name="accion" value="Crear usuario"/>
                                <br/>    
                            </div>    
                        </form>
                    </div>  
                    <br/>
                    <div class="table-wrapper">
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
                                                <input class="button style2 fit" type="submit" name="accion" value="Editar usuario" />
                                                <input class="button fit" type="submit" name="accion" value="Eliminar usuario" />
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
            </div>
        </div>
        
        <footer id="footer">
            <div class="inner">
                <ul class="icons">
                    <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
                    <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                    <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
                    <li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
                </ul>
                <p class="copyright">&copy; MediNatura Todos los derechos reservados 2020</p>
            </div>
        </footer>
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/jquery.scrolly.min.js"></script>
        <script src="assets/js/jquery.poptrox.min.js"></script>
        <script src="assets/js/skel.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>
