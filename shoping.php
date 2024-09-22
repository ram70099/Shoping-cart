<?php session_start();?>
<?php include('common/connection.php');?>
<!DOCTYPE html>
<html>
<head>
	<title>ENEST-3</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Bowlby+One+SC|Catamaran&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	
	<div class="main-div">
	<?php include('common/header.php'); ?>
		<div class="null">
			
		</div>
		<div class="main-categorious">
			<div class="footer">
				<div class="categorious">
					<div class="cate-heading">
						<p>CATEGORIES</p>
					</div>
					<div class="items">
					<?php include('common/category.php'); ?>
					</div>
				</div>
				<div class="contact">
					<div class="contact-us">
						<p></p>
					</div>
					<div class="dish-info">
                        <table border="1" width="100%">
                                <tr>
                                    <th>Id</th>
                                    <th>User Nmae</th>
                                    <th>Product Nmae</th>
                                    <th>Qty</th>
                                </tr>
                                <?php
                                    $userid=$_SESSION['userid'];
                                    $query="SELECT * FROM cart c,product p,signup su where c.userid=su.id and c.productid=p.id and c.userid=$userid ";
                                    $result=mysqli_query($connect,$query);
                                    while($row=mysqli_fetch_assoc($result))
                                    {
                                ?>
                                    <tr>
                                        <td><?php echo $row['id'];?></td>
                                        <td><?php echo $row['fullname'];?></td>
                                        <td><?php echo $row['pname'];?></td>
                                        <td><?php echo $row['qunty'];?></td>
                                    </tr>
                                <?php }?>
                        </table>
                        </div>
					</div>
				<div class="list-1">
				<?php include('common/footer.php');?>
				</div>
				<div class="footer-2">
					<p>Copyright <i class="fa fa-copyright" aria-hidden="true"></i>2013 Enest.Privacy Notice</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>