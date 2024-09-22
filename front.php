<?php session_start();?>
<?php include('common/connection.php');?>
<?php
	if (!empty($_GET['log'])) 
	{
		session_destroy();
		header('location:front.php');
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title>ENEST-5</title>
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
				<div class="main-img">
					<img src="images/16.png">
				</div>
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
						<p>FEATURED PRODUCTS</p>
					</div>
					<div class="Camera-info">
						<!-- <div class="cam-info"> -->
							<div class="samsung-cam">
								<div class="cam-info">
									<img src="images/sam.png">
									<div class="sam-prc">
										<span>Samsung LED</span>
										<p>Rs.20000</p>
									</div>
									<hr class="hr2">
									<div class="cart-btn">
										<i class="fa fa-plus-circle iconn" aria-hidden="true"></i>
										<!-- <i class="fa fa-shopping-cart" aria-hidden="true"></i> -->
										<i class="fa fa-plus" aria-hidden="true"></i>
										<i class="fa fa-cart-plus" aria-hidden="true"></i>
										<input type="submit" name="" value="Add to cart">
									</div>
								</div>
							</div>
							<div class="nikon-cam">
								<div class="cam-info">
									<img src="images/nk2.jpeg">
									<div class="nik-prc">
										<span>Nikon D7000</span>
										<p>Rs.3000</p>
									</div>
									<hr class="hr2">
									<div class="cart-1-btn">
										<i class="fa fa-plus-circle" aria-hidden="true"></i>
										<!-- <i class="fa fa-shopping-cart" aria-hidden="true"></i> -->
										<i class="fa fa-plus" aria-hidden="true"></i>
										<i class="fa fa-cart-plus" aria-hidden="true"></i>
										<input type="submit" name="" value="Add to cart">
									</div>
								</div>
							</div>
							<div class="kodak-cam">
								<div class="cam-info">
									<img src="images/kod.jpg">
									<div class="kod-prc">
										<span>Kodak Camera</span>
										<p>Rs.3500</p>
									</div>
									<hr class="hr2">
									<div class="cart-2-btn">
										<i class="fa fa-plus-circle" aria-hidden="true"></i>
										<!-- <i class="fa fa-shopping-cart" aria-hidden="true"></i> -->
										<i class="fa fa-plus" aria-hidden="true"></i>
										<i class="fa fa-cart-plus" aria-hidden="true"></i>
										<input type="submit" name="" value="Add to cart">
									</div>
								</div>
							</div>
						<!-- </div> -->
					</div>
					<div class="Camera-info">
						<div class="samsung-cam">
							<div class="cam-info">
								<img src="images/sam-pro.jpg">
								<div class="sam-prc">
									<span>Samsung Projector</span>
									<p>Rs.27950</p>
								</div>
								<hr class="hr2">
								<div class="cart-btn">
									<i class="fa fa-plus-circle" aria-hidden="true"></i>
									<!-- <i class="fa fa-shopping-cart" aria-hidden="true"></i> -->
									<i class="fa fa-plus" aria-hidden="true"></i>
									<i class="fa fa-cart-plus" aria-hidden="true"></i>
									<input type="submit" name="" value="Add to cart">
								</div>
							</div>
						</div>
						<div class="nikon-cam">
							<div class="cam-info">
								<img src="images/sony.png">
								<div class="nik-prc">
									<span>Sony camcorders</span>
									<p>Rs.16000</p>
								</div>
								<hr class="hr2">
								<div class="cart-1-btn">
									<i class="fa fa-cart-plus" aria-hidden="true"></i>
									<!-- <i class="fa fa-shopping-cart" aria-hidden="true"></i> -->
									<i class="fa fa-plus" aria-hidden="true"></i>
									<i class="fa fa-plus-circle" aria-hidden="true"></i>
									<input type="submit" name="" value="Add to cart">
								</div>
							</div>
						</div>
						<div class="kodak-cam">
							<div class="cam-info">
								<img src="images/acer.jpg">
								<div class="kod-prc">
									<span>Acer Monitor</span>
									<p>Rs.15000</p>
								</div>
								<hr class="hr2">
								<div class="cart-2-btn">
									<i class="fa fa-plus-circle" aria-hidden="true"></i>
									<!-- <i class="fa fa-shopping-cart" aria-hidden="true"></i> -->
									<i class="fa fa-plus" aria-hidden="true"></i>
									<i class="fa fa-cart-plus" aria-hidden="true"></i>
									<input type="submit" name="" value="Add to cart">
								</div>
							</div>
						</div>
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