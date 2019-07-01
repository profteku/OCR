# ÜBER

Dieses Skript vereinfacht die Texterkennung von Multipage PDF- und Tif Dateien.
Zur eigentlichen Texterkennung wird das OpenSource Paket [Tesseract-Ocr](https://github.com/tesseract-ocr/tesseract) verwendet.
Tesseract unterstützt Unicode (UTF-8) und bis zu 100 Sprachpakete. Das OCR Skript erkennt z.Zt. Deutsch (deu) und Englisch (eng).

# OCR Installieren

Zur Verwendung des OCR-Skript werden folgende Anwendungspakete benötigt:
[tesseract](https://github.com/tesseract-ocr/tesseract/)
[ghostscript](https://www.ghostscript.com/index.html)

**Ubuntu/Linux**
Unter Ubuntu 18.04 ist die Installation einfach durch die Batch *INSTALL.sh* umzusetzen.

**MacOS**
Unter MacOS 10.14.5 Mojave müssen zunächst 
[Xcode](https://developer.apple.com/xcode/) und
[MacPorts](https://www.macports.org/) installiert werden.

Anschließend kann die *INSTALLMAC.sh* ausgeführt werden.

# Verwendung
Simple Kommandozeilen-Eingabe:

    ocr Sprache PfadzurDatei
    
**Sprachoptionen**
*deu
eng*

# Hilfe
Diese Version ist **Early-Alpha Version 0.3**. Ich freue mich über Feedback. 
Autor: Marcel Schmidt
