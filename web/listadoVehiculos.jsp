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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
            integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            
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
                <th>Año</th>
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
                        <!--<td><img src="${vehiculo.getFotoBase64()}"></td>-->
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>