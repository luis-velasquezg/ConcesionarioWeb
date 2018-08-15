<%-- 
    Document   : listadoClientes
    Created on : Aug 15, 2018, 12:15:59 PM
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
                    <tr>    
                        <td>${cliente.id}</td>
                        <td>${cliente.nombres}</td>
                        <td>${cliente.apellidos}</td>
                        <td>${cliente.email}</td>
                        <td>${cliente.rol}</td>
                        <% if (0 < 1) { %>
                            <c:if test="${rolCliente=='admin'}">
                                <td>
                                    <a onclick="return confirm('Esta seguro?')" href="Servlet?action=eliminarCliente&id${cliente.id}">Eliminar</a>
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
