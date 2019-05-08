#!/usr/python2.7

import pwn
import re

port = 48696
dest = "2018shell.picoctf.com"

r = pwn.remote(dest, port)

rec = r.recvall()

print re.search("picoCTF{.*}", rec).group(0)