<!DOCTYPE html>
<html>
<head>
<title>Shop Stimma | Men :: </title>
<?php require "elements/head.php" ?>
</head>
<body>
<!--header-->

<?php require "elements/header.php" ?>

<!--//header-->

<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 " >
				<li><a href="index.php"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">Для хлопців</li>
			</ol>
		</div>
	</div>
<!--content-->
<div class="products">
	<div class="container">
		<h2>Для нього</h2>
		<div class="col-md-9">
<div class="content-top1">

<?php

require_once("elements/parm.php");

$query="select name,img,price from products where category=2";

$result=mysqli_query($db,$query) or die("error main query");

while($next=mysqli_fetch_array($result)){

$name=$next['name'];
$price=$next['price'];
$img=$next['img'];

?>
<div class="col-md-4 col-md4">
					<div class="col-md1 simpleCart_shelfItem">
						<a href="men.php">
							<img class="img-responsive" src="images/<?= $img ?>" alt="" />
						</a>
						<h3><a href="men.php"><?= $name ?></a></h3>
						<div class="price">
								<h5 class="item_price"><?= $price ?></h5>
								<a href="#" class="item_add">Додати в кошик</a>
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

<?php require "elements/footer.php" ?>

</body>
</html>