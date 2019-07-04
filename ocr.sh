#!/bin/bash
#Automatisierte Texterkennung
#Autor: Marcel Schmidt
#Version 0.4

if ! [ -x "$(command -v tesseract)" ]; then
  echo 'Tesseract ist nicht installiert.' >&2
  exit 1
fi
if ! [ -x "$(command -v gs)" ]; then
  echo 'Ghostscript ist nicht installiert.' >&2
  exit 1
fi
lang=$1
if [ "$lang" = 'help' ]; then
  echo "Verwendung"
  echo " ./texterkennung.sh Sprache PfadzurDatei"
  echo "Sprachvariablen"
  echo " eng | deu"
  exit 1
fi

if [ -z "$lang" ]; then
  echo 'SyntaxError texterkennung.sh [lang] [PathToFile]' >&2
  echo 'Sprache definieren!' >&2
  echo 'help für mehr Informationen'
  exit 1
fi
file=$2
if [ -z "$file" ]; then
  echo 'SyntaxError texterkennung.sh [lang] [PathToFile]' >&2
  echo 'Datei angeben!' >&2
  echo 'help für mehr Informationen'
  exit 1
fi


filename=$(basename "$file" "$fullfile")
extension="${filename##*.}"
filename="${filename%.*}"
dir=$(dirname "${file}")
for i in "$fullfile" ; do if [ -f "$i" ]; then mv "$i" ${i// /_}; fi; done

if [ "$extension" = 'pdf' ]; then
    cp "$file" input.pdf
    gs                       \
      -o input.tif \
      -sDEVICE=tiffg4         \
      input.pdf
    tesseract -l $lang input.tif output pdf
    rm input.pdf
  fi
if [ "$extension" = 'tif' ]; then
  tiffcp $dir/*.tif input.tif
    tesseract -l $lang input.tif output pdf
    fi
rm input.tif
mv output.pdf $dir/${filename// /_}.pdf
