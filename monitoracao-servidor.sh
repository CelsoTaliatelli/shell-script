#!/bin/bash

resosta_http=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost)

echo $resposta_http