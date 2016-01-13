<%-- 
    Document   : listproveedor
    Created on : Oct 15, 2015, 11:48:07 AM
    Author     : mason
--%>


<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="p" class="com.arcoiris.model.Suplier" scope="page"/>
<jsp:useBean id="cx" class="com.arcoiris.model.Connect" scope="page"/>

<div class="table-responsive">
    <table class="table table-hover">
        <tr>
            <th>N</th>
            <th>RUC</th>
            <th>Phone</th>
            <th>Address</th>        
            <th>State</th>
            <th>Action</th>
        </tr>



        <%
            int i = 1;
            ResultSet rs = p.listSuplier();
            while (rs.next()) {
        %>

        <tr>
            <td><%=i%></td>
            <td><%=rs.getString("ruc")%></td>
            <td><%=rs.getString("phone")%></td>
            <td><%=rs.getString("address")%></td>
            <td><%=rs.getString("state")%></td>               
            <td>
                <a href="suplier.jsp?opc=upd&id=<%=rs.getString("idsuplier")%>">[Edit]</a>
                <a href="cSuplier?opc=del&id=<%=rs.getString("idsuplier")%>">[Delete]</a>
            </td>
        </tr>

        <%
                i++;
            }

        %>

    </table>
</div>