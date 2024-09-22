<ul>
	<?php
        $query="select * from category";
        $result=mysqli_query($connect,$query);
        while($row=mysqli_fetch_assoc($result))
        {
    ?>
        <a href="product.php?cid=<?php echo $row['id']?>"><li><?php echo $row['categoryname']?></li></a>
    <?php }?>	
</ul>