#!/usr/bin/env python
import random
from sys import argv

pname, numchars = argv

chars = "a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 1 2 3 4 5 6 7 8 9 0 ! # $ % & @ + = - _ < >"

def rdmPass(pwLen):
    charList= chars.split(" ")
    i = 0
    password = ""
    while i < pwLen:
        letter = charList[random.randint(0,len(charList) - 1)]
        if letter != " ":
            password = password + letter
            i += 1

    password.strip(" ")
    print password

#pwLen = raw_input("How many characters: ")
rdmPass(int(argv[1]))
