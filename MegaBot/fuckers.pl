
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
$res0="filtred";
    if (-e $res0)
    {
    }
    else
    {
        mkdir $res0 or die "WE CAN NOT CREATE THE BOARD OF DIRECTORS: $res0";
    }
	system ("title mandra crew dork-fucker V2.1");
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n";print color('reset');
print colored ("                       [ c0d3d bY ARON-TN ]                        ",'white on_red'),"\n";print color('reset');
print colored ("                              [ FR0M X4PriV8 ]                               ",'white on_red'),"\n";print color('reset');
print colored ("                               [ Version  2 ]                                ",'white on_red'),"\n";print color('reset');
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n";	print color('reset');									
print colored ("\n                     ___ ___ _____ _______ __          __                    ",'green on_black'),"\n";print color('reset');
print colored ("                    |   Y   | _   |   _   |  |--.-----|  |_                    ",'green on_black'),"\n";print color('reset');
print colored ("                    |.      |.|   |___|   |  _  |  _  |   _|                   ",'green on_black'),"\n";print color('reset');
print colored ("                    |. |_|  `-|.  |_(__   |_____|_____|____|                   ",'green on_black'),"\n";print color('reset');
print colored ("                    |:  |   | |:  |:  1   |  CMS Filters                       ",'green on_black'),"\n";print color('reset');
print colored ("                    |::.|:. | |::.|::.. . |  dork-fucker                       ",'green on_black'),"\n";print color('reset');                       
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'black on_red'),"\n";print color('reset');
print colored ("                       Start At $time                                          ",'white on_black'),"\n";print color('reset');
print color("green"), "   \t[1] simple         |> bing dorker\n";
print color("green"), "   \t[2] World Wide     |> World Wide Grabber (country)\n";
print color("green"), "   \t[3] World Wide     |> World Wide Grabber (work)\n";
print color("green"), "   \t[4] Mass Site Dump |> By Ip or Websites List\n";
print color("green"), "   \t[5] Mass Site Dump |> Range Ip by Ip or Wbesite list\n";
print color("green"), "Put ur number to run it :) :  ";

