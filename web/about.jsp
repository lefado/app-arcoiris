<%/*@include file="security.jsp"*/%> <%-- Uncomment when website is totally ready jsp--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arcoiris</title>

        <link href="css/style.css" rel="stylesheet">
        <link href="css/bootstrap.css" rel="stylesheet">



    </head>

    <body id="about">
        <div class="container">

            <div class="row">

                <jsp:include page="includes/header.jsp"></jsp:include> 

                    <h1>About</h1>    
                    <!-- JUMBO TRON -->

                    <div class="jumbotron">
                        <h1>Location</h1>
                        <p><ins>Lorem ipsum dolor sit amet, eam ne nibh zril fastidii</ins>, sit cu etiam mollis. 
                            Quem odio ad his. Dignissim conceptam contentiones nec in. Ius at facilis 
                            intellegebat. <u>Ea quaeque utroque tibique pri,</u> pro id illum debet admodum, 
                            pri meis vocibus consetetur cu. Mei ea ipsum invenire, an lorem mundi virtute pri.
                        </p>    

                        <div class="row">
                            <!-- MAP -->
                            <div class="col-lg-8" id="map-canvas">                                
                            </div>

                            <div class="col-lg-3 col-lg-offset-1">
                                <h3>Address:</h3>
                                <br>Eusebio Barreto Street </br>
                                <br>Los Llanos de Aridane</br>
                                <br>La Palma</br>
                                <br>Canary Islands</br>
                            </div>
                        </div>
                    </div>





                <jsp:include page="includes/footer.jsp"></jsp:include>
            </div>
        </div>
        <!--Google Maps API-->
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnycWatbGyK6ldFqErjFtko1yeMclNUOA&amp;sensor=true"></script>

        <!-- JavaScript -->
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/script.js"></script>
        <script src="js/map.js"></script>
    </body>
</html>
