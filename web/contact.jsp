

<%/*@include file="security.jsp"*/%> <%-- Uncomment when website is totally ready jsp--%>

<% /*
    HttpSession sesionOK = request.getSession();
     */%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arcoiris</title>

        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/bootstrap-social.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

    </head>

    <body id="contact">
        <div class="container">

            <div class="row">

                <jsp:include page="includes/header.jsp"></jsp:include> 

                    <!-- ARTICLE -->
                    <h1>Contact</h1>
                    <section class="col-lg-9">
                        <p>Lorem ipsum dolor sit amet, eam ne nibh zril fastidii, sit cu etiam mollis.Quem odio ad his. Dignissim conceptam contentiones nec in. Ius at facilis intellegebat. Ea quaeque utroque tibique pri, pro id illum debet admodum.</p>
                        <p>Lorem ipsum dolor sit amet, eam ne nibh zril fastidii, sit cu etiam mollis.Quem odio ad his. Dignissim conceptam contentiones nec in. Ius at facilis intellegebat. Ea quaeque utroque tibique pri, pro id illum debet admodum.</p>
                        <p>Lorem ipsum dolor sit amet, eam ne nibh zril fastidii, sit cu etiam mollis.Quem odio ad his. Dignissim conceptam contentiones nec in. Ius at facilis intellegebat. Ea quaeque utroque tibique pri, pro id illum debet admodum.</p>
                        <p>Lorem ipsum dolor sit amet, eam ne nibh zril fastidii, sit cu etiam mollis.Quem odio ad his. Dignissim conceptam contentiones nec in. Ius at facilis intellegebat. Ea quaeque utroque tibique pri, pro id illum debet admodum.</p>                                                                    
                        
                    </section>

                    <!-- ASIDE-->
                    <!-- ASIDE-->
                    <section class="col-lg-3">
                        <ul class="nav nav-pills nav-stacked">
                            <li id="pill" class="pill2"><a href="contact_social.jsp">Networks</a></li>
                            <li id="pill" class="pill1"><a href="contact_email.jsp">Email</a></li>                                 
                        </ul>
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
