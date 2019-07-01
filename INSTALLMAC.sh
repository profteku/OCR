#!/bin/bash
#Installer für Dependencies
#Autor: Marcel Schmidt

#Installation von MacPorts
xcode-select --install
sudo xcodebuild -license


#Installation der Dependencies
sudo port install tesseract
sudo port install ghostscript
sudo port install tiffcp
#Installation des OCR-Scripts
cp ocr.sh ~/ocr/ocr.sh
sudo chmod 777 ~/ocr/ocr.sh
echo "alias ocr'=~/ocr/ocr.sh'" >> ~/.bash_profile
