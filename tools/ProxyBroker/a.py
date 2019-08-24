#!/usr/bin/env python
# -*- coding: utf-8 -*-
import urllib2		# Network lib
import threading	# Threading lib
import socket		# Socket lib
import sys		# System lib
import time		# Time lib
import os		# Os lib
#Don't create .pyc
sys.dont_write_bytecode = True

#Colours
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
blue="\033[1;34m"
defcol = "\033[0m"

def error(msg):
	print (red+"["+yellow+"!"+red+"] - "+defcol+msg)

def alert(msg):
	print (red+"["+blue+"#"+red+"] - "+defcol+ msg)

def action(msg):
	print (red+"["+green+"+"+red+"] - "+defcol+msg)

def errorExit(msg):
	sys.exit(red+"["+yellow+"!"+red+"] - "+defcol+"Fatal - "+ msg)

def get(text):
	return raw_input(red+"["+blue+"#"+red+"] - "+defcol+text)

def saveToFile(proxy):
	with open(outputfile,'a') as file:
		file.write(proxy+"\n")

def isSocks(host, port, soc):
	proxy = host+":"+port
	try:
		if(socks5(host,port,soc)):
			action("%s is socks5." % proxy)
			return True
		if(socks4(host,port,soc)):
			action("%s is socks4." % proxy)
			return True
			
	except socket.timeout:
		alert("Timeout during socks check: " + proxy)
		return False
	except socket.error:
		alert("Connection refused during socks check: " + proxy)
		return False

def socks4(host, port, soc):						# Check if a proxy is Socks4 and alive
	ipaddr = socket.inet_aton(host)
	packet4 = "\x04\x01" + pack(">H",port) + ipaddr + "\x00"
	soc.sendall(packet4)
	data = soc.recv(8)
	if(len(data)<2):
		# Null response
		return False
	if data[0] != "\x00":
		# Bad data
		return False
	if data[1] != "\x5A":
		# Server returned an error
		return False
	return True
def socks5(host, port, soc):						# Check if a proxy is Socks5 and alive
	soc.sendall("\x05\x01\x00")
	data = soc.recv(2)
	if(len(data)<2):
		# Null response
		return False
	if data[0] != "\x05":
		# Not socks5
		return False
	if data[1] != "\x00":
		# Requires authentication
		return False
	return True

def isAlive(pip,timeout):    						# Check if a proxy is alive
    	try:        
		proxy_handler = urllib2.ProxyHandler({'http': pip})     # Setup proxy handler   
		opener = urllib2.build_opener(proxy_handler)		
		opener.addheaders = [('User-agent', 'Mozilla/5.0')]	# Some headers
		urllib2.install_opener(opener)        			# Install the opener
		req=urllib2.Request('http://www.google.com')		# Make the request
		sock=urllib2.urlopen(req,None,timeout=timeout)		# Open url
    	except urllib2.HTTPError, e:        				# Catch exceptions
		error(pip+" throws: "+str(e.code))
		return False
	except Exception, details:
		error(pip+" throws: "+str(details))
		return False
    	return True

def checkProxies():
	while len(toCheck) > 0:
		proxy = toCheck[0]
		toCheck.pop(0)
		alert("Checking %s" % proxy)

		s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		s.settimeout(timeout)
	
		host = proxy.split(":")[0]
		port = proxy.split(":")[1]
		if int(port) < 0 or int(port) > 65536:
			error("Invalid port for " + proxy)
			continue
		if(isSocks(host, port, s)):
			socks.append(proxy)
			saveToFile(proxy)
		else:
			alert("%s not a working socks 4/5." % proxy)
			if(isAlive(proxy,timeout)):
				action("Working http/https proxy found (%s)!" % proxy)
				working.append(proxy)
				saveToFile(proxy)
			else:
				error("%s not working.")
		s.close()





socks = []
working = []
toCheck = []
threads = []
checking = True

proxiesfile = get("Proxy list: ")
outputfile = get("Output file: ")
threadsnum = int(get("Number of threads: "))
timeout = int(get("Timeout(seconds): "))
try:
	proxiesfile = open(proxiesfile,"r")
except:
	errorExit(" Unable to open file: %s" % proxiesfile)

for line in proxiesfile.readlines():
	toCheck.append(line.strip('\n'))
proxiesfile.close()

if(os.path.isfile(outputfile)):
	check = ''
	while check != 'yes' and check != 'y':
		error("Output file already exist, content will be overwritten!")
		check = get("Are you sure you would like to continue(y/n)?").lower()
		if check == 'n' or check == 'no':
			errorExit("Quitting...")

for i in xrange(threadsnum):
	threads.append(threading.Thread(target=checkProxies))
	threads[i].setDaemon(True)
	action("Starting thread n: "+str(i+1))
	threads[i].start()
	time.sleep(0.25)

action(str(threadsnum)+" threads started...")
while checking:

	time.sleep(5)
	if len(threading.enumerate())-1 == 0:
		alert("All threads done.")
		action(str(len(working))+" alive proxies.")
		action(str(len(socks))+" socks proxies.")
		action(str(len(socks)+len(working))+" total alive proxies.")
		checking = False
	else:
		alert(str(len(working))+" alive proxies until now.")
		alert(str(len(socks))+" socks proxies until now.")
		alert(str(len(toCheck))+" remaining proxies.")
		alert(str(len(threading.enumerate())-1)+" active threads...")