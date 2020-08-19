#!/bin/bash
CAMINHO_IMAGENS = /c/Alura/DevOps/Shell Scripting parte1 - Começando seus scripts de automação de tarefas/imagens-livros

for imagem in $@
do
    convert $CAMINHO_IMAGENS/$imagem.jpg $CAMINHO_IMAGENS/$imagem.png
done