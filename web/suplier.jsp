<%-- 
    Document   : departamento
    Created on : Oct 14, 2015, 1:12:23 PM
    Author     : mason
--%>


<%/*@include file="security.jsp"*/%> <%-- Activate when the website is finish--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="p" class="com.arcoiris.model.Suplier" scope="page"/>
<jsp:useBean id="cx" class="com.arcoiris.model.Connect" scope="page"/>

<%
    String id = "";
    String ruc = "";
    String add = "";
    String pho = "";
    String sta = "";
    String opc = request.getParameter("opc");

    String mensaje = "";
    if (opc == null) {
        opc = "";
    }

    String msj_s = request.getParameter("msj");
    if (msj_s != null) {
        int msj = Integer.valueOf(msj_s);

        switch (msj) {
            case 1:
                mensaje = "Deleted correctly";
                break;
            case 2:
                mensaje = "Error when trying to delete";
                break;
            case 3:
                mensaje = "Updated correctly";
                break;
            case 4:
                mensaje = "Error when trying to update";
                break;
        }
    }
    //}
    if (opc.contentEquals("upd")) {

        id = request.getParameter("id");

        ResultSet rsp = p.searchSuplier(id);
        while (rsp.next()) {
            //idp = rsp.getString(1);            
            ruc = rsp.getString(2);
            pho = rsp.getString(3);
            add = rsp.getString(4);
            sta = rsp.getString(5);
        }
    }
%>

<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">                

        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>    

    <body id="suplier">

        <div class="container">

            <div class="row">

                <jsp:include page="includes/header.jsp"></jsp:include>

                    <!-- ARTICLE-->
                    <h1>Suplier</h1>
                    <section class="col-lg-5">

                        <form class="form" action="cSuplier" method="post">
                            <legend >Suplier Registration</legend>                              
                            
                            
                            <div class="form-group row">
                                <label class="control-label col-lg-2">RUC: </label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="text" name="f_ruc" value="<%= ruc%>" required />   
                                </div>
                            </div>    

                            <div class="form-group row">
                                <label class="control-label col-lg-2">Phone: </label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="number" name="f_phone" value="<%= pho%>" required />   
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-lg-2">Address: </label>
                                <div class="col-lg-8">
                                    <input class="form-control" type="text" name="f_address" value="<%= add%>" required />   
                                </div>
                            </div>
                                
                            <div class="form-group row">
                                <label class="control-label col-lg-2">State </label>
                                <div class="col-lg-8">
                                    <div class="radio">
                                    <label>
                                        <input type="radio" name="f_state" value="1" checked>
                                        Active
                                    </label>
                                    </div>
                                    <div class="radio">
                                    <label>
                                        <input type="radio" name="f_state" value="0">
                                        Inactive
                                    </label>
                                    </div>
                                </div>
                            </div>                                                                                        
                            
                            <% if (opc.contentEquals("upd")) { %> 
                                <input type="hidden" name="f_id" value="<%= id%>"/>
                                <input type="hidden" name="f_opc" value="act">
                                <button type="submit" class="btn btn-default" name="f_actualizar" value="Update">Update</button>                              
                            <% } else {%>
                                <input type="hidden" name="f_opc" value="reg">                                
                                <button type="submit" class="btn btn-default" name="f_guardar" value="Submit">Submit</button>
                            <% }%>

                        </form>
                    </section>
                                
                    <section class="col-lg-6 col-lg-offset-1">
                        <label style="color:red;"><%=mensaje%></label>
                        <jsp:include page="listsuplier.jsp" flush="true" />
                    </section>
                    
                    <jsp:include page="includes/footer.jsp"></jsp:include>
            </div>     
        </div>   

        <!-- JavaScript -->
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/script.js"></script>
    </body>
</html>
