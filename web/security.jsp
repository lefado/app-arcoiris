<%-- 
    Document   : seguridad
    Created on : Oct 16, 2015, 6:16:39 PM
    Author     : mason

    Permite verificar si la sesion existe o no
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page session="true"%>

<%
    String usuario = "";
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("usuario") == null) {
%>


<jsp:forward page="login.jsp">
    <jsp:param name="error" value="Identification is mandatory"/>
</jsp:forward>


<%
    } else {
        usuario = (String) sesion.getAttribute("usuario");
    }
%>