#!/usr/bin/python

# line one is the definition of the enviroment

# Important: make this file executable:
# chmod +x thefile.py


# import commands
# output = commands.getoutput('docker-compose up -d')
# print output

# system commands
import os
os.system('docker-compose up -d')