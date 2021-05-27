<!DOCTYPE html>
<html>
<head>
<title>Shop Stimma | Products :: </title>
<?php require "elements/head.php" ?>
</head>
<body>
<header>
<?php require "elements/header.php" ?>

<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 ">
				<li><a href="index.php"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">Товари</li>
			</ol>
		</div>
	</div>
<!--content-->
<div class="products">
	<div class="container">
		<h2>Товари</h2>
		<div class="col-md-9">
<div class="content-top1">

<?php

require_once("elements/parm.php");

$query="select name,img,price from products";

$result=mysqli_query($db,$query) or die("error main query");

while($next=mysqli_fetch_array($result)){

$name=$next['name'];
$price=$next['price'];
$img=$next['img'];

?>
<div class="col-md-4 col-md4">
					<div class="col-md1 simpleCart_shelfItem">
						<a href="women.php">
							<img class="img-responsive" src="images/<?= $img ?>" alt="" />
						</a>
						<h3><a href="women.php"><?= $name ?></a></h3>
						<div class="price">
								<h5 class="item_price"><?= $price ?></h5>
								<a href="#" class="item_add">Додати в кошик</a>
								<div class="clearfix"> </div>
						</div>
					</div>
				</div>
<?
}
?>

				</div>
				</div>
			</div>	
		</div>

		<div class="clearfix"> </div>
	</div>
</div>
<!--//content-->
<?php require "elements/footer.php" ?>
</body>
</html>