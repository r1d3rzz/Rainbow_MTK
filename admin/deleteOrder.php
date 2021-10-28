<?php 
error_reporting(1);
require '../boostrap.php';

	$sql = mysqli_query($con,"DELETE FROM orders WHERE order_id = '{$_GET['order_id']}'");
	header('location:order.php');
?>