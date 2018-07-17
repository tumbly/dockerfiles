#!/bin/bash

shopt -s globstar

parameters=$@

TMP_PROFILE_DIR=`mktemp -d -t imagemin-cli.XXXXXX`

printf "\n\n==============================\nlaunching imagemin-cli run\n==============================\n\n"

imagemin -o /img/ $@
