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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <title>Listado de Clientes - Concesionario Web</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Hello World!</h1>
        <div class="container well">
            <table border="1" class="table table-striped">
                <th scope="row">ID</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Correo electronico</th>
                <th>Rol</th>
                <c:forEach items="${clientes}" var="cliente">
                    |${cliente.id}| |${cliente.nombres}| |${cliente.apellidos}| |${cliente.email}| |${cliente.rol}|
                </c:forEach>
            </table>
        </div>
    </body>
</html>
