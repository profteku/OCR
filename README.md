# ÜBER

Dieses Skript vereinfacht die Texterkennung von Multipage PDF- und Tif Dateien.
Zur eigentlichen Texterkennung wird das OpenSource Paket [Tesseract-Ocr](https://github.com/tesseract-ocr/tesseract) verwendet.
Tesseract unterstützt Unicode (UTF-8) und bis zu 100 Sprachpakete. Das OCR Skript erkennt z.Zt. Deutsch (deu) und Englisch (eng).

# OCR Installieren

Zur Verwendung des OCR-Skript werden folgende Anwendungspakete benötigt:
[tesseract](https://github.com/tesseract-ocr/tesseract/)
[ghostscript](https://www.ghostscript.com/index.html)

**Ubuntu/Linux**
Unter Ubuntu 18.04 sind folgende Dependencies zu installieren:

    sudo apt-get install tesseract-ocr
    sudo apt-get install ghostscript
    
Abschließend wird die ocr.sh Datei ausführbar gemacht:

    cp ocr.sh ~/ocr/ocr.sh
    sudo chmod 777 ~/ocr/ocr.sh
    echo "alias ocr'=~/ocr/ocr.sh'" >> ~/.bashrc
    
**MacOS**
Unter MacOS 10.14.5 Mojave müssen zunächst 
[Xcode](https://developer.apple.com/xcode/)

    xcode-select --install
    sudo xcodebuild -license

Und anschließend [MacPorts](https://www.macports.org/install.php) installiert werden. 

Dann können die Dependencies installiert werden.

    sudo port install tesseract
    sudo port install ghostscript
    sudo port install tiffcp
   
Für [tesseract](https://github.com/tesseract-ocr/tesseract/) wird noch das Deutsche Sprachpaket benötigt.

    sudo curl https://github.com/tesseract-ocr/tessdata/blob/master/deu.traineddata -o /opt/local/share/tessdata/deu.traineddata
  
Abschließend wird die ocr.sh Datei ausführbar gemacht:

    cp ocr.sh ~/ocr/ocr.sh
    sudo chmod 777 ~/ocr/ocr.sh
    echo "alias ocr'=~/ocr/ocr.sh'" >> ~/.bash_profile
    
# Verwendung
Simple Kommandozeilen-Eingabe:

    ocr Sprache PfadzurDatei
    
**Sprachoptionen**
*deu
eng*

# Hilfe
Diese Version ist **Early-Alpha Version 0.3**. Ich freue mich über Feedback. 
Autor: Marcel Schmidt
