<!DOCTYPE html>
<html>
<head>
<title>Shop Stimma | Checkout :: </title>
<?php require "elements/head.php" ?>
</head>
<body>
<!--header-->

<?php require "elements/header.php" ?>

<!--//header-->

<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInLeft;">
				<li><a href="index.php"><span class="glyphicon glyphicon-home" ></span></a></li>
				<li class="active">Замовлення</li>
			</ol>
		</div>
	</div>
	
<div class="contact">
			<div class="container">
				<h3>Замовлення</h3>
				
				<?php

require_once ("elements/parm.php");

if(!isset($_POST['send'])){
    ?>

				<div class="contact-grids">
					<div class="contact-form">
							<form action="checkout.php" method="post">
								<div class="contact-bottom">
								<div class="col-md-4 in-contact">
										<span>Назва товару</span>
										<select name="product">
<?php
$queryC="select id,name from products";

$resultC=mysqli_query($db,$queryC) or die("error products query");

while($nextC=mysqli_fetch_array($resultC)){

$idC=$nextC['id'];
$nameC=$nextC['name'];

echo"<option value='".$idC."'>$nameC</option>";
}
?>
</select><br>
									</div>
									<div class="col-md-4 in-contact">
										<span>Ім'я</span>
										<input type="text" name="name">
									</div>
									<div class="col-md-4 in-contact">
										<span>Пошта</span>
										<input type="text" name="email" >
									</div>
									<div class="col-md-4 in-contact">
										<span>Телефон</span>
										<input type="text" name="phone">
									</div>
									<div class="col-md-4 in-contact">
										<span>Адреса</span>
										<input type="text" name="address">
									</div>
									<div class="clearfix"> </div>
								</div>
							
								<div class="contact-bottom-top">
									<span>Повідомлення</span>
									<textarea  name="comment"> </textarea>								
									</div>
								<input type="submit" name="send" value="Send">
							</form>
						</div>
				<div class="address">
					<div class=" address-more">
						<h2>Адреса</h2>
						<div class="col-md-4 address-grid">
							<i class="glyphicon glyphicon-map-marker"></i>
							<div class="address1">
								<p>Львів</p>
								
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-4 address-grid ">
							<i class="glyphicon glyphicon-phone"></i>
							<div class="address1">
								<p>+380958633313</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-4 address-grid ">
							<i class="glyphicon glyphicon-envelope"></i>
							<div class="address1">
								<p><a href="mailto:@example.com">stimma@gmail.com</a></p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<?php

}elseif (isset($_POST['send']) && !empty($_POST['name']) && !empty($_POST['email']) && !empty($_POST['phone']) && !empty($_POST['comment']) && !empty($_POST['address']) && !empty($_POST['product'])){

    $name=$_POST['name'];
    $email=$_POST['email'];
    $phone=$_POST['phone'];
    $comment=$_POST['comment'];
    $address=$_POST['address'];
	$product=$_POST['product'];

    $query="insert into orders(email,name,phone,comment,address,product) VALUES ('$email','$name','$comment','$phone','$address','$product')";

    $result=mysqli_query($db,$query) or die("error main query");

    echo"Замовлення оформлене, очікуйте на дзвінок! <a href='checkout.php'> Замовити ще</a>";
}

mysqli_close($db);

?>

<?php require "elements/footer.php" ?>
<!--footer-->
</body>
</html>