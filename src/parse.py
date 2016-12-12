from __future__ import print_function
import sys

lzt = []

def err(url):
    print(url, 'Does not appear to be a valid youtube address.', file=sys.stderr)

def add(url):
    try:
        pos = url.index('watch?') + 6 # watch? is 6 chars long
    except (ValueError):
        err(url)
        return
    
    mod_url = url[:pos]
    gtg = last = False
    while not last:
        pos2 = url.find('&', pos) # position of end of 1st variable
        last = (pos2 == -1) #Is this the last variable?
        part = url[pos:] if last else url[pos:pos2]
        if (part).startswith('v='): #only var we are interested in
            gtg = last = True
            mod_url = mod_url + part
        pos = pos2 + 1 # For the ampersand

    if not gtg:
        err(url)
        return

    try:
        lzt.index(mod_url)
    except (ValueError): #not found
        lzt.append(mod_url)

while True:
  try:
    line = raw_input()
    add(line)
  except (EOFError):
    break #end of file reached

ans = ''
for thing in lzt:
    ans = ans + ' ' + thing
print(ans)

