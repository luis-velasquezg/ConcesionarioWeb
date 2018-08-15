<%-- 
    Document   : listadoVentas
    Created on : Aug 15, 2018, 12:15:45 PM
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
        <title>Listado de Ventas - Concesionario Web</title>
    </head>
    <body>
        <h1>Listado de Ventas Generales</h1>
        <div class="container well">
            <table border="1" class="table table-striped">
                <th>Matricula</th>
                <th>Propietario</th>
                <th>Fecha de Venta</th>
                <!--<th>Precio</th>-->
                <c:forEach items="$(ventas)" var="venta">
                    <tr>
                        <td>${venta.matriculaVehiculo}</td>
                        <td>${venta.propietario}</td>
                        <td>${venta.fecha}</td>
                        <!--<td>Precio</td>-->
                    </tr>
                </c:forEach>
            </table>
            
            <br/>
            
            <h2>
            <table border="1" class="table table-striped">
                <th>Total Autos</th>
                <th>Venta Total</th>
                <tr>
                    <td>${ventas.totalAutos()}</td>
                    <td>${ventas.ventaTotal()}</td>
                </tr>
            </table>
        </div>
    </body>
</html>