$targett=<STDIN>;
chomp($targett);
if($targett eq '1')
{print "[Here You Can Choose The Country Dork exp: inurl:.asp?id= site:co.il ]\n";
print "Give Me Dork:";
$dork=<STDIN>;
chomp($dork);
$dork=~s/ /+/g;
getter();massget();}
if($targett eq '2')
{print "[Just Put Your Dork And I will Scan All World Sites Area ]\n";
print "Give Me Dork:";
$dor=<STDIN>;
chomp($dor);
$dor=~s/ /+/g;
@country= ("af","al","dz","as","ad","ao","ai","aq","ag","ar","am","aw","au","at","az","bs","bh","bd","bb","by","be","bz","bj","bm","bt","bo","ba","bw","bv","br","io","bn","bg","bf","bi","kh","cm","ca","cv","ky","cf","td","cl","cn","cx","cc","co","km","cg","cd","ck","cr","ci","hr","cy","cz","dk","dj","dm","do","tl","ec","eg","sv","gq","er","ee","et","fk","fo","fj","fi","fr","gf","pf","tf","ga","gm","ge","de","gh","gi","gr","gl","gd","gp","gu","gt","gn","gw","gy","ht","hm","hn","hk","hu","is","in","id","iq","ie","il","it","jm","jp","jo","kz","ke","ki","kw","kg","la","lv","lb","ls","lr","ly","li","lt","lu","mo","mk","mg","mw","my","mv","ml","mt","mh","mq","mr","mu","yt","mx","fm","md","mc","mn","ms","ma","mz","na","nr","np","nl","an","nc","nz","ni","ne","ng","nu","nf","mp","no","om","pk","pw","ps","pa","pg","py","pe","ph","pn","pl","pt","pr","qa","re","ro","ru","rw","kn","lc","vc","ws","sm","st","sa","sn","cs","sc","sl","sg","sk","si","sb","so","za","gs","kr","es","lk","sh","pm","sr","sj","sz","se","ch","tw","tj","tz","th","tg","tk","to","tt","tn","tr","tm","tc","tv","ug","ua","ae","gb","us","um","uy","uz","vu","va","ve","vn","vg","vi","wf","eh","ye","zm","zw");
OUTER: foreach $country(@country){
chomp $country;
$dork="$dor+site:$country";
print color("yellow"),"[domains : ";
print color('reset');
print color("white"),"$country]\n";
print color('reset');
geter();massget();}}
if($targett eq '3')
{print "[Just Put Your Dork And I will Scan All World Sites Area ]\n";
print "Give Me Dork:";
$dor=<STDIN>;
chomp($dor);
$dor=~s/ /+/g;
@domains= ("gov","edu","com","net","info","tv","travel","biz","mobi","tel","int","mil","eu","design","online","shop","clup","asia","academy","accountant","accountants","actor","adult","ae.org","africa","agency","apartement","com.ar","archi","art","associates","attorney","com.au","id.au","net.au","org.au","auction","band","bar","bargains","bayern","beer","berlin","best","bet","bid","bike","bingo","bio","biz","black","blog","blue","boutique","br.com","brussels","build","buiders","business","buzz","cab","cafe","cam","camera","camp","capetown","capital","cards","care","career","careers","casa","cash","casino","catering","center","chat","cheap","church","city","claims","cleaning","click","clinic","clothing","cloud","cn.com","co.uk","coach","codes","coffee","college","community","company","computer","construction","consulting","contractors","cooking","cool","country","coupons","courses","credit","cricket","cruises","dance","date","dating","deals","degree","delivery","democrat","dental","dentist","diamonds","digital","direct","directory","discount","doctor","dog","domains","durban","download","earth","eco","education","email","energy","engineer","engineering","enterprises","equipment","estate","eu.com","events","exchange","expert","exposed","express","fail","faith","family","fans","farm","fashion","finance","finance","financial","fish","fishing","fit","fitness","flights","florist","fm","football","forsale","foundation","fun","fund","furniture","futbol","fyi","gallery","games","garden","gift","gifts","gives","glass","global","gold","golf","graphics","gratis","green","gripe","group","guide","guru","hamburg","haus","health","healthcare","help","hockey","holiday","horse","hospital","host","house","how","ht","immo","immobilien","industries","ink","institute","insure","international","investments","jetzt","jewelry","joburg","jpn.com","kaufen","kim","kitchen","kiwi","koeln","kyoto","land","lat","lawyer","lease","legal","lgbt","life","lighting","limited","limo","link","live","loan","loans","lol","london","love","ltd","maison","management","marketing","mba","media","melbourne","men","menu","miami","mobi","moda","moe","mom","money","mortgage","nagoya","name","network","news","ngo","ninja","nyc","ac.nz","org.nz","kiwi.nz","net.nz","school.nz","gen.nz","geen.nz","co.nz","maori.nz","okinawa","one","onl","organic","osaka","paris","partners","parts","party","pet","photo","photography","photos","pics","pictures","pink","pizza","place","plumbing","plus","poker","porn","press","pro","productions","promo","properties","pub","qpon","quebec","racing","recipes","red","rehab","reise","reisen","rent","rentals","repair","report","republican","rest","restaurant","review","reviews","rip","rocks","rodeo","ru.com","run","ryukyu","sa.com","sale","salon","sarl","com.sb","school","schule","science","scot","services","sexy","com.sg","shiksha","shoes","shopping","show","singles","site","ski","soccer","social","software","solar","solutions","soy","space","stop","store","stream","studio","study","style","supplies","supply","support","sure","surgery","sydney","systems","taipei","tattoo","tax","taxi","team","tech","technology","tel","tennis","theater","tienda","tips","tires","today","tokyo","tools","top","tours","town","toys","trade","trading","training","tube","org.uk","me.uk","uk.com","university","uno","us.com","vacations","vc","vegas","ventures","vet","viajes","video","villas","vin","vip","vision","vlaanderen","vodka","vote","voting","voyage","wales","wang","watch","webcam","website","wedding","wf","wien","wiki","win","wine","work","works","world","wtf","??","??","???","???","?????","??","???","??","??","??","XYZ","YOGA","yokohama","yt","co.za","za.com","zone");
OUTER: foreach $domains(@domains){
chomp $domains;
$dork="$dor+site:$domains";
print color("yellow"),"[domains : ";
print color('reset');
print color("white"),"$domains]\n";
print color('reset');
geter();massget();}}
if($targett eq '4')
{print "[Put A Ip List path or websites BUT websites should be www.site.com without http : ... ]\n";
print " Path to your websites list:";
my $list=<STDIN>;
chomp($list);
open (THETARGET, "<$list") || die "[-] Can't open the file -_- are u drinking ?!";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;
OUTER: foreach $tofuck(@TARGETS){
chomp($tofuck);
if($tofuck =~ /http:\/\/(.*)\//) {
$tofuck= $1;
get();massget();}else{get();massget();}}}
if($targett eq '5')
{print "[Put A Ip List path or websites BUT websites should be www.site.com without http : ... ]\n";
print " Path to your websites list:";
my $list=<STDIN>;
chomp($list);
open (THETARGET, "<$list") || die "[-] Can't open the file -_- are u drinking ?!";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;
OUTER: foreach $tofuck(@TARGETS){
chomp($tofuck);
if($tofuck =~ /http:\/\/(.*)\//) {
$tofuck= $1;
gett();massget();}else{gett();massget();}}}
sub gett(){
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
geter();}}}
sub get(){
$ip= (gethostbyname($tofuck))[4];
my ($a,$b,$c,$d) = unpack('C4',$ip);
$ips="$a.$b.$c.$d";
print " [IP] > [$ips]\n";
        open (TEXT, '>>ips.txt');
        print TEXT "$ips\n";
        close (TEXT);
$dork="ip:$ips";
geter();}
sub geter(){
for ($ii = 1; $ii <= 2000; $ii+=10){
$url = "http://www.bing.com/search?q=$dork&filt=all&first=$ii&FORM=PERE";
$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;
while($rrs =~ m/<a href=\"?http:\/\/(.*?)\//g){
$link = $1;
	if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|yahoo|microsof/)
	{if ($link !~ /^http:/)
			 {$link = 'http://' . "$link" . '/';}
if($link !~ /\"|\?|\=|index\.php/){
					if  (!  grep (/$link/,@result)){
print "$link\n";
open(save, '>>sites.txt');
    print save "$link\n";
    close(save);
						push(@result,$link);}}}}
if ($rrs !~ m/class=\"sb_pagN\"/g){
next OUTER;}}}
###########
sub getter(){
for ($ii = 1; $ii <= 2000; $ii+=10){
$url = "http://www.bing.com/search?q=$dork&filt=all&first=$ii&FORM=PERE";
$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;
while($rrs =~ m/<a href=\"?http:\/\/(.*?)\//g){
$link = $1;
	if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|yahoo|microsof/)
	{if ($link !~ /^http:/)
			 {$link = 'http://' . "$link" . '/';}
if($link !~ /\"|\?|\=|index\.php/){
					if  (!  grep (/$link/,@result)){
print "$link\n";
open(save, '>>sites.txt');
    print save "$link\n";
    close(save);
						push(@result,$link);}}}}
if ($rrs !~ m/class=\"sb_pagN\"/g){
exit;}}}
sub massget(){
my $list='sites.txt';
chomp($list);
open (THETARGET, "<$list") || die "[-] Can't open the file -_- are u drinking ?!";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;
OUTER: foreach $tofuck(@TARGETS){
chomp($tofuck);
if($tofuck =~ /http:\/\/(.*)\//) {
$tofuck= $1;
get();}else{get();}}}