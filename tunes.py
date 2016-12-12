#!/usr/bin/python
# -*- coding: utf-8 -*-

import argparse
import subprocess
import sys

parser = argparse.ArgumentParser(description='Work with tunes.')
parser.add_argument('urls', type=str, nargs='*',
                   help='urls specified for download')
parser.add_argument("-b", "--browse",
                  action="store_true", dest="browse", default=False,
                  help="Browse what music you have listened to lately and select for download")
parser.add_argument("-r", "--refresh",
                  action="store_true", dest="fresh", default=False,
                  help="Clear history of previous browsings.")
parser.add_argument("-n", "--number",
                    dest="n", default=-1, 
                  help="Look at oldest n songs which are more recent than last check date.")
parser.add_argument("-u", "--update",
                  action="store_true",  dest="u", default=False, 
                  help="Update youtube-dl")

args = parser.parse_args()

def call(rng, stdin=None, stdout=None, stderr=None, shell=False):
    subprocess.call(rng.split(), stdin=stdin, stdout=stdout, stderr=stderr, shell=shell)

if args.u:
    call("youtube-dl --update")
    
if args.fresh:
    call("rm -f last_browse")

if args.browse or args.n != -1:
    call("./browse.sh "+str(args.n))
    tmp_file = open("tmp")
    for line in tmp_file.readlines():
        args.urls.append(line.split("|")[0])

if len(args.urls) > 0:
    call("youtube-dl --no-cache-dir -i -f 141/140 --no-playlist -o ~brenan/Tunes/%(title)s.%(ext)s "+" ".join(args.urls))
else:
    print ("The program did not receive any links for downloads")
