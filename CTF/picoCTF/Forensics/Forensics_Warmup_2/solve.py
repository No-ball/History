#!/usr/bin/python3

import wget
import ssl
import os

if os.path.isfile('flag.jpeg'):
    os.system('rm flag.jpeg')

ssl._create_default_https_context = ssl._create_unverified_context

url = 'https://2018shell.picoctf.com/static/33f4c8b1fa4528a3bc8f8dd84b5e9311/flag.png'
wget.download(url, 'flag.jpeg')

os.system('open flag.jpeg')
