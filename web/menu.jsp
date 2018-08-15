<%-- 
    Document   : menu
    Created on : Aug 15, 2018, 12:14:36 PM
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

|<a href="index.jsp">Inicio</a>|
|<a href="catalogoVehiculos.jsp">Catálogo de Vehículos</a>|
|<a href="busquedaMatricula.jsp">Buscar por Matrícula</a>|

<c:if test="${empty login}">
    |<a href="inicioSesion.jsp">Iniciar Sesión</a>|
    |<a href="registroCliente.jsp">Registrarse</a>|
</c:if>
<c:if test="${not empty login}">
    <c:if test="${rol eq 'admin'}"> <%-- test="${rol=='admin'}" --%>
        |<a href="registroVehiculo.jsp">Registrar Vehículo</a>|
        |<a href="listadoVentas.jsp">Ventas Generales</a>|
        |<a href="listadoClientes.jsp">Listado de Clientes</a>|
        |<a href="listadoVehiculos.jsp">Listado de Vehículos</a>|
    </c:if>
    <c:otherwise>
        
    </c:otherwise>
    |<a href="Servlet?action=logout">Cerrar Sesión</a>|
</c:if>
|<a href="about.jsp">About</a