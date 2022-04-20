<?php
    require "config.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>News Site</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.css">
    <!-- Custom stlylesheet -->
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <!-- HEADER -->
    <div id="header">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- LOGO -->
                <div class=" col-md-offset-4 col-md-4">
                    <?php
                require 'config.php';
                $sql = "SELECT * FROM settings";
                $result = mysqli_query($conn, $sql) or die("Query Failed.");
                if(mysqli_num_rows($result) > 0){
                    while($row = mysqli_fetch_assoc($result)){
                        if($row['logo'] == ""){
                            echo '<a href="index.php"><h1>'.$row['websitename'].'</h1></a>';
                        } else{
                            echo '<a href="index.php" id="logo"><img src="admin/images/'.$row['logo'].'"></a>';
                        }
                    }
                } 
            ?>
                </div>
                <!-- /LOGO -->
            </div>
        </div>
    </div>
    <!-- /HEADER -->
    <!-- Menu Bar -->
    <div id="menu-bar">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <?php 
                require 'config.php';

                if(isset($_GET['cid'])){
                    $cat_id = $_GET['cid'];
                }

                $sql = "SELECT * FROM category WHERE post > 0";
                $result = mysqli_query($conn, $sql) or die("Query Failed. : Dynamic Category");
                if(mysqli_num_rows($result) > 0) {
                    $active = "";
            ?>
                    <ul class='menu'>

                        <li><a href="<?php echo $hostname; ?>">Home</a></li>
                        <?php while($row = mysqli_fetch_array($result)) {
                        if(isset($_GET['cid'])){
                            if($row['category_id'] == $cat_id){
                                $active = "active";
                            }else{
                                 $active = "";
                            }
                        }
                        //echo "<li><a class='{$active}' href='category.php?cid={$row['category_name']}'>{$row['category_name']}</a></li>";
                        echo '<li><a class="'.$active.'" href="category.php?cid='.$row['category_id'].'">'.$row['category_name'].'</a></li>';
                    } ?>
                    </ul>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
    <!-- /Menu Bar -->