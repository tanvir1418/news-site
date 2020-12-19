<?php 
    require 'config.php';
    if($_SESSION['user_role'] == '0'){
        header("Location: {$hostname}/admin/post.php");
    }
    $categoryid = $_GET['id'];
    $sql = "DELETE FROM category WHERE category_id = '{$categoryid}'";

    $result = mysqli_query($conn, $sql) or die("Query Failed");
    if($result){
        header("Location: {$hostname}/admin/category.php");
        //header("Location: category.php");
    }else{
        echo "<p style='color:red; text-align:center; margin: 10px 0;'>Can\'t Delete the Category.</p>";
    }

    mysqli_close($conn);
?>