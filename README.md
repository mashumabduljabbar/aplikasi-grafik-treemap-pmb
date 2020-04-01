# treemap
Aplikasi Grafik untuk PMB dengan Treemap

Sesuaikan :

C:\xampp\htdocs\github\treemap\application\config\config.php

$alamatserver = $_SERVER['SERVER_NAME'];
$localhost = "localhost";
if( strpos( $alamatserver, $localhost ) !== false) {
	$config['base_url'] = 'http://'.$_SERVER['SERVER_NAME'].'/github/treemap'; //THIS IS FOR IP LOCALHOST
}else{
	$config['base_url'] = 'https://'.$_SERVER['SERVER_NAME'].''; //THIS IS FOR DOMAIN
}

Menjadi

$alamatserver = $_SERVER['SERVER_NAME'];
$localhost = "localhost";
if( strpos( $alamatserver, $localhost ) !== false) {
	$config['base_url'] = 'http://'.$_SERVER['SERVER_NAME'].'/treemap'; //THIS IS FOR IP LOCALHOST
}else{
	$config['base_url'] = 'https://'.$_SERVER['SERVER_NAME'].''; //THIS IS FOR DOMAIN
}
