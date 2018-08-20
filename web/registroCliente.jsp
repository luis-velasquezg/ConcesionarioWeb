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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
            integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        
        <title>Registro de Clientes - Concesionario Web</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Concesionario Web</h1>
        <div class="container well">
            <h2>Registrar Cliente</h2>
            <form action="ConcesionarioServlet?action=insertarCliente" method="post">
                <table>
                    <tr>
                        <th>
                            <label><b>ID:</b></label>
                        </th>
                        <th>
                            <input type="text" placeholder="Ingrese identificación" pattern="[0-9]+" title="Sólo números" class="form-control" name="id" required>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Nombres:</b></label>
                        </th>
                        <th>
                            <input type="text" placeholder="Ingrese nombres" pattern="[A-Za-zÁÉÍÓÚáéíóú\s]+" class="form-control" name="nombres" required>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Apellidos:</b></label>
                        </th>
                        <th>
                            <input type="text" placeholder="Ingrese apellidos" pattern="[A-Za-zÁÉÍÓÚáéíóú\s]+" class="form-control" name="apellidos" required>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Correo Electrónico:</b></label>
                        </th>
                        <th>
                            <input type="email" placeholder="Ingrese correo electrónico" class="form-control" name="email" required>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Contraseña:</b></label>
                        </th>
                        <th>
                            <input type="password" placeholder="Ingrese contraseña" class="form-control" name="contrasenna" required>
                        </th>
                    </tr>
                    
                    <div class="break"></div>
                    
                    <tr>
                        <td colspan="3">
                            <input class="btn icon-btn btn-success" type="submit" name="action" value="Registrar">
                            <span class="glyphicon glyphicon-ok-sign"></span>
                            
                            <input class="btn btn-info" type="reset" name="action" value="Limpiar">
                            <span class="glyphicon glyphicon-remove"></span>
                            
<!--                            <input class="btn btn-info" type="???" name="action" value="Cancelar"/>
                            <span class="glyphicon glyphicon-home"></span>-->
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
