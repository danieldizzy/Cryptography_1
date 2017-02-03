"""
https://cryptopals.com/
"""


# python 3.5, console session

#convert hex 11aa22bb33cc44dd to raw bytes
>>> bytes.fromhex('11aa22bb33cc44dd')
b'\x11\xaa"\xbb3\xccD\xdd'

#convert raw bytes to hex
>>> b'\x11\xaa"\xbb3\xccD\xdd'.hex()
'11aa22bb33cc44dd'

#convert an ascii string to raw bytes
>>> 'This is a typical string'.encode()
b'This is a typical string'

#convert an ascii string to hex
>>> 'This is a typical ascii string'.encode()
b'This is a typical ascii string'
>>> b'This is a typical ascii string'.hex()
'546869732069732061207479706963616c20617363696920737472696e67'

#convert raw bytes to ascii string
>>> b'This is a typical ascii string'.decode()
'This is a typical ascii string'

#convert random raw bytes to ascii string:-> this cannot be done!!!  Random raw bytes do not correspond to ascii or utf-8 codes
>>> print (b'\x11\xaa"\xbb3\xccD\xdd'.decode())
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
UnicodeDecodeError: 'utf-8' codec can't decode byte 0xaa in position 1: invalid start byte

#find the decimal ascii code of a character
print (ord('A'))
65

#find the character from an ascii code
print (chr(65))


#convert an integer in range(0, 256) into a raw byte
print (bytes([200]))


#convert a raw byte to an integer
>>> int(b'\xc8'.hex(),16)
200
>>> ord(b'\xc8')
200

#convert decimal integer to hexadecimal
>>> hex(200)
'0xc8'

#convert hexadecimal to a decimal integer (it is automatic)
>>> 0xc8
200

#convert decimal integer to binary
>>> bin(200)
'0b11001000'

#convert binary to decimal integer (it is automatic)
>>> 0b11001000
200

#xor two numbers
print (123 ^ 231)
156

#xor two hexadecimal numbers
>>> print (0x7b ^ 0xe7)
156

#xor two unequal strings of raw bytes
>>> def xorb(a,b):
...     return bytes(x^y for x,y in zip(a,b))
...
>>> xorb(b'A string of raw bytes',b'Another string of raw bytes')
b'\x00N\x1c\x00\x1a\x0c\x1cGS\x1b\x14I\x1c\x06WO\x04Y\x06\x04\x04'