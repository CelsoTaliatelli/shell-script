#!/bin/bash

memoria_total=$(free | grep -i mem | awk '{ print $2 }')
memoria_consumida=$(free | grep -i mem | awk '{ print $3 }')
relacao_memoria_atual_total=$(bc <<< "$memoria_consumida/$memoria_total *100" | awk -F. '{print $1}')

if[ echo $relacao_memoria_atual_total -gt 50 ]
then
mail -s "Consumo de memoria acima do limite" teste@teste.com<<del
Cosumo de memoria acima do limite especificado. Atualmente o consumo é de $(free -h | grep -i mem | awk '{ print $3 }')
del

fi