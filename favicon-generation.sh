#!/bin/bash

# generate png icons in various resolutions
original="$1"
for resolution in 32x32 128x128 144x144 152x152 192x192 256x256 384x384 512x512
do
	convert -resize "$resolution"  "$original" "icon-$resolution.png"
	if [ "$PNG_QUALITY" -lt 100 ]; then
    pngquant --quality "$PNG_QUALITY" --speed 1 -f --ext .png "icon-$resolution.png"
	fi
done

# Generate favicon.ico

convert -resize x16 -gravity center -crop 16x16+0+0 -flatten "$original" output-16x16.ico
convert -resize x32 -gravity center -crop 32x32+0+0 -flatten "$original" output-32x32.ico
convert -resize x48 -gravity center -crop 48x48+0+0 -flatten "$original" output-48x48.ico
convert output-16x16.ico output-32x32.ico output-48x48.ico favicon.ico
