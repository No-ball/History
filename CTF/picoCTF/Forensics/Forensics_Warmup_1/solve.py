#!/usr/bin/python

import wget          
import ssl
import zipfile
import os

if os.path.isfile('flag.zip'):
    os.system('rm flag.zip')

if os.path.isfile('flag.jpg'):
    os.system('rm flag.jpg')

url = 'https://2018shell.picoctf.com/static/2fa508658d91918514dadf3ff331b8f6/flag.zip'

ssl._create_default_https_context = ssl._create_unverified_context
wget.download(url, 'flag.zip')

zip_ref = zipfile.ZipFile('flag.zip', 'r')
zip_ref.extractall('')
zip_ref.close()

os.system('open flag.jpg')
