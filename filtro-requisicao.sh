#!/bin/bash

cd ~/apache.log

case $1 in
        GET)
        cat apache.log | grep GET
        ;;

        POST)
        cat apache.log | grep POST
        ;;

        PUT)
        cat apache.log | grep PUT
        ;;

        DELETE)
        cat apache.log | grep DELETE
        ;;

        *)
        echo "Parametro passado e invalido"
esac
