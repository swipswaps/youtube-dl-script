#!/bin/bash

input="url_list"
_downloader="youtube-dl"
_converter="ffmpeg"

while IFS= read -r var
do
  $_downloader -o "./download/%(title)s" "$var"
done < "$input"

for file in ./download/*; do
  $_converter -i "./download/${file##*/}" "./mp3/${file##*/}.mp3"
done
