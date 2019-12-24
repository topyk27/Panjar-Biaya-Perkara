<?php 
$response = array();
require_once 'koneksi.php';
$db = new DB_CONNECT();
$sql = "select * from perkara";
$perkara_result = mysql_query($sql) or die(mysql_error());
if (mysql_num_rows($perkara_result) > 0) {
	$response['perkara'] = array();
	while ($row = mysql_fetch_array($perkara_result)) {
		$perkara = array();
		$perkara['id'] = $row['id'];
		$perkara['perkara'] = $row['perkara'];
		array_push($response['perkara'], $perkara);
	}
	$response['success'] = 1;
	echo json_encode($response);
}else{
	$response['success'] = 0;
	echo json_encode($response);
}

 ?>