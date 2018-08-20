<%-- 
    Document   : login
    Created on : Aug 15, 2018, 12:14:27 PM
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
        
        <title>Iniciar Sesión - Concesionario Web</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Concesionario Web</h1>
        <c:if test="${param.error==1}">
            <font color="red">Usuario inválido. Inténtelo de nuevo.</font>
        </c:if>
        <div class="container well">
            <h2>Iniciar Sesión</h2>
            <form action="ConcesionarioServlet?action=iniciarSesion" method="post">
                <table>
                    <tr>
                        <th>
                            <label><b>ID:</b></label>
                        </th>
                        <th>
                            <input type="text" pattern="[0-9]+" placeholder="Ingrese su ID" class="form-control" title="Sólo números" name="id" required />
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Contraseña:</b></label>
                        </th>
                        <th>
                            <input type="password" placeholder="Ingrese su contraseña" class="form-control" name="contrasenna" required />
                        </th>
                    </tr>
                    
<!--                    <div class="break"></div>-->
                    
                    <tr>
                        <td colspan="3">
                            <input class="btn icon-btn btn-success" type="submit" name="action" value="Ingresar"/>
                            <span class="glyphicon glyphicon-ok"></span>

                            <input class="btn btn-info" type="reset" name="action" value="Limpiar"/>
                            <span class="glyphicon glyphicon-remove"></span>
                            
<!--                            <input class="btn btn-info" type="submit" name="action" value="Cancelar"/>
                                    onclick=""
                            <span class="glyphicon glyphicon-home"></span>                            -->
                        </td>
                    </tr>
                    
                </table>
            </form>
        </div>
    </body>
</html>
