#!/usr/bin/python2.7

import pwn

s = pwn.ssh(host='18.188.70.152', user='Noball')

cmd = 'cd /problems/strings_4_40d221755b4a0b134c2a7a2e825ef95f;'
cmd += 'echo; strings strings | grep "picoCTF{.*}"'

py = s.run(cmd)

print py.recv()