<%-- 
    Document   : registration
    Created on : Jan 5, 2016, 12:05:48 PM
    Author     : mason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arcoiris-Registration</title>
        
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body id="login">            
        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <legend >Registration Form</legend>
                </div>

                <div class="col-lg-5">
                    <!-- FORM -->
                    <form class="form form_login" id="registration_form" action="cLogin" method="post">                        
                        <div class="form-group">
                            <label>User:</label>
                            <input class="form-control" type="text" name="f_user" placeholder="Type your user" required />   
                        </div>
                        <div class="form-group">
                            <label>Password:</label>
                            <input class="form-control" type="password" id="pass1" name="f_pass" placeholder="Type your password" required />                        
                        </div>
                        <div class="form-group">
                            <label>Repite Password:</label>
                            <input class="form-control" onblur="check_pass()" type="password" id="pass2" name="f_pass2" placeholder="Type your password" required />                        
                        </div>
                        <div class="form-group">
                            <label>Name:</label>
                            <input class="form-control" type="text" name="f_name" placeholder="Type your user" required />   
                        </div>
                        <div class="form-group">
                            <label>Last Name:</label>
                            <input class="form-control" type="text" name="f_lastname" placeholder="Type your user" required />   
                        </div>


                        <button type="submit" class="btn btn-default" name="f_sign" value="registration">Register</button>                                   
                        <button type="reset" class="btn btn-default">Reset</button>   
                        


                    </form>
                </div>
            </div>
        </div>
        <script src="js/check.js"></script>
    </body>
</html>
