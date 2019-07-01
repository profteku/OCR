#!/bin/bash
#Installer für Dependencies
#Autor: Marcel Schmidt
sudo apt-get install tesseract-ocr
sudo apt-get install ghostscript

cp ocr.sh ~/ocr/ocr.sh
sudo chmod 777 ~/ocr/ocr.sh
echo "alias ocr'=~/ocr/ocr.sh'" >> ~/.bashrc
