#!/usr/bin/env python2
import re
f = open('result.txt', 'r')
goout= open('ready.txt', 'w')


parsato=re.sub(r'.pdf' , "",f.read())
parsato2=re.sub(r'\.',"",parsato)
parsato3=re.sub(r'/', "",parsato2)
goout.write(parsato3)
