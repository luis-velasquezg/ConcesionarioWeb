<%-- 
    Document   : login
    Created on : Aug 15, 2018, 12:14:27 PM
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
        
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Hello World!</h1>
        <c:if test="${param.error==1}">
            <font color="red">Usuario invalido. Intentelo de nuevo.</font>
        </c:if>
        <div class="container well">
            <h1>Iniciar Sesion</h1>
            <form action="Servlet?action=iniciarSesion" method="post">
                <table>
                    <tr>
                        <th>
                            <label><b>Correo Electronico:</b></label>
                        </th>
                        <th>
                            <input type="email" placeholder="Ingrese su correo electronico" class="form-control" name="email" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Contrasenna:</b></label>
                        </th>
                        <th>
                            <input type="password" placeholder="Ingrese su contrasenna" class="form-control" name="contrasenna" required=""/>
                        </th>
                    </tr>
                    
                    <div class="break"></div>
                    
                    <tr>
                        <td colspan="3">
                            <input class="btn icon-btn btn-success" type="submit" name="action" value="Ingresar"/>
                            <span class="glyphicon glyphicon-ok"></span>

                            <input class="btn btn-info" type="reset" name="action" value="Limpiar"/>
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
