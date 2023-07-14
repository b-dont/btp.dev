#!/bin/bash

set -euf
date=$(date '+%Y-%m-%d') 

printf "+++\ntitle = \"\"\ndescription = \"\"\ntemplate = \"blog_post.html\"\ndate = \"$date\"\ndraft = true\n[taxonomies]\ntags = []\n+++\n" >> $1

