#!/bin/bash
# un-comment one diff tool you'd like to use
# By default, Git passes the following seven arguments to the diff program:
# path  old-file  old-hex old-mode  new-file  new-hex new-mode
# 1	2	  3	  4	    5	      6	      7		

# side-by-side diff with custom options:
# /usr/bin/sdiff -w200 -l "$2" "$5" 

# using kdiff3 as the side-by-side diff:
# /usr/bin/kdiff3 "$2" "$5"

# using Meld 
# /usr/bin/meld "$2" "$5"

# using VIM
/usr/bin/vimdiff "$2" "$5"
