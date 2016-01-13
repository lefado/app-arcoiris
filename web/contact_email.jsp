

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

    <body id="contact_email">
        <div class="container">

            <div class="row">

                <jsp:include page="includes/header.jsp"></jsp:include> 

                    <!-- ARTICLE -->
                    <h1>Contact</h1>

                    <section class="col-lg-9 contact" id="contact">

                        <div class="row">
                            <div class="col-lg-12">
                                <h2>Email <i class="fa fa-paper-plane-o"></i></h2>
                            </div>
                        </div>

                        <div class="row">
                            <form method="post" action="" name="contactform" id="contactform">
                                <div class="col-lg-5">
                                    <fieldset>
                                        <input name="name" type="text" id="name" size="30" placeholder="Name">
                                        <br>
                                        <input name="email" type="text" id="email" size="30" placeholder="Email">
                                        <br>
                                        <input name="phone" type="text" id="phone" size="30" placeholder="Phone">
                                        <br>
                                        <input name="human" type="text" id="human" size="30" placeholder="Prove your not a robot... What is 2+2?">
                                        <br>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6">
                                    <fieldset>
                                        <textarea name="comments" cols="40" rows="20" id="comments" placeholder="Message"></textarea>
                                    </fieldset>
                                </div>
                                <div class="col-md-12">
                                    <fieldset>
                                        <button type="submit" class="btn btn-lg" onclick="check_email()" id="submit" value="Submit">Send Message</button>
                                    </fieldset>
                                </div>
                            </form>
                        </div>

                    </section>


                    <!-- ASIDE-->
                    <section class="col-lg-3">
                        <ul class="nav nav-pills nav-stacked">
                            <li id="pill" class="pill2"><a href="contact_social.jsp">Networks</a></li>
                            <li id="pill" class="pill1 active"><a href="contact_email.jsp">Email</a></li>                                 
                        </ul>
                    </section>

                <jsp:include page="includes/footer.jsp"></jsp:include>
            </div>            
        </div>
        <!-- JavaScript -->
        <script src="js/check.js"></script>
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/script.js"></script>
    </body>
</html>
