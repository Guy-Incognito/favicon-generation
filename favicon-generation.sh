#!/bin/bash

original="$1"
for resolution in 128x128 144x144 152x152 192x192 256x256 384x384 512x512
do
	convert -resize $resolution  "$original" icon-$resolution.png
	pngquant --quality 30 --speed 1 -f --ext .png icon-$resolution.png
done
