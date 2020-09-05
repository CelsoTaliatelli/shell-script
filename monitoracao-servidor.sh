#!/bin/bash

resposta_http=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost)
if [ $resposta_http -ne 200 ]
then
mail -s "Problema no servidor" mail@mail.com<<del
Houve um problema no servidor.
del
         systemctl restart apache2
fi