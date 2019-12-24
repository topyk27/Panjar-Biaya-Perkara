<?php 
$response = array();
require_once 'koneksi.php';
$db = new DB_CONNECT();
$sql = "select * from kecamatan order by kecamatan";
$kecamatan_result = mysql_query($sql) or die(mysql_error());
if (mysql_num_rows($kecamatan_result) > 0) {
	$response['kecamatan'] = array();
	while ($row = mysql_fetch_array($kecamatan_result)) {
		$kecamatan = array();
		$kecamatan['id'] = $row['id'];
		$kecamatan['kecamatan'] = $row['kecamatan'];
		array_push($response['kecamatan'], $kecamatan);
	}
	$response['success'] = 1;
	echo json_encode($response);
}else{
	$response['success'] = 0;
	echo json_encode($response);
}

 ?>