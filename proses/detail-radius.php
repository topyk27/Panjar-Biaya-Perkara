<?php 
$response = array();
require_once 'koneksi.php';
$db = new DB_CONNECT();
if (isset($_POST['id'])) {
	$id_kelurahan = $_POST['id'];
	$sql = "select * from radius where id=".$id_kelurahan;
	$result = mysql_query($sql) or die(mysql_error());
	$response['radius'] = array();
	while ($row = mysql_fetch_array($result)) {
		$radius = array();
		$radius['id'] = $row['id'];
		$radius['kecamatan'] = $row['kecamatan'];
		$radius['kelurahan'] = $row['kelurahan'];
		$radius['biaya'] = $row['biaya'];
		array_push($response['radius'], $radius);
	}
	$response['success'] = 1;
	echo json_encode($response);
}else{
	$response['success'] = 0;
	echo json_encode($response);
}
?>