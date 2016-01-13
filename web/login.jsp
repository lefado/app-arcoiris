
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%/*
    String auth = request.getParameter("auth");
    String mensaje ="";
    if (auth == null)
        auth = "";
    
    if (auth.contentEquals("no")) { 
        mensaje = "Datos incorrectos";
    }
     */%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arcoiris</title>
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <!--
        <script type="text/javascript" src="js/md5.js"></script> 
        -->

    </head>
    <body id="login">            
        <div class="container">

            <!--<label style="color:red;">-->
            <%//=mensaje%>
            <!--</label>-->


            <div class="row">

                <div class="col-lg-12">
                    <legend >Access Form</legend>
                </div>
                
                <div class="col-lg-5">
                    <!-- FORM -->
                                        
                    <form class="form form_login" action="cLogin" method="post">                        
                        <div class="form-group">
                            <label>User:</label>
                            <input class="form-control" type="text" name="f_user" placeholder="Type your user"/>   
                        </div>
                        <div class="form-group">
                            <label>Password:</label>
                            <input class="form-control" type="password" name="f_pass" placeholder="Type your password"/>                        
                        </div>
                        
                        <button type="submit" class="btn btn-default" name="f_sign" value="sign_in">Sign In</button>                                   
                            <button type="reset" class="btn btn-default">Reset</button>   
                            <button type="submit" class="btn btn-default col-lg-offset-5" name="f_sign" value="sign_up">Sign Up</button>  
                           
                        
                    </form>
                </div>

                <!-- Image -->
                <div class="col-lg-2 col-lg-offset-2">
                    <h2>Welcome</h2>
                    <img class="img-responsive" src="images/arco.jpeg" alt="Not Found"/>                    
                </div>
            </div>
        </div>
    </body>
</html>
