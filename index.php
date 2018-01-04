<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>SI-SMA</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/style.css" rel="stylesheet">

    <link rel="stylesheet" href="css/export.css" type="text/css" media="all" />
</head>

<body>
    <?php
        if(! isset ($_GET['menu']))
        {
            $_GET['menu']="";
        }
    ?>

    <!-- Start your project here-->
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-default">
            <a class="navbar-brand" href="#"><strong>SI-SMA</strong></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php?menu=nilai">Sampel Perbandingan Nilai</a>
                    </li>
                </ul>
                <ul class="navbar-nav nav-flex-icons">
                    <li class="nav-item">
                        <a class="nav-link"><i class="fa fa-facebook"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"><i class="fa fa-twitter"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"><i class="fa fa-instagram"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
        
    <!--Main Layout-->
    <main class="text-center py-5 mt-3">
        <div class="container">   
            <div class="row">
                <div class="col-md-12">
                    <?php
                        include ("config.php");
                        $var=$_GET['menu'];

                        if ($var=="nilai")
                        {
                            include("nilai.php");
                        }
                        else
                        {
                            include("nilai.php");
                        }
                    ?>  

                </div>
            </div>
        </div>
    </main>
    <!--Main Layout-->
        
                
    <!-- /Start your project here-->
    <script src="js/amcharts.js"></script>
    <script src="js/serial.js"></script>
    <script src="js/export.min.js"></script>
    <script src="js/light.js"></script>

     <?php
        include ("config.php");
        $var=$_GET['menu'];
        if ($var=="nilai")
        {
            include("nilaijs.php");
        }
        else
        {
            include("nilaijs.php");
        }
    ?>  
   
    <!-- SCRIPTS -->
    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
</body>

</html>
