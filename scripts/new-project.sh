#!/bin/bash

set -euf

printf "+++\ntitle = \"\"\ndescription = \"\"\n\n[taxonomies]\ntags = [\"\"]\n\n[extra]\ncodeberg = \"https://codeberg.org/brandont/\"\ngithub = \"https://github.com/b-dont/\"\ngitlab = \"https://gitlab.com/bdont/\"\n+++\n" \
>> $1
