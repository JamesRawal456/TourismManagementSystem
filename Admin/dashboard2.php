<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard</title>
<link href="css/bootstrapnew.css" rel='stylesheet' type='text/css' />
<link href="css/workall.css" rel='stylesheet' type='text/css' /> 
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
</head>
<body class="bg-content">
    <main class="dashboard d-flex">
        <!-- start sidebar -->

        <?php 
            include "included/sidebarmenuv2.php";
            include "included/config.php";
            $nbr_users = $con->query("SELECT * FROM tmsusers");
            $nbr_users = $nbr_users->rowCount();

            $nbr_booking = $con->query("SELECT * FROM tmsbooking");
            $nbr_booking = $nbr_booking->rowCount();

            $nbr_enquiry = $con->query("SELECT * FROM tmsenquiry");
            $nbr_enquiry = $nbr_enquiry->rowCount();

            $nbr_packages = $con->query("SELECT * FROM tmstourpackages");
            $nbr_packages = $nbr_packages->rowCount();

            $nbr_issues = $con->query("SELECT * FROM tmsissues");
            $nbr_issues = $nbr_issues->rowCount();


        ?>
        <!-- end sidebar -->

        <!-- start content page -->
        <div class="container-fluid px">
        <?php 
            include "included/headerv2.php";
        ?>
            <div class="cards row gap-3 justify-content-center mt-5">
                <div class=" card__items card__items--blue col-md-3 position-relative">
                    <div class="card__students d-flex flex-column gap-2 mt-3">
                        <i class="far fa-user h3"></i>
                        <span>Total Users</span>
                    </div>
                    <div class="card__nbr-students">
                        <span class="h5 fw-bold nbr"><?php echo $nbr_users; ?></span>
                    </div>
                </div>

                <div class=" card__items card__items--rose col-md-3 position-relative">
                    <div class="card__Course d-flex flex-column gap-2 mt-3">
                        <i class="fal fa-bookmark h3"></i>
                        <span>Bookings</span>
                    </div>
                    <div class="card__nbr-course">
                        <span class="h5 fw-bold nbr"><?php echo $nbr_booking; ?></span>
                    </div>
                </div>

                <div class=" card__items card__items--yellow col-md-3 position-relative">
                    <div class="card__payments d-flex flex-column gap-2 mt-3">
                        <i class="fal fa-usd-square h3"></i>
                        <span>Enquiries</span>
                    </div>
                    <div class="card__payments">
                        <span class="h5 fw-bold nbr"><?php echo $nbr_enquiry; ?></span>
                    </div>
                </div>

                <div class="card__items card__items--gradient col-md-3 position-relative">
                    <div class="card__users d-flex flex-column gap-2 mt-3">
                        <i class="fal fa-book h3"></i>
                        <span>Total Packages</span>
                    </div>
                    <span class="h5 fw-bold nbr"><?php echo $nbr_enquiry; ?></span>
                </div>

                <div class=" card__items card__items--rose col-md-3 position-relative">
                    <div class="card__Course d-flex flex-column gap-2 mt-3">
                        <i class="fal fa-question-circle h3"></i>
                        <span>Issues Raised</span>
                    </div>
                    <div class="card__nbr-course">
                        <span class="h5 fw-bold nbr"><?php echo $nbr_issues; ?></span>
                    </div>
                </div>


              
            </div>

        </div>
        <!-- end contentpage -->
    </main>
    <script src="js/sccs.js"></script>
    <script src="js/bootstrap.bundle.js"></script>
</body>

</html>