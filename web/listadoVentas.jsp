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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
            integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            
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
