lzt = []

def add(url):
    try:
        pos = url.index('watch?v=')
    except (ValueError):
        print(url, 'Does not appear to be a valid youtube address.')
        return

    pos2 = url.find('&', pos+8) # watch?v= is 8 chars long
    if not pos2 == -1:
        url = url[:pos2]

    try:
        lzt.index(url)
    except (ValueError): #not found
        lzt.append(url)

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

