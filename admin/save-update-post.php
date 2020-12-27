<?php 
    require 'config.php';

    if(empty($_FILES['new-image']['name'])){
        $file_name = $_POST['old_image'];
    }else{
        $errors = array();

        $file_name = $_FILES['new-image']['name'];
        $file_size = $_FILES['new-image']['size'];
        $file_tmp = $_FILES['new-image']['tmp_name'];
        $file_type = $_FILES['new-image']['type'];

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
            move_uploaded_file($file_tmp, "upload/".$file_name);
        }else{
            print_r($errors);
            die();
        }
    }

    $sql = "UPDATE post SET title='{$_POST["post_title"]}', description='{$_POST["postdesc"]}', category={$_POST["category"]}, post_img='{$file_name}' WHERE post_id={$_POST["post_id"]};";

    if($_POST['old_category'] != $_POST['category']){
        $sql .= "UPDATE category SET post=post-1 WHERE category_id = {$_POST['old_category']};";
        $sql .= "UPDATE category SET post=post+1 WHERE category_id = {$_POST['category']};";
    }

    $result = mysqli_multi_query($conn, $sql);

    if($result){
        header("Location: {$hostname}/admin/post.php");
    }else{
        echo "Query Failed". mysqli_error($conn);
    }
    
    /* 
    Problem Exists: In using \'s\ in the description section or any input field. Error description in below
    You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 's Peace Prize. Sadat is a student of Class 12 at Narail Abdul Hye City College. ' at line 1
    */
    
?>

