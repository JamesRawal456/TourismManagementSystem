<!-- Side bar menu page for dashboard -->
<?php  session_start(); ?>
<div class="bg-sidebar vh-100 w-50 position-fixed">
            <div class="log d-flex justify-content-between">
                <h1 class="E-classe text-start ms-3 ps-1 mt-3 h6 fw-bold">Tourism Management System</h1>
                <i class="far fa-times h4 me-3 close align-self-end d-md-none"></i>
            </div>
            <div class="img-admin d-flex flex-column align-items-center text-center gap-2">
                <img class="rounded-circle" src="packageimages/yy.jpg" alt="img-admin" height="120" width="120">
                <span class="h8 admin-color">Admin</span>
            </div>
            <div class=" bg-list d-flex flex-column align-items-center fw-bold gap-2 mt-4 ">
                <ul class="d-flex flex-column list-unstyled">
                        <li class="h7"><a class="nav-link text-dark" href="dashboard2.php"><span class="colors">Home</span></a></li>
                    <li class="h7"><a class=" nav-link text-dark" href="createpackage.php" > <span class="colors">Add Packages</span></a></li>
                    <li class="h7"><a class=" nav-link text-dark" href="managepackages.php"><span class="colors">Edit Packages</span></a></li>
                    <li class="h7"><a class=" nav-link text-dark" href="manageuser.php"><span class="colors">Manage Users</span></a></li>
                    <li class="h7"><a class=" nav-link text-dark" href="managebooking.php"><span class="colors">Manage bookings</span></a></li>
                    <li class="h7"><a class=" nav-link text-dark" href="manageissues.php"><span class="colors">Manage Issues</span></a></li>
                    <li class="h7"><a class=" nav-link text-dark" href="manageenquires.php"><span class="colors">Manage enquiries</span></a></li>
                </ul>
                <ul class="logout d-flex justify-content-start list-unstyled">
                    <li class=" h7"><a class="nav-link text-dark" href="index.php"><span class="colors">Logout</span><i
                                class="fal fa-sign-out-alt ms-2 colors"></i></a></li>
                </ul>
            </div>

        </div>