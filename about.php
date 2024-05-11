<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

    <!-- Header Navbar -->
    <header class="main-header"> 
        <nav class="navbar navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                    <i class="fa fa-bars"></i>
                    </button>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="index.php">HOME</a></li>
                        <li><a href="about.php">ABOUT US</a></li>
                    </ul>
                </div>
                
                <!-- /.navbar-collapse -->
                <!-- Navbar Right Menu -->
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav ">
                        <?php
                            if(isset($_SESSION['user'])){
                            $image = (!empty($user['photo'])) ? 'images/'.$user['photo'] : 'images/profile.jpg';
                            echo '
                                <li class="dropdown user user-menu ">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="'.$image.'" class="user-image" alt="User Image">
                                    <span class="hidden-xs">'.$user['firstname'].' '.$user['lastname'].'</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                    <img src="'.$image.'" class="img-circle" alt="User Image">

                                    <p>
                                        '.$user['firstname'].' '.$user['lastname'].'
                                        <small>Member since '.date('M. Y', strtotime($user['created_on'])).'</small>
                                    </p>
                                    </li>
                                    <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="profile.php" class="btn btn-default btn-flat">Profile</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="logout.php" class="btn btn-default btn-flat">Sign out</a>
                                    </div>
                                    </li>
                                </ul>
                                </li>
                            ';
                            }
                            else{
                            echo "
                                <li><a href='login.php'>LOGIN</a></li>
                                <li><a href='signup.php'>SIGNUP</a></li>
                            ";
                            }
                        ?>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <!-- Header Navbar -->
	 
	<div class="content-wrapper">
        <div class="container">

            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <div class="col-sm-9">
                        <?php
                            if(isset($_SESSION['error'])){
                                echo "
                                    <div class='alert alert-danger'>
                                        ".$_SESSION['error']."
                                    </div>
                                ";
                                unset($_SESSION['error']);
                            }
                        ?>
                        
                        <h2>Information</h2>

                        <div id="carousel-example-generic" class="carousel slide my-5" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                <li data-target="#carousel-example-generic" data-slide-to="3" class=""></li>
                                <li data-target="#carousel-example-generic" data-slide-to="4" class=""></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="images/a.jpg" alt="First slide">
                                </div>

                                <div class="item">
                                    <img src="images/b.jpg" alt="Second slide">
                                </div>
                                
                                <div class="item">
                                    <img src="images/c.jpg" alt="Third slide">
                                </div>

                                <div class="item">
                                    <img src="images/d.jpg" alt="Fourth slide">
                                </div>
                                <div class="item">
                                    <img src="images/e.jpg" alt="Five slide">
                                </div>
                            </div>

                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="fa fa-angle-left"></span>
                            </a>

                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="fa fa-angle-right"></span>
                            </a>
                        </div>  
                    </div>

                    <!-- Sidebar -->
                    <div class="col-sm-3">
                            <div class="row">
                                <div class="box box-solid">
                                    <div class="box-header with-border">
                                        <h3 class="box-title"><b>Become a Subscriber</b></h3>
                                    </div>
                                    <div class="box-body">
                                        <p>Get free updates on the latest products and discounts, straight to your inbox.</p>
                                        <form method="POST" action="">
                                            <div class="input-group">
                                                <input type="text" class="form-control">
                                                <span class="input-group-btn">
                                                    <button type="button" class="btn btn-info btn-flat"><i class="fa fa-envelope"></i> </button>
                                                </span>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class='box box-solid'>
                                    <div class='box-header with-border'>
                                        <h3 class='box-title'><b>Follow us on Social Media</b></h3>
                                    </div>
                                    <div class='box-body'>
                                        <a class="btn btn-social-icon btn-facebook"><i class="fa fa-facebook"></i></a>
                                        <a class="btn btn-social-icon btn-twitter"><i class="fa fa-twitter"></i></a>
                                        <a class="btn btn-social-icon btn-instagram"><i class="fa fa-instagram"></i></a>
                                        <a class="btn btn-social-icon btn-google"><i class="fa fa-google-plus"></i></a>
                                        <a class="btn btn-social-icon btn-linkedin"><i class="fa fa-linkedin"></i></a>
                                    </div>
                                </div>
                            </div>
                    </div>
                    <!-- Sidebar -->

                </div>
            </section>
            <!-- Main content -->

        </div>
	</div>
    
    <!-- Footer -->
  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>