<%-- 
    Document   : catalogoVehiculos
    Created on : Aug 15, 2018, 12:15:10 PM
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
        <title>Catalogo de Vehiculos - Concesionario Web</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Catalogo de Vehiculos</h1>
        <div class="container well">
            <table border="1" class="table table-striped">
                <th scope="row">Matricula</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Anno</th>
                <th>Precio</th>
                <th>Foto</th>
                <c:forEach items="${vehiculos}" var="vehiculo">
                    <%--! estadoVenta = ${vehiculo.estadoCuenta} --%>
                    <%-- if (Integer.parseInt(%>${vehiculo.estadoVenta}<%)==1) { --%>
                        <tr>    
                            <td>${vehiculo.matricula}</td>
                            <td>${vehiculo.marca}</td>
                            <td>${vehiculo.modelo}</td>
                            <td>${vehiculo.anno}</td>
                            <td>${vehiculo.precio}</td>
                            <td><img src="${vehiculo.getFotoBase64()}"></td>
                            <c:if test="${not empty login}">
                                <td>
                                    <a href="Servlet?action=detallesVehiculo&matricula${vehiculo.matricula}">Ver detalles</a>
                                </td>
                            </c:if>
                        </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
