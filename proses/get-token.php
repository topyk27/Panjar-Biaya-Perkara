<?php 
$response = array();
require_once 'koneksi.php';
$db = new DB_CONNECT();
$sql = "select * from setting";
$perkara_result = mysql_query($sql) or die(mysql_error());
if (mysql_num_rows($perkara_result) > 0) {
	$response['setting'] = array();
	while ($row = mysql_fetch_array($perkara_result)) {
		$perkara = array();
		$perkara['token'] = $row['token'];
		$perkara['nama_pa'] = $row['nama_pa'];
		$perkara['nama_pa_pendek'] = $row['nama_pa_pendek'];
		array_push($response['setting'], $perkara);
	}
	$response['success'] = 1;
	echo json_encode($response);
}else{
	$response['success'] = 0;
	echo json_encode($response);
}

 ?>