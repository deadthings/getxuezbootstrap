#!/bin/bash
apt update && apt install rar unrar -y
fileid="1KQFV7MYDEwOy_gLo80fJaXDSiXymuf-V"
filename="bootstrap.rar"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
unzip ${filename}
rm ${filename} cookie
