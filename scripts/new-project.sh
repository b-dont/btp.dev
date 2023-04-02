#!/bin/bash

set -euf

printf "+++\ntitle = \"\"\ndescription = \"\"\n\n[taxonomies]\ntags = [\"\"]\n\n[extra]\ncodeberg = \"\"\ngithub = \"\"\ngitlab = \"\"\n+++\n" \
>> $1
