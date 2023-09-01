#!/usr/bin/bash
pandoc -s --metadata title="420-1W1-DM Web 1" --mathjax --pdf-engine=xelatex -c github.css "$1"."$2" -o ../"$3"/"$1"."$3"

