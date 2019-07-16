#! /usr/bin/env python2
from subprocess import check_output


def get_password(account):
    return check_output("pass " + account, shell=True).splitlines()[0]


def folderfilter(foldername):
    return foldername not in ['Spam', 'feeds', 'Junk']
