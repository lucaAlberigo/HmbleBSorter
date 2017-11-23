#!/bin/bash
#option for all files of one type, or all files with the same name, to do
echo "finding all matching files:"
find -name '*.pdf' -print > "result.txt"
echo "executing file parsing"
./aparser.py
echo "parsing succesful"
xargs mkdir < ready.txt
echo "directories created"

echo "moving files"
#1 ciclo per ogni tipo di file
#controllo le estensioni dei file
while read -r LINE; do
    mv $LINE.pdf $LINE/
  done <ready.txt
  while read -r LINE; do
      mv $LINE.epub $LINE/
    done <ready.txt
    while read -r LINE; do
        mv $LINE.prc $LINE/
      done <ready.txt

echo "finished"
rm result.txt
rm ready.txt
