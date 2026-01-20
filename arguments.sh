#!/bin/sh

NOME=${1:-Anonimo}
ANNI=${2:-10}

error() { 
    echo "Errore: $1" >&2
    exit 1
}

echo "Totale argomenti: $#"

if [ "$#" -eq 0 ]; then
    echo "Non sono stati inseriti argomenti, procediamo con il default"
elif [ "$#" -gt 2 ]; then
    error "sono stati inseriti troppi argomenti"
fi


if echo $ANNI | grep -qE "^[0-9]+$"; then
    echo "Ciao $NOME! Hai $ANNI anni"
else
    echo "Hai inserito un età non valida" >&2
    exit 1
fi
