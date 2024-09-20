#!/bin/bash

for file in *.sup; do
  # Extrai o nome do arquivo sem a extensão
  filename="${file%.*}"

  sup2srt "$file" -l eng

  ffmpeg -i "$file" -map 0:2 -c:s copy "${filename}_subtitle.sup"
done
