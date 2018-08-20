<%-- 
    Document   : listadoClientes
    Created on : Aug 15, 2018, 12:15:59 PM
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
            integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            
        <title>Listado de Clientes - Concesionario Web</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Concesionario Web</h1>
        <h2>Listado de Clientes</h2>
        <div class="container well">
            <table border="1" class="table table-striped">
                <th scope="row">ID</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Correo electronico</th>
                <th style="text-align:center;">Rol</th>
                <th></th>
                <c:forEach var="cliente" items="${clientes}">
                    <tr>    
                        <td>${cliente.id}</td>
                        <td>${cliente.nombres}</td>
                        <td>${cliente.apellidos}</td>
                        <td>${cliente.email}</td>
                        <td style="text-align:center;">${cliente.rol}</td>
                        <td style="text-align:center;">
                            <a style="color:red;" onclick="return confirm('¿Está seguro?')" href="ConcesionarioServlet?action=eliminarCliente&id=${cliente.id}">Eliminar</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
