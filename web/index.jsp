<%-- 
    Document   : index
    Created on : Aug 15, 2018, 11:24:44 AM
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Concesionario Web</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <br>
        <c:if test="${not empty cliente}">
            <h1>Bienvenido a la página ${cliente}</h1>
        </c:if>
        <h1>Hello World!</h1>
    </body>
</html>
