#!/bin/bash

set -euf

dt=$(date '+%F')

printf "+++\ntitle = \"\"\ndescription = \"\"\ntemplate = \"blog_post.html\"\ndate = $dt\ndraft = true\n[taxonomies]\ntags = []\n+++\n" >> $1
