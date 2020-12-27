<?php 
    require 'config.php';

    if(empty($_FILES['logo']['name'])){
        $file_name = $_POST['old_logo'];
    }else{
        $errors = array();

        $file_name = $_FILES['logo']['name'];
        $file_size = $_FILES['logo']['size'];
        $file_tmp = $_FILES['logo']['tmp_name'];
        $file_type = $_FILES['logo']['type'];

        //Best practice is to use pathinfo function instead of explode function.
        //$text = end(explode('.',$file_name));
        //$file_ext = strtolower($text);
        $file_ext = pathinfo($file_name, PATHINFO_EXTENSION);
        $extensions = array("jpeg", "jpg", "png");

        if(in_array($file_ext, $extensions) === false){
            $errors[] = "This extension file not allowed, Please choose a JPG, JPEG or PNG file.";
        }
        if($file_size > 2097152){
            $errors[] = "File size must be 2 mb or lower.";
        }

        if(empty($errors) == true){
            move_uploaded_file($file_tmp, "images/".$file_name);
        }else{
            print_r($errors);
            die();
        }
    }

    $sql = "UPDATE settings SET websitename='{$_POST["website_name"]}', logo='{$file_name}', footerdesc='{$_POST["footer_desc"]}'";

    //echo $sql;
    //die();

    $result = mysqli_query($conn, $sql);

    

    if($result){
        header("Location: {$hostname}/admin/settings.php");
    }else{
        echo "Query Failed";
    }
?>