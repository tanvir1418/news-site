<?php 
    require 'config.php';
    $userid = $_GET['id'];
    $sql = "DELETE FROM user WHERE user_id = '{$userid}'";

    $result = mysqli_query($conn, $sql) or die("Query Failed");
    if($result){
        header("Location: {$hostname}/admin/users.php");
        //header("Location: users.php");
    }else{
        echo "<p style='color:red; text-align:center; margin: 10px 0;'>Can\'t Delete the User Record.</p>";
    }

    mysqli_close($conn);
?>