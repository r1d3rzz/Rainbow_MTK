<?php 
error_reporting(1);
require '../boostrap.php';
	$sql = "DELETE FROM items WHERE img = '{$_GET['img']}'";
	unlink("items/".$_GET['img']);
	rmdir("items/".$_GET['img']);
	$val = mysqli_query($con,$sql);
	header('location:product.php');
?>