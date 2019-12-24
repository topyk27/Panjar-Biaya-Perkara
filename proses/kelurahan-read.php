<?php 

$response = array();
require_once 'koneksi.php';
$db = new DB_CONNECT();
if(isset($_POST["id"])){
$id_kecamatan = $_POST["id"];

$sql = "select * from radius where kecamatan=".$id_kecamatan." order by kelurahan";
$kelurahan_result = mysql_query($sql) or die(mysql_error());
if (mysql_num_rows($kelurahan_result) > 0) {
	$response['kelurahan'] = array();
	while ($row = mysql_fetch_array($kelurahan_result)) {
		$kelurahan = array();
		$kelurahan['id'] = $row['id'];
		$kelurahan['kecamatan'] = $row['kecamatan'];
		$kelurahan['kelurahan'] = $row['kelurahan'];
		$kelurahan['biaya'] = $row['biaya'];
		array_push($response['kelurahan'], $kelurahan);
	}
	$response['success'] = 1;
	echo json_encode($response);
}else{
	$response['success'] = 0;
	echo json_encode($response);
}
}else{
	echo "gak di set";
}

 ?>