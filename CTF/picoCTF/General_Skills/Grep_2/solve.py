#!/usr/bin/python2.7

import pwn

s = pwn.ssh(host = '18.188.70.152', user = 'Noball')

cmd = 'cd /problems/grep-2_2_413a577106278d0711d28a98f4f6ac28/files;'
cmd += 'grep -r "picoCTF{.*}"'
py = s.run(cmd)

flag = py.recv()

flag = flag[flag.find('pico'):]

print '\n' + flag