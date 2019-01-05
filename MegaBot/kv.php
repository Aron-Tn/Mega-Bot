#!/data/data/com.termux/files/usr/bin/php
<?php
if(strtolower(substr(PHP_OS, 0, 3)) == "win") {
$bersih="cls";
} else {
$bersih="clear";
}
function input($echo) {
	echo $echo." --> ";
}
menu:
system($bersih);
$green  = "\e[92m";
$red    = "\e[91m";
$yellow = "\e[93m";
$blue   = "\e[36m";
echo "\n$yellow
  ______  _______               
 / _____)(_______)              
( (____   _   ___  _____  ____  
 \____ \ | | (_  || ___ ||  _ \ 
 _____) )| |___) || ____|| | | |
(______/  \_____/ |_____)|_| |_|\n".$red.
"Shortlink Generator";
echo $blue."
Author  : ARON-TN
Code    : PHP
Github  : https://github.com/aron-tn
     Fr0M MegaBot
Version : 2
Date    : 11-12-2018\n";
echo $red."=========================== MegaBot ))=====(@)>".$green."\n";
if(isset($argv[1])) {
	$url=$argv[1];
} else {
	echo "Usage : php short.php www.example.com\n";
	die();
}
$param="https://www.googleapis.com/urlshortener/v1/url?key=AIzaSyDKvTCsXX3Vipbqyhj3a0JH1D3JYMuB5VM";
$post = array(
"longUrl"=> $url
);
$jsondata = json_encode($post);
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL,$param);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0); curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_HTTPHEADER, array("Content-type:application/json"));
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $jsondata);
$response=curl_exec($ch);
curl_close($ch);
$json=json_decode($response);
//print_r($json);
if(isset($json->error)) {
	echo $json->error->message;
	} else {
		echo "Link   : ".$json->longUrl."\n";
		echo "Result : ".$json->id."\n";
		}
echo $red."=========================== MegaBot ))=====(@)>".$green."\n";