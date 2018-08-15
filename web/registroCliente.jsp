<%-- 
    Document   : registroCliente
    Created on : Aug 15, 2018, 12:14:03 PM
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
        <title>Registro de Clientes - Concesionario Web</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Hello World!</h1>
        <div class="container well">
            <h1>Registrar Cliente</h1>
            <form action="Servlet?action=insertarCliente" method="post">
                <table>
                    <tr>
                        <th>
                            <label><b>ID:</b></label>
                        </th>
                        <th>
                            <input type="number" placeholder="Ingrese identificacion" class="form-control" name="id" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Nombres:</b></label>
                        </th>
                        <th>
                            <input type="text" placeholder="Ingrese nombres" class="form-control" name="nombres" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Apellidos:</b></label>
                        </th>
                        <th>
                            <input type="text" placeholder="Ingrese apellidos" class="form-control" name="apellidos" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Correo Electronico:</b></label>
                        </th>
                        <th>
                            <input type="email" placeholder="Ingrese correo electronico" class="form-control" name="email" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Contrasenna:</b></label>
                        </th>
                        <th>
                            <input type="password" placeholder="Ingrese contrasenna" class="form-control" name="contrasenna" required=""/>
                        </th>
                    </tr>
                    
                    <div class="break"></div>
                    
                    <tr>
                        <td colspan="3">
                            <input class="btn icon-btn btn-success" type="submit" name="action" value="Registrar">
                            <span class="glyphicon glyphicon-ok-sign"></span>
                            
                            <input class="btn btn-info" type="reset" name="action" value="Limpiar">
                            <span class="glyphicon glyphicon-remove"></span>
                            
                            <input class="btn btn-info" type="???" name="action" value="Cancelar"/>
                            <span class="glyphicon glyphicon-home"></span>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
