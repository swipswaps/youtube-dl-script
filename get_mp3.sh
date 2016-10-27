#!/bin/bash

input="url_list"
_downloader="youtube-dl"
_converter="ffmpeg"

$_downloader -c --embed-thumbnail --prefer-ffmpeg --extract-audio --audio-format mp3 --audio-quality 160K --title --batch-file=$input --restrict-filenames --yes-playlist

mkdir -p ./mp3
mv *.mp3 ./mp3
