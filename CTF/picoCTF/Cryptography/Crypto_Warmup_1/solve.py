#!/usr/bin/python2.7

cipher = 'llkjmlmpadkkc'
key = 'thisisalilkey'
plain = ''

def decode(index):
    ascii = ord(cipher[i]) - ord(key[i])
    
    if ascii < 0:
        ascii += 26
        
    return chr(ascii + ord('A'))

for i in range(len(cipher)):
    plain += decode(i)

print 'picoCTF{' + plain + '}'