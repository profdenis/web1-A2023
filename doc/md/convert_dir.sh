#!/usr/bin/bash
files=$(ls *.md)
for f in $files
do
  for format in "$@"
  do
    echo "* * * * * * * * * * * * ${f} --> ${format}"
    pandoc -s --metadata title="420-1W1-DM Web 1" --mathjax --pdf-engine=xelatex -c github.css $f -o ../${format}/${f%.*}.${format}
  done
done

