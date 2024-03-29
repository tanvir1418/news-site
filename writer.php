<?php include 'header.php'; ?>
<div id="main-content">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <!-- post-container -->
                <div class="post-container">
                    <?php
                    require 'config.php';

                    if(isset($_GET['aid'])){
                        $auth_id = $_GET['aid'];
                    }
                    // Problem $cat_id is coming from header.php where it should be defined in this file
                    $sql1 = "SELECT * FROM post JOIN user
                             ON post.author = user.user_id
                             WHERE post.author = {$auth_id}";
                    $result1 = mysqli_query($conn, $sql1) or die("Query Failed.");
                    $row1 = mysqli_fetch_assoc($result1);
                ?>
                    <h2 class="page-heading">Author: <?php echo $row1['username']; ?></h2>
                    <?php 
                        // require 'config.php';

                        // if(isset($_GET['cid'])){
                        //     $cat_id = $_GET['cid'];
                        // }

                        $limit = 3;
                        
                        if(isset($_GET['page'])){
                            $page = $_GET['page'];
                        }else{
                            $page = 1;
                        }
        
                        $offset = ($page - 1) * $limit;
                        
                        $sql = "SELECT * FROM post
                        LEFT JOIN category ON post.category = category.category_id
                        LEFT JOIN user ON post.author = user.user_id
                        WHERE post.author = '{$auth_id}'
                        ORDER BY post.post_id DESC LIMIT {$offset},{$limit}";
                        
        
                        $result = mysqli_query($conn, $sql) or die("Query Failed.");
                        if(mysqli_num_rows($result) > 0){
                            while($row = mysqli_fetch_assoc($result)){
                    ?>
                    <div class="post-content">
                        <div class="row">
                            <div class="col-md-4">
                                <a class="post-img" href="postinfo.php?id=<?php echo $row['post_id']; ?>"><img
                                        src="admin/upload/<?php echo $row['post_img']; ?>" alt="" /></a>
                            </div>
                            <div class="col-md-8">
                                <div class="inner-content clearfix">
                                    <h3><a
                                            href='postinfo.php?id=<?php echo $row['post_id']; ?>'><?php echo $row['title']; ?></a>
                                    </h3>
                                    <div class="post-information">
                                        <span>
                                            <i class="fa fa-tags" aria-hidden="true"></i>
                                            <a
                                                href='category.php?cid=<?php echo $row['category']; ?>'><?php echo $row['category_name']; ?></a>
                                        </span>
                                        <span>
                                            <i class="fa fa-user" aria-hidden="true"></i>
                                            <a
                                                href='writer.php?aid=<?php echo $row['author']; ?>'><?php echo $row['username']; ?></a>
                                        </span>
                                        <span>
                                            <i class="fa fa-calendar" aria-hidden="true"></i>
                                            <?php echo $row['post_date']; ?>
                                        </span>
                                    </div>
                                    <p class="description"><?php echo substr($row['description'], 0, 130). "..."; ?></p>
                                    <a class='read-more pull-right'
                                        href='postinfo.php?id=<?php echo $row['post_id']; ?>'>read more</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php 
                        }
                    }else{
                        echo "<h2>No Record Found.</h2>";
                    }

                    if(mysqli_num_rows($result1) > 0){

                        $total_records = mysqli_num_rows($result1);
                        
                        $total_page = ceil($total_records / $limit);

                        echo "<ul class='pagination admin-pagination'>";
                        if($page > 1){
                            echo '<li><a href="index.php?aid='.$auth_id.'&page='.($page - 1).'">Prev</a></li>';
                        }
                        
                        for($i=1; $i<=$total_page; $i++){
                            if($i == $page){
                                $active = "active";
                            }else{
                                $active = "";
                            }
                            echo '<li><a class="'.$active.'" href="index.php?aid='.$auth_id.'&page='.$i.'">'.$i.'</a></li>';
                            //echo "<li><a class='{$active}' href='users.php?page={$i}'>{$i}</a></li>";
                        }
                        if($total_page > $page){
                            echo '<li><a href="index.php?aid='.$auth_id.'&page='.($page + 1).'">Next</a></li>';
                        }
                        
                        echo "</ul>";
                    }
                    
                    ?>

                </div><!-- /post-container -->
            </div>
            <?php include 'sidenav.php'; ?>
        </div>
    </div>
</div>
<?php include 'footer.php'; ?>