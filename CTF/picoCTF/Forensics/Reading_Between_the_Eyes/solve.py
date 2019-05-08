#!/usr/pthon2.7

import requests
from PIL import Image

html = requests.get('https://2018shell.picoctf.com/static/59811365384f3eb42378c825101bdfb2/husky.png').content

f = open('hasky.png', 'w')
f.write(html)
f.close()

im = Image.open('hasky.png', 'r').convert('RGB')

width, height = im.size
pix = im.load()

binflag = []

for y in range(height):
    for x in range(width):
        r, g, b = im.getpixel((x, y))
        binflag.append(r&1)
        binflag.append(g&1)
        binflag.append(b&1)

hexflag = []
i = 1
while i * 8 < len(binflag):
    tmp = ''
    for j in range(8 * (i-1),8 * i):
        tmp += str(binflag[j])
    hexflag.append(tmp)
    i += 1

flag = ''
for i in range(len(hexflag)):
    flag += chr(int (hexflag[i], 2))

print flag