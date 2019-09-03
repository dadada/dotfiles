#! /usr/bin/env python2
from subprocess import check_output


def folderfilter(foldername):
    return foldername not in ['Spam', 'feeds', 'Junk']
