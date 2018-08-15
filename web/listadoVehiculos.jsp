<%-- 
    Document   : listadoVehiculos
    Created on : Aug 15, 2018, 12:16:11 PM
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <title>Listado de Vehiculos - Concesionario Web</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Listado de Vehiculos</h1>
        <div class="container well">
            <table border="1" class="table table-striped">
                <th scope="row">Matricula</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Anno</th>
                <th>Estado Venta</th>
                <th>Precio</th>
                <th>Foto</th>
                <c:forEach items="${vehiculos}" var="vehiculo">
                    <tr>    
                        <td>${vehiculo.matricula}</td>
                        <td>${vehiculo.marca}</td>
                        <td>${vehiculo.modelo}</td>
                        <td>${vehiculo.anno}</td>
                        <td>${vehiculo.estadoVenta}</td>
                        <td>${vehiculo.precio}</td>
                        <td><img src="${vehiculo.getFotoBase64()}"></td>
                        <% if (0 < 1) { %>
                            <c:if test="${rolCliente=='admin'}">
                                <td>
                                    <a onclick="return confirm('Esta seguro?')" href="Servlet?action=eliminarVehiculo&matricula${vehiculo.matricula}">Eliminar</a>
                                </td>
                            </c:if>
                        <% } else { %>
                            <p> No es menor que 1. </p>
                        <% } %>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>