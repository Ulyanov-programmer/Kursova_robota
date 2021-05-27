<?php

require_once ("parm.php");

if(!isset($_POST['send'])){

    ?>

<form action="add_product.php" method="POST" enctype="multipart/form-data">

<input type="text" name="name" placeholder="Назва товару"><br>

<input type="text" name="price" placeholder="Ціна товару"><br>

<input type="file" name="img"><br>

<p>Оберіть категорію товару</p>

<select name="category">
<?php
$queryC="select id,name from products_categories";

$resultC=mysqli_query($db,$queryC) or die("error category query");

while($nextC=mysqli_fetch_array($resultC)){

$idC=$nextC['id'];
$nameC=$nextC['name'];

echo"<option value='".$idC."'>$nameC</option>";
}
?>
</select><br>

<input type="submit" name="send" value="Відправити">

</form>
<?
}else if(isset($_POST['send']) && !empty($_POST['name']) && !empty($_POST['price']) && !empty($_POST['category'])){

$name=$_POST['name'];
$price=$_POST['price'];
$category=$_POST['category'];

if($_FILES['img']['error']==0){
    $filenameTMP=$_FILES['photo']['tmp_name'];
    $filename=time().$_FILES['photo']['name'];
    move_uploaded_file($filenameTMP,"../images/$filename");

    $query="insert into products(name,price,img,category) VALUES ('$name','$price','$filename','$category')";
}else{
    $query="insert into products(name,price,category) VALUES ('$name','$price','$category')";
}

mysqli_query($db,$query) or die("error main query");

echo"Товар успішно доданий<a href='add_product.php'> Додати ще</a><a href='../index.php'> Назад</a>";

}else{

echo"Виникла помилка при додаванні товару";

}

mysqli_close($db);
 ?>