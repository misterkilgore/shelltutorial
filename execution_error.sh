#!/bin/sh


chmod +x file_non_esistente.sh &> /dev/null

if [ $? -ne 0 ]; then
    echo "Errore nell'esecuzione dell'ultimo comando. File non trovato" >&2
    exit 1
fi

echo "Modifica del file eseguita"
