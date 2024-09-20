#!/bin/bash

for file in *.mkv; do
  # Extrai o nome do arquivo sem a extensão
  filename="${file%.*}"

  # Extrai a legenda (substitua 0:2 pelo número correto do stream)
  ffmpeg -i "$file" -map 0:2 -c:s copy "${filename}_subtitle.sup"
done
