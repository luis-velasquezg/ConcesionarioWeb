<%-- 
    Document   : busquedaMatricula
    Created on : Aug 15, 2018, 12:15:30 PM
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
        
        <title>Detalles de Vehículos - Concesinario Web</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <h1>Concesinario Web</h1>
        <br/>
        <div class="container well">
            <form action="VehiculoServlet?action=buscarMatricula" method="post">
                <input type="text" name="matricula" placeholder="Buscar matrícula" pattern="[A-Za-z0-9]+" title="Ingrese sólo letras y números" maxlength="6" required />
                <input type="submit" class="btn icon-btn btn-success" name="action" value="Buscar Vehículo"  />
            </form>
            
            <br/>
            
            <c:if test="${param.error==1}">
                <font color="red">La matrícula no fue encontrada. Inténtelo de nuevo.</font>
            </c:if>
            
        </div>
                
        <c:if test="${not empty vehiculo}">
            <div class="container well">
                <table>
                    <tr>
                        <th>
                            <label><b>Matrícula:</b></label>
                        </th>
                        <th>
                            <label>${vehiculo.matricula}</label>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Marca:</b></label>
                        </th>
                        <th>
                            <label>${vehiculo.marca}</label>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Modelo:</b></label>
                        </th>
                        <th>
                            <label>${vehiculo.modelo}</label>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Año:</b></label>
                        </th>
                        <th>
                            <label>${vehiculo.anno}</label>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Estado de Venta:</b></label>
                        </th>
                        <th>
                            <c:if test="${vehiculo.estadoVenta == true}">
                                <label>En venta</label>
                            </c:if>
                            <c:if test="${vehiculo.estadoVenta == false}">
                                <label>Vendido</label>
                            </c:if>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <label><b>Precio:</b></label>
                        </th>
                        <th>
                            <label>$${vehiculo.precio}</label>
                        </th>
                    </tr>
                </table>
            </div>
        </c:if>
        
    </body>
</html>
