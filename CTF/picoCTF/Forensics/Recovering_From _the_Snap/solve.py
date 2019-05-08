#!/usr/pthon2.7

import requests
import os

file = requests.get('https://2018shell.picoctf.com/static/5d982298cdb725f9e23c6f25c8a37411/animals.dd').content

with open('animals.dd', 'w') as f:
    f.write(file)
    f.close()

os.system('binwalk --dd="jpeg:jpeg" animals.dd')
os.system('open _animals.dd.extracted/2DCA00.jpeg')