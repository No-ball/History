#!/usr/bin/python3

import wget
import re
import os

if os.path.isfile('resources.html'):
    os.system('rm resources.html')

url = 'https://picoctf.com/resources'
wget.download(url,'resources.html')

f = open('resources.html', 'r')
htmlText = "\n".join(f.readlines())
f.close()

flag = re.search('picoCTF{.*}', htmlText).group(0)

print ('\n' + flag)



