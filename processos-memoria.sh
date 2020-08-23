#!/bin/bash

if [ ! -d log ]
then
    mkdir log
fi

processos_memoria(){
processos=$(ps -e -o pid --sort -size | head -n 11 | grep[0-9])

for pid  in $processos
do
    nome_processo=$(ps -p -$pid o comm=)
    echo -n $(date +%F,%H:%M:%S,) >> log/$nome_processo.log
    tamanho_processo=$(ps -p $pid -o size | grep [0-9])
    echo "$(bc <<< "scale=2;$tamanho_processo/1024") MB" >> log/$nome_processo.log
done
}
if [ $? -eq 0]
then
    echo "OS arquivos foram salvos com sucesso"
else
    echo "Houve um problema ao tentar salvar os arquivos"
fi