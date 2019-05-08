#!/usr/bin/python

import wget
import re
import ssl
import os
import struct
import pwn

if os.path.isfile('Reversing/Reversing_Warmup_1/run'):
    os.system('rm Reversing/Reversing_Warmup_1/run')

ssl._create_default_https_context = ssl._create_unverified_context

url = 'https://2018shell.picoctf.com/static/143bc640105d2b0befaa66f5a87cd085/run'
wget.download(url,'Reversing/Reversing_Warmup_1/run')

with open ('Reversing/Reversing_Warmup_1/run', 'r') as flagFile:
    fileContent = flagFile.read()

flag = re.search('picoCTF{.*}', fileContent).group(0)

print ('\n' + flag)