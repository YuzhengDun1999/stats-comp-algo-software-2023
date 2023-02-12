#!/usr/bin/env bash

for commit_count in {2..100}
do
  let linenum="10+$commit_count"
  # Fill in
  sed -i "$linenum i The is the line $commit_count." foo.tex
  pdflatex foo.tex
  git add -u
  git commit -m "Add $commit_count sentence to TeX file"
done
