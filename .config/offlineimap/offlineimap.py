#! /usr/bin/env python2
from subprocess import check_output

folder_blacklist = [
        '+timschubert.net/Trash',
        '+timschubert.net/feeds',
        '+timschubert.net/Junk',
        '+timschubert.net/DeltaChat'
        ]

def get_password(account):
    return check_output("pass " + account, shell=True).splitlines()[0]


def mbnames_folderfilter(accountname, foldername):
    return foldername not in folder_blacklist
