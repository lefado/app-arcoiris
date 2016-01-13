

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
        <link href="css/email.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

    </head>

    <body id="contact_social">
        <div class="container">

            <div class="row">

                <jsp:include page="includes/header.jsp"></jsp:include> 

                    <!-- ARTICLE -->
                    <h1>Contact</h1>
                    <section class="col-lg-9">
                        <h2>Social Network</h2>
                        <p>If you like our website, you can share it with your friends</p>
                        <p>...</p>
                        <p>...</p>
                        <p>...</p>
                        <a class="btn btn-social-icon btn-twitter">
                            <span class="fa fa-twitter"></span>
                        </a>
                        <a class="btn btn-social-icon btn-facebook">
                            <span class="fa fa-facebook"></span>
                        </a>
                        <a class="btn btn-social-icon btn-google">
                            <span class="fa fa-google-plus"></span>
                        </a>

                    </section>

                    <!-- ASIDE-->
                    <section class="col-lg-3">
                        <ul class="nav nav-pills nav-stacked">
                            <li id="pill" class="pill2 active"><a href="contact_social.jsp">Networks</a></li>
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
