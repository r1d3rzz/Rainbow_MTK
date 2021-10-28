<?php 
error_reporting(1);
require '../boostrap.php';
	$sql = mysqli_query($con,"DELETE FROM contact WHERE id = '{$_GET['id']}'");
	header('location:message.php');
?>