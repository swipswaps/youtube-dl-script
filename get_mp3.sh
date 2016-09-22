#!/bin/bash

input="url_list"
_downloader="youtube-dl"
_converter="ffmpeg"

$_downloader -c --extract-audio --audio-format mp3 --audio-quality 160K --title --batch-file=$input --restrict-filenames

mkdir -p ./mp3
mv *.mp3 ./mp3