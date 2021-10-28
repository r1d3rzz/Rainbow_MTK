<?php 
error_reporting(1);
require '../boostrap.php';
	$sql = mysqli_query($con,"DELETE FROM register WHERE id = '{$_GET['id']}'");
	header('location:customer.php');
?>