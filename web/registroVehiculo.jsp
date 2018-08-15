<%-- 
    Document   : registroVehiculo
    Created on : Aug 15, 2018, 12:14:52 PM
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
        <title>Registro de Vehiculos - Concesionario Web</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Hello World!</h1>
        <div class="container well">
            <h1>Registrar Vehiculo</h1>
            <form action="Servlet?action=insertarVehiculo" method="post" enctype="multipart/form-data">
                <table>
                    <tr>
                        <th>
                            <label><b>Matricula:</b></label>
                        </th>
                        <th>
                            <input type="text" placeholder="Ingrese matricula" class="form-control" name="matricula" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Marca:</b></label>
                        </th>
                        <th>
                            <input type="text" placeholder="Ingrese marca" class="form-control" name="marca" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Modelo:</b></label>
                        </th>
                        <th>
                            <input type="text" placeholder="Ingrese modelo" class="form-control" name="modelo" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Anno:</b></label>
                        </th>
                        <th>
                            <input type="number" placeholder="Ingrese anno" class="form-control" name="anno" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Foto:</b></label>
                        </th>
                        <th>
                            <input type="file" class="form-control" name="foto" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Precio:</b></label>
                        </th>
                        <th>
                            <input type="number" placeholder="Ingrese precio" class="form-control" name="precio" required=""/>
                        </th>
                    </tr>                 
                </table>
                
                <div class="break"></div>
                <br/>
                
                <table>
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
