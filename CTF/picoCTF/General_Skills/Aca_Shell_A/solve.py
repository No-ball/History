#!/usr/bin/python2.7

import pwn

r = pwn.remote('2018shell.picoctf.com', 6903)

rl = [5, 1, 1, 16, 2, 2, 0, 0, 0, 29, 5, 3, 1, 0]
pl = ["echo 'Help me!'",'cd secret','ls','rm intel*',"echo 'Drop it in!'",'cd','cd executables','ls','./dontLookHere','whoami','cd','cp /tmp/TopSecret passwords','cd passwords','cat TopSecret']

print 'Wait still, it is vary long'

for i in range(len(pl)):
    for j in range(rl[i]):
        r.recvline()
    r.send(pl[i] + '\n')

flag = ''
print 'Nearly finished!'
flag = r.recvall()
flag = flag[flag.find('picoCTF'):]
print '\n' + flag