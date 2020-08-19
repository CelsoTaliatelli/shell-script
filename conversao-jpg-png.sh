#!/bin/bash
CAMINHO_IMAGENS = /c/Alura/DevOps/Shell Scripting parte1 - Começando seus scripts de automação de tarefas/imagens-livros
convert $CAMINHO_IMAGENS/$1.jpg $CAMINHO_IMAGENS/$1.png
convert  $CAMINHO_IMAGENS/$2.jpg $CAMINHO_IMAGENS/$2.png