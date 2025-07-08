#!/bin/bash

set -euf

date=$(date '+%Y-%m-%d') 
title=$1
declare -l title
title=${title// /-}

printf '+++\ntitle = \"%s\"\ndescription = \"\"\nauthors = [\"Brandon Phillips\"]\ntemplate = \"blog_post.html\"\ndate = \"%s\"\ndraft = true\n[taxonomies]\ntags = []\n+++\n' "$1" "$date" >> "$title".md
