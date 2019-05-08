#!/usr/pthon2.7

import requests
import re

url = 'https://2018shell.picoctf.com/static/ee6ed2afe1da153ae06e61d5ee26d52d/data.pcap'
file = requests.get(url).content

print re.search('picoCTF{.*}', file).group(0)