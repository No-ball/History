#!/usr/bin/python2.7

from pwn import *

s = ssh(host='18.188.70.152', user='Noball')

cmd = 'echo;'
cmd += 'cd //problems/grep-1_0_c0c0c16438cdbee39591397e16389f59;'
cmd += 'strings file | grep "picoCTF{.*}"'

py = s.run(cmd)
print py.recv()
s.close()