<!doctype html>
<html lang="en">
  <head>
    <title>Rental Mobil Hahay</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.css" >
    <link rel="stylesheet" href="assets/css/font-awesome.css" >
    <link rel="stylesheet" href="assets/image/" >
  </head>
  <body >
    <div class="jumbotron pt-4 pb-4">
        <div class="row">
            <div class="col-sm-8">
                <h2><b style="text-transform:uppercase;"><?= $info_web->nama_rental;?> </b></h2>
            </div>
        </div>
    </div>
    <div style="margin-top:-2pc"></div>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="col-sm-4">
                <right><form class="form-inline" method="get" action="blog.php">
                   <input class="form-control mr-sm-2" type="search" name="cari" placeholder="Cari Nama Mobil" aria-label="Search">
                    <button class="btn btn-primary" type="submit">Search</button>
                </form></div>
        
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item active">
                    <a class="nav-link" href="index.php"><button class="btn btn-primary" type="submit">Home</button> <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="blog.php"><button class="btn btn-primary" type="submit">Daftar Mobil</button></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="kontak.php"><button class="btn btn-primary" type="submit">Kontak Kami</button></a>
                </li>
                  
            <?php if(!empty($_SESSION['USER'])){?>
                <li class="nav-item active">
                    <a class="nav-link" href="history.php"><button class="btn btn-primary" type="submit">History</button></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="profil.php"><button class="btn btn-primary" type="submit">Profil</button></a>
                </li>
            <?php }?>
            </ul>
            <?php if(!empty($_SESSION['USER'])){?>
            <ul class="navbar-nav my-2 my-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="fa fa-user"> </i> Hallo, <?php echo $_SESSION['USER']['nama_pengguna'];?>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" onclick="return confirm('Apakah anda ingin logout ?');" href="<?php echo $url;?>admin/logout.php">Logout</a>
                </li>
            </ul>
            <?php }?>
        </div>
    </nav>