#!/bin/bash

#This will use temp directory as download place
echo "It takes a while eh..."
git clone --recursive git://git.ghostscript.com/mupdf.git /home/keanue/temp/
cd /home/keanue/temp/mudpf
make prefix=/user/local install

echo "done :)"
