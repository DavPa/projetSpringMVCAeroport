<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>  
        <meta charset="UTF-8">
        <title>Page d'accueil</title>  
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <style>
            #liens {
                text-align: center;
                
            }
            * {
                font-family:Constantia, "Lucida Bright", "DejaVu Serif", Georgia, "serif";
            }
        </style>
    </head>
    <body>
        <div class="jumbotron text-center">
            <h1>Bienvenue sur l'aéroport en ligne !</h1>
            <p>Dans cet espace retrouvez tous vos vols et réservations</p>
        </div>

        <div class="container">         
            <center><img src="https://www.air-journal.fr/wp-content/uploads/air-journal-aeroport-la-reunion-roland-garros-avions.jpg" class="rounded" alt="Cinque Terre" width="350"></center>
        </div>

        <div id="liens">
            <h3>Cliquez pour accéder à :</h3><br>
            <a href="http://localhost:8080/projetSpringMVCAeroport/client/listClient">La liste des clients</a><br>
            <a href="http://localhost:8080/projetSpringMVCAeroport/reservations/listReservations">La liste des réservations</a><br>
            <a href="http://localhost:8080/projetSpringMVCAeroport/vol/listVol">La liste des vols</a><br>
            <a href="http://localhost:8080/projetSpringMVCAeroport/passager/listPassager">La liste des passagers</a><br>
        </div>
    </body>
</html>