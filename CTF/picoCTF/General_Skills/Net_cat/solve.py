#!/usr/bin/python2.7

import pwn

s = pwn.remote('2018shell.picoctf.com', 10854)

s.recvline()

print '\n' + s.recvline()