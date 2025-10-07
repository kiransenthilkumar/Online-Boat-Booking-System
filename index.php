<?php
  session_start();
  include('admin/vendor/inc/config.php');

?>
<!DOCTYPE html>
<html lang="en">
<?php include("vendor/inc/head.php");?>

<body>
    <?php include("vendor/inc/nav.php");?>


    <header>
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">

            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active" style="background-image: url('vendor/img/Slide4.avif')"></div>
                <div class="carousel-item" style="background-image: url('vendor/img/Slide2.avif')"></div>
                <div class="carousel-item" style="background-image: url('vendor/img/Slide1.avif')"></div>
                <div class="carousel-item" style="background-image: url('vendor/img/Slide3.avif')"></div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
        </div>
    </header>

    <div class="container">

        <h1 class="my-4 text-center">Welcome to Online Boat Booking System</h1>


        <hr>

        <h2 class="center">Most Hired Boat</h2>
        <hr>
        <div class="row">
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#"><img class="card-img-top" src="vendor/img/Cruice1.avif" alt=""></a>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#"><img class="card-img-top" src="vendor/img/SpeedBoat.avif" alt=""></a>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#"><img class="card-img-top" src="vendor/img/Cruice2.avif" alt=""></a>
                </div>
            </div>

        </div>
        <!-- /.row -->
            


        <hr>
        <h1 class="my-4">Client Testimonials</h1>

        <div class="row">
            <?php

      $ret="SELECT * FROM tms_feedback where f_status ='Published' ORDER BY RAND() LIMIT 3 "; //get all feedbacks
      $stmt= $mysqli->prepare($ret) ;
      $stmt->execute() ;//ok
      $res=$stmt->get_result();
      $cnt=1;
      while($row=$res->fetch_object())
    {
    ?>
            <!-- Author By: MH RONY
    Author Website: https://developerrony.com
    Github Link: https://github.com/dev-mhrony
    Youtube Link: https://www.youtube.com/channel/UChYhUxkwDNialcxj-OFRcDw
    -->
            <div class="col-lg-6 mb-4">
                <div class="card h-100">
                    <h4 class="card-header"><?php echo $row->f_uname;?></h4>
                    <div class="card-body">
                        <p class="card-text"><?php echo $row->f_content;?></p>
                    </div>
                </div>
            </div>
            <?php }?>
        </div>

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <?php include("vendor/inc/footer.php");?>
    <!--.Footer-->
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        
</body>

</html>