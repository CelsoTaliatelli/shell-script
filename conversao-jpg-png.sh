#!/bin/bash
cd /c/Alura/DevOps/imagens-livros

for imagem in *.jpg
do
    convert $imagem $imagem.png
done