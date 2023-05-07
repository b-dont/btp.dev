#!/bin/bash

set -euf

printf "+++\ntitle = \"\"\ndescription = \"\"\ntemplate = \"blog_post.html\"\ndate = \"\"\ndraft = true\n[taxonomies]\ntags = []\n+++\n" >> $1
